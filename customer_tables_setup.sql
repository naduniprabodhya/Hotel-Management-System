
USE hotelmanagementsystem;

SHOW tables;

CREATE TABLE login(username VARCHAR(25), password VARCHAR(25));

INSERT INTO login VALUES('admin', '12345');

SELECT * FROM login;

-- 1. Customer Login Table (new accounts for customers)
CREATE TABLE IF NOT EXISTS customer_login (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT IGNORE INTO customer_login (username, password, customer_name, phone, email)
VALUES ('customer1', '1234', 'Test Customer', '0711234567', 'customer@email.com');

SELECT * FROM customer_login;

-- 2. Customer Bookings Table (track bookings per customer login)
CREATE TABLE customer_bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    customer_name VARCHAR(100),
    room_number VARCHAR(20),
    room_type VARCHAR(50),
    price_per_night DECIMAL(10,2),
    checkin_date DATE,
    checkout_date DATE,
    num_nights INT,
    deposit DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    balance_due DECIMAL(10,2),
    status VARCHAR(20) DEFAULT 'Checked In',
    booked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS customer_bookings;


SELECT * FROM customer_bookings;

CREATE TABLE employee(name VARCHAR(25), age VARCHAR(10), gender VARCHAR(15), job VARCHAR(30), salary VARCHAR(15), phone VARCHAR(15), email VARCHAR(40));

SELECT * FROM employee;

CREATE TABLE room(roomnumber INT AUTO_INCREMENT PRIMARY KEY, availability VARCHAR(20), status VARCHAR(20), price VARCHAR(20), type VARCHAR(20));

SELECT * FROM room;

CREATE TABLE IF NOT EXISTS reception_login (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    full_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT IGNORE INTO reception_login (username, password, full_name)
VALUES ('reception1', '1234', 'Front Desk Staff');

SELECT * FROM reception_login;

CREATE TABLE IF NOT EXISTS room_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) UNIQUE NOT NULL,
    price VARCHAR(20) NOT NULL,
    description VARCHAR(200)
);

INSERT IGNORE INTO room_types (type_name, price, description) VALUES
('Single Bed',  '5000',  'Single bed room'),
('Double Bed',  '8000',  'Double bed room'),
('Suite',       '15000', 'Luxury suite'),
('Family Room', '12000', 'Family room');
