from django.shortcuts import render, redirect, get_object_or_404
from django.http import JsonResponse
from .models import Booking
from django.contrib.auth import authenticate, login as auth_login
from django.contrib import messages
from django.contrib.auth.decorators import login_required, user_passes_test
from .forms import AdminProfileForm
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth import update_session_auth_hash
from django.http import HttpResponse
from django.template.loader import render_to_string
from xhtml2pdf import pisa
from django.db.models import Sum 
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth import authenticate, login as user_login, logout 

def userlogin(request):
    if request.method == "POST":
        username = request.POST["username"]
        password = request.POST["password"]
        user = authenticate(request, username=username, password=password)
        if user is not None:
            user_login(request, user)  # Corrected: Log in the user
            return redirect("userhome")  # Redirect to home after login
        else:
            messages.error(request, "Invalid Username or Password")
    
    return render(request, "HotelApp/userlogin.html")

@login_required
def userlogout(request):
    logout(request)
    return redirect("home")  # Redirect to login page after logout

@login_required
def userprofile(request):
    return render(request, "HotelApp/userprofile.html")

@login_required
def userhome(request):
    return render(request, "HotelApp/userhome.html")

@login_required
def usercontact(request):
    return render(request,'HotelApp/usercontact.html')
@login_required
def userbooking(request):
    return render(request,'HotelApp/userbooking.html')
@login_required
def userreq(request):
    bookings = Booking.objects.filter(user=request.user)  # Fetch only logged-in user's bookings
    return render(request, 'HotelApp/userreq.html', {'bookings': bookings})

def userregister(request):
    if request.method == "POST":
        first_name = request.POST.get('first_name', '')
        last_name = request.POST.get('last_name', '')
        email = request.POST.get("email")
        username = request.POST.get("username")
        password = request.POST.get("password")

        if User.objects.filter(username=username).exists():
            messages.error(request, "Username already taken")
            return redirect("userregister")

        if User.objects.filter(email=email).exists():
            messages.error(request, "Email already registered")
            return redirect("userregister")

        # Create user but do NOT assign password directly
        user = User.objects.create(username=username, email=email, first_name=first_name, last_name=last_name)
        
        # Hash the password before saving
        user.set_password(password)
        user.save()

        messages.success(request, "Registration successful. Please log in.")
        return redirect("userlogin")

    return render(request, "HotelApp/userregister.html")


def download_bill(request, booking_id):
    booking = Booking.objects.get(id=booking_id)
    html_string = render_to_string('HotelApp/bill_template.html', {'booking': booking})

    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = f'attachment; filename="Bill_{booking.id}.pdf"'

    pisa_status = pisa.CreatePDF(html_string, dest=response)
    if pisa_status.err:
        return HttpResponse('Error generating PDF', status=500)
    
    return response

@login_required
def editprofile(request):
    user = request.user

    # Handle POST request for both forms (profile and password change)
    if request.method == 'POST':
        # Handle password change form
        if 'change_password' in request.POST:
            password_form = PasswordChangeForm(user, request.POST)
            if password_form.is_valid():
                password_form.save()  # Save the new password
                update_session_auth_hash(request, password_form.user)  # Keep the user logged in after password change
                messages.success(request, 'Password changed successfully!')
                return redirect('editprofile')
        else:
            password_form = PasswordChangeForm(user)

    else:
        password_form = PasswordChangeForm(user)

    return render(request, 'HotelApp/editprofile.html', {
        'password_form': password_form,
        'user': user,
    })
    
def mark_as_paid(request):
    if request.method == 'POST':
        booking_id = request.POST.get('booking_id')
        booking = Booking.objects.get(id=booking_id)
        booking.is_paid = True
        booking.save()
        return redirect('accepted')
    return redirect('accepted')  


def is_admin(user):
    return user.is_superuser  

def reject_booking(request, booking_id):
    if request.method == "POST":
        booking = get_object_or_404(Booking, id=booking_id)
        booking.delete()
        messages.success(request, "Booking request rejected successfully.")
    return redirect("roomreq")

def login(request):
    if request.method == 'POST':
        username = request.POST.get('id') 
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            if user.is_superuser: 
                auth_login(request, user)
                return redirect('dashboard')
            else:
                messages.error(request, "You are not an admin!")
        else:
            messages.error(request, "Invalid credentials!")

    return render(request, 'HotelApp/login.html')

@login_required
@user_passes_test(is_admin) 
def dashboard(request):
    pending_requests_count = Booking.objects.filter(status='pending').count()
    accepted_requests_count = Booking.objects.filter(status='Accepted').count()
    bookings = Booking.objects.all()
    total_amount_sum = bookings.aggregate(total=Sum('total_amount'))['total'] or 0
    
    return render(request, 'HotelApp/dashboard.html', {
        'accepted_requests_count':accepted_requests_count,
        'pending_requests_count': pending_requests_count,
        'total_amount_sum': total_amount_sum,
    })

def delete_booking(request, booking_id):
    booking = get_object_or_404(Booking, id=booking_id)
    booking.delete()
    return redirect('managereq')

def roomreq(request):
    bookings = Booking.objects.filter(status='Pending')
    return render(request, 'HotelApp/roomreq.html', {'bookings': bookings})

def accept_booking(request, booking_id):
    booking = get_object_or_404(Booking, id=booking_id)
    booking.status = 'Accepted'
    booking.save()
    messages.success(request, f"Booking for {booking.first_name} {booking.last_name} has been accepted.")
    return redirect('roomreq') 

def managereq(request):
    bookings = Booking.objects.filter(status='Accepted')
    return render(request, 'HotelApp/managereq.html', {'bookings': bookings})

def accepted(request):
    bookings = Booking.objects.filter(status='Accepted')
    return render(request, 'HotelApp/accepted.html', {'bookings': bookings})

# View to handle payment action
def mark_as_paid(request):
    if request.method == 'POST':
        booking_id = request.POST.get('booking_id')
        booking = Booking.objects.get(id=booking_id)
        booking.is_paid = True
        booking.save()
        return redirect('accepted')  # Redirect back to accepted requests page

# View to show only paid bookings
def payment(request):
    bookings = Booking.objects.filter(is_paid=True)
    total_amount_sum = bookings.aggregate(total=Sum('total_amount'))['total'] or 0
    return render(request, 'HotelApp/payment.html', {
        'bookings': bookings,
        'total_amount_sum': total_amount_sum
    })

#Static Pages Views
def home(request):
    return render(request, 'HotelApp/home.html')

def about(request):
    return render(request, 'HotelApp/about.html')

def contact(request):
    return render(request, 'HotelApp/contact.html')

def service(request):
    return render(request, 'HotelApp/service.html')

def room(request):
    return render(request, 'HotelApp/room.html')

@login_required
def booking(request):
    user = request.user 
    context = {
        'first_name': user.first_name,
        'last_name': user.last_name,
        'email_id': user.email,
    }
    if request.method == 'POST':
        booking = Booking(
            user=request.user,
            first_name=request.POST['first_name'],
            last_name=request.POST['last_name'],
            gender=request.POST['gender'],
            mobile_number=request.POST['mobile_number'],
            email_id=request.POST['email_id'],
            country=request.POST['country'],
            check_in=request.POST['check_in'],
            check_out=request.POST['check_out'],
            room_type=request.POST['room_type'],
            total_amount=request.POST['total_amount'],
        )
        booking.save()
        return JsonResponse({'success': True})
    return render(request, 'HotelApp/booking.html', context)

@login_required
def details(request):
    users = User.objects.filter(is_superuser=0)  # Fetch only non-admin users
    return render(request, 'HotelApp/details.html', {'users': users})

def delete_user(request, user_id):
    user = get_object_or_404(User, id=user_id)

    if user.is_superuser:  # Prevent deleting admin users
        messages.error(request, "You cannot delete an admin user.")
        return redirect("details")

    user.delete()
    messages.success(request, "User deleted successfully.")
    return redirect("details")