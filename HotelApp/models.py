from django.db import models
from django.contrib.auth.models import User

class Booking(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    gender = models.CharField(max_length=10)
    mobile_number = models.CharField(max_length=15)
    email_id = models.EmailField()
    country = models.CharField(max_length=255)
    check_in = models.DateField()
    check_out = models.DateField()
    room_type = models.CharField(max_length=50)
    total_amount = models.DecimalField(max_digits=10, decimal_places=2)
    status = models.CharField(max_length=20, default='Pending')
    is_paid = models.BooleanField(default=False) 

    def __str__(self):
        return f"{self.first_name} {self.last_name}"
