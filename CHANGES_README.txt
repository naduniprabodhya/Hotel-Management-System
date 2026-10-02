================================================================
HOTEL MANAGEMENT SYSTEM - MODIFIED VERSION
================================================================
Changes made: Added Customer Login + Room Booking feature
================================================================

NEW FILES ADDED (src/hotel/management/system/):
------------------------------------------------
1. CustomerLogin.java       - Customer login screen
2. CustomerRegister.java    - New customer registration
3. CustomerDashboard.java   - Customer home (view available rooms)
4. CustomerBooking.java     - Room booking form for customers
5. CustomerBookingHistory.java - View past bookings

MODIFIED FILES:
---------------
1. HotelManagementSystem.java
   - Changed "Next" button to TWO separate buttons:
     * "Admin Login"    -> Goes to original admin Login.java
     * "Customer Login" -> Goes to new CustomerLogin.java

FLOW DIAGRAM:
-------------
Welcome Screen (HotelManagementSystem)
    |
    |--- [Admin Login] ---> Login.java ---> Dashboard.java (UNCHANGED)
    |
    |--- [Customer Login] ---> CustomerLogin.java
                                    |
                                    |--- [Register] ---> CustomerRegister.java
                                    |
                                    |--- [Login] ---> CustomerDashboard.java
                                                         |
                                                         |--- [Book Room] ---> CustomerBooking.java
                                                         |--- [My Bookings] ---> CustomerBookingHistory.java
                                                         |--- [Logout] ---> Welcome Screen

================================================================
DATABASE SETUP - IMPORTANT!
================================================================
Run the file: customer_tables_setup.sql
in MySQL before running the project.

Command:
  mysql -u root -p hotelmanagementsystem < customer_tables_setup.sql

OR open MySQL Workbench and run the SQL file contents.

================================================================
TEST ACCOUNT (created by SQL script):
  Username: customer1
  Password: 1234
================================================================
