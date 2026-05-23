# 🏨 Hotel Management System

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.12-blue?style=for-the-badge&logo=python&logoColor=white" />
  <img src="https://img.shields.io/badge/Django-5.x-092E20?style=for-the-badge&logo=django&logoColor=white" />
  <img src="https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" />
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white" />
  <img src="https://img.shields.io/badge/JavaScript-ES6-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" />
  <img src="https://img.shields.io/badge/Bootstrap-5-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white" />
</p>

<p align="center">
  A Hotel Management System built with Django and MySQL for managing room bookings, payments, and hotel administration.
</p>

---

## 📌 Overview

The **Hotel Management System** is a web-based application that allows users to book rooms online and enables administrators to manage bookings, payments, and customer information through a dedicated dashboard.

This project demonstrates practical experience with:
- Django MVC architecture
- MySQL database integration
- User authentication
- CRUD operations
- Dynamic templates
- Payment handling
- Admin dashboard development

---

## ✨ Features

### 👤 User Module
- User Registration & Login
- Browse Room Types
- Book Rooms Online
- Secure Payment Page
- View Booking History
- Edit Profile
- Contact Support

### 🛠️ Admin Module
- Admin Dashboard
- Manage Booking Requests
- Accept/Reject Bookings
- Generate Bills
- View Registered Users
- Track Payment Status

---

## 🛠️ Tech Stack

<p align="center">
  <img src="https://skillicons.dev/icons?i=python,django,mysql,html,css,js,bootstrap,git,github,vscode" />
</p>

---

## 📂 Project Structure

```text
Hotel-Management-System/
├── HotelApp/
│   ├── migrations/
│   ├── static/HotelApp/images/
│   ├── templates/HotelApp/
│   │   ├── home.html
│   │   ├── booking.html
│   │   ├── payment.html
│   │   ├── dashboard.html
│   │   ├── roomreq.html
│   │   ├── managereq.html
│   │   ├── bill_template.html
│   │   ├── userregister.html
│   │   ├── userlogin.html
│   │   └── ...
│   ├── admin.py
│   ├── forms.py
│   ├── models.py
│   ├── urls.py
│   └── views.py
│
├── HotelProject/
│   ├── settings.py
│   ├── urls.py
│   ├── asgi.py
│   └── wsgi.py
│
├── manage.py
├── hotel.sql
├── requirements.txt
└── README.md
```

---

## 🗄️ Database

The project includes a cleaned `hotel.sql` file containing the core table:

- `hotelapp_booking`

### Booking Fields
- Customer Name
- Contact Information
- Check-in / Check-out Dates
- Room Type
- Total Amount
- Payment Status
- Booking Status

---

## ⚙️ Installation

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/vatsalgajera-tech/Hotel-Management-System.git
cd Hotel-Management-System
```

### 2️⃣ Create Virtual Environment

```bash
python -m venv venv
```

### 3️⃣ Activate Virtual Environment

#### Windows
```bash
venv\Scripts\activate
```

#### macOS/Linux
```bash
source venv/bin/activate
```

### 4️⃣ Install Dependencies

```bash
pip install -r requirements.txt
```

### 5️⃣ Configure MySQL Database

Create a database named:

```sql
CREATE DATABASE hotel;
```

Import the provided `hotel.sql` file.

### 6️⃣ Apply Migrations

```bash
python manage.py makemigrations
python manage.py migrate
```

### 7️⃣ Run the Server

```bash
python manage.py runserver
```

### 8️⃣ Open in Browser

```text
http://127.0.0.1:8000/
```

---

## 🔐 Admin Login

Create a superuser:

```bash
python manage.py createsuperuser
```

Access the admin panel at:

```text
http://127.0.0.1:8000/admin/
```

---

## 🚀 Future Enhancements

- Email Notifications
- PDF Invoice Download
- Razorpay/Stripe Integration
- Room Availability Calendar
- Reviews & Ratings
- Analytics Dashboard

---

## 🧠 Key Learnings

Through this project, I gained hands-on experience with:

- Django Models, Views, Templates
- Form Handling & Validation
- MySQL Integration
- Authentication System
- CRUD Operations
- Project Deployment Preparation

---

## 👨‍💻 Author

### Vatsal Gajera

- GitHub: https://github.com/vatsalgajera-tech
- LinkedIn: https://www.linkedin.com/in/vatsalgajera/
- Email: vatsalgajera.tech@gmail.com

---

## 📜 License

This project is developed for educational and portfolio purposes.
