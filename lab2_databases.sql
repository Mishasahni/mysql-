-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS bank_transactions;

-- Step 2: Use the database
USE bank_transactions;

-- Step 3: Create the `customers` table
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255),
    date_of_birth DATE,
    date_joined TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 4: Create the `debit` table
CREATE TABLE IF NOT EXISTS debit (
    debit_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(15, 2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);customer_addresscustomer_addresscustomer_addresscustomer_addresscustomer_addresscustomer_addresscustomer_addresscustomer_addresscustomer_addresscustomer_classificationCustomer_Classification_IDcustomer_addressCustomer_Identifier

-- Step 5: Create the `credit` table
CREATE TABLE IF NOT EXISTS credit (
    credit_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(15, 2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Step 6: Insert sample customer data into the `customers` table
INSERT INTO customers (first_name, last_name, email, phone_number, address, date_of_birth)
VALUES 
    ('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm Street', '1985-04-10'),
    ('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Avenue', '1990-06-20'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '555-555-5555', '789 Pine Road', '1982-11-05');

-- Step 7: Insert sample debit transactions into the `debit` table
INSERT INTO debit (customer_id, amount, description)
VALUES
    (1, 200.00, 'ATM withdrawal'),
    (2, 150.00, 'Grocery shopping'),
    (3, 50.00, 'Dining out');

-- Step 8: Insert sample credit transactions into the `credit` table
INSERT INTO credit (customer_id, amount, description)
VALUES
    (1, 500.00, 'Salary deposit'),
    (2, 1000.00, 'Direct deposit'),
    (3, 200.00, 'Gift from family');
    
    
SELECT * FROM customers;customer_detailcustomer_details
SELECT * FROM debit;
SELECT * FROM credit;

-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS cricket_database;

-- Step 2: Use the database
USE cricket_database;

-- Step 3: Create the `players` table
CREATE TABLE IF NOT EXISTS players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    dob DATE,
    nationality VARCHAR(100),
    role VARCHAR(50),  -- e.g., Batsman, Bowler, All-rounder
    debut_date DATE
);

-- Step 4: Create the `stadium` table
CREATE TABLE IF NOT EXISTS stadium (
    stadium_id INT AUTO_INCREMENT PRIMARY KEY,
    stadium_name VARCHAR(100),
    location VARCHAR(100),
    capacity INT
);

-- Step 5: Create the `batting` table
CREATE TABLE IF NOT EXISTS batting (
    batting_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    matches INT,        -- Number of matches played
    runs INT,           -- Runs scored
    average DECIMAL(5, 2),  -- Batting average
    strike_rate DECIMAL(5, 2),  -- Batting strike rate
    hundreds INT,       -- Number of hundreds scored
    fifties INT,        -- Number of fifties scored
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);

-- Step 6: Create the `bowling` table
CREATE TABLE IF NOT EXISTS bowling (
    bowling_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    matches INT,        -- Number of matches played
    wickets INT,        -- Wickets taken
    average DECIMAL(5, 2),  -- Bowling average
    economy_rate DECIMAL(5, 2),  -- Bowling economy rate
    best_bowling VARCHAR(50),  -- Best bowling performance (e.g., "5/25")
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);

-- Step 7: Insert default values into the `players` table
INSERT INTO players (first_name, last_name, dob, nationality, role, debut_date)
VALUES
    ('Virat', 'Kohli', '1988-11-05', 'India', 'Batsman', '2008-08-18'),
    ('Rashid', 'Khan', '1998-09-20', 'Afghanistan', 'Bowler', '2015-10-18'),
    ('Ben', 'Stokes', '1991-06-04', 'England', 'All-rounder', '2011-08-13'),
    ('Steve', 'Smith', '1989-06-02', 'Australia', 'Batsman', '2010-10-05');

-- Step 8: Insert default values into the `stadium` table
INSERT INTO stadium (stadium_name, location, capacity)
VALUES
    ('Eden Gardens', 'Kolkata, India', 66000),
    ('Lord\'s Cricket Ground', 'London, England', 30000),
    ('Melbourne Cricket Ground', 'Melbourne, Australia', 100024),
    ('Wankhede Stadium', 'Mumbai, India', 33000);

-- Step 9: Insert default values into the `batting` table
INSERT INTO batting (player_id, matches, runs, average, strike_rate, hundreds, fifties)
VALUES
    (1, 250, 12000, 53.5, 90.0, 45, 25),  -- Virat Kohli
    (2, 75, 1800, 30.0, 75.0, 2, 15),    -- Rashid KhaN
    (3, 100, 3500, 40.0, 85.0, 5, 20),   -- Ben Stokes
    (4, 120, 8000, 55.0, 85.5, 25, 35);  -- Steve Smith

-- Step 10: Insert default values into the `bowling` table
INSERT INTO bowling (player_id, matches, wickets, average, economy_rate, best_bowling)
VALUES
    (1, 250, 230, 35.4, 4.8, '5/50'),    -- Virat Kohli
    (2, 75, 150, 20.0, 3.5, '5/25'),     -- Rashid Khan
    (3, 80, 70, 32.5, 4.2, '4/35'),      -- Ben Stokes
    (4, 60, 40, 45.0, 5.0, '3/40');      -- Steve Smith (part-time bowler)
    
    
    
    
-- Create a Supermarket database
CREATE DATABASE Supermarket;

-- Use the database
USE Supermarket;

-- Create a table for Employees
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender VARCHAR(10),
    position VARCHAR(50),
    hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a table for Products
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Create a table for Customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

-- Create a table for Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create a table for Order Details (to store each product in an order)
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- 1. Passengers Table
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    DateOfBirth DATE,
    Gender CHAR(1),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(15)
);

-- Sample entries for Passengers
INSERT INTO Passengers (FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber) 
VALUES 
('John', 'Doe', '1985-06-15', 'M', 'john.doe@example.com', '1234567890'),
('Jane', 'Smith', '1990-09-25', 'F', 'jane.smith@example.com', '0987654321'),
('Michael', 'Johnson', '1978-12-05', 'M', 'michael.j@example.com', '1112233445');

-- 2. Trains Table
CREATE TABLE Trains (
    TrainID INT PRIMARY KEY AUTO_INCREMENT,
    TrainName VARCHAR(100),
    TrainType VARCHAR(50),
    SourceStation VARCHAR(100),
    DestinationStation VARCHAR(100),
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    TotalSeats INT
);

-- Sample entries for Trains
INSERT INTO Trains (TrainName, TrainType, SourceStation, DestinationStation, DepartureTime, ArrivalTime, TotalSeats) 
VALUES 
('Express 101', 'Express', 'New York', 'Los Angeles', '2025-02-10 08:00:00', '2025-02-10 20:00:00', 500),
('Superfast 202', 'Superfast', 'San Francisco', 'Chicago', '2025-02-11 09:30:00', '2025-02-11 18:30:00', 400),
('FastTrack 303', 'FastTrack', 'Miami', 'Houston', '2025-02-12 07:45:00', '2025-02-12 15:00:00', 300);

-- 3. Stations Table
CREATE TABLE Stations (
    StationID INT PRIMARY KEY AUTO_INCREMENT,
    StationName VARCHAR(100),
    StationCode VARCHAR(10),
    City VARCHAR(100),
    State VARCHAR(100)
);

-- Sample entries for Stations
INSERT INTO Stations (StationName, StationCode, City, State) 
VALUES 
('New York Central', 'NYC', 'New York', 'New York'),
('Los Angeles Main', 'LA', 'Los Angeles', 'California'),
('San Francisco Central', 'SFO', 'San Francisco', 'California'),
('Chicago Union Station', 'CHI', 'Chicago', 'Illinois'),
('Miami Central', 'MIA', 'Miami', 'Florida'),
('Houston Main', 'HOU', 'Houston', 'Texas');

-- 4. Reservations Table
CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    PassengerID INT,
    TrainID INT,
    ReservationDate DATETIME,
    NumberOfSeats INT,
    Status VARCHAR(50),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);

-- Sample entries for Reservations
INSERT INTO Reservations (PassengerID, TrainID, ReservationDate, NumberOfSeats, Status) 
VALUES 
(1, 101, '2025-02-03 10:00:00', 2, 'Confirmed'),
(2, 202, '2025-02-03 11:00:00', 1, 'Confirmed'),
(3, 303, '2025-02-03 12:00:00', 3, 'Pending');

-- 5. Tickets Table
CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY AUTO_INCREMENT,
    ReservationID INT,
    SeatNumber INT,
    TicketStatus VARCHAR(50),
    Price DECIMAL(10, 2),
    FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID)
);

-- Sample entries for Tickets
INSERT INTO Tickets (ReservationID, SeatNumber, TicketStatus, Price) 
VALUES 
(1, 1, 'Booked', 120.00),
(1, 2, 'Booked', 120.00),
(2, 1, 'Booked', 150.00),
(3, 1, 'Pending', 100.00),
(3, 2, 'Pending', 100.00),
(3, 3, 'Pending', 100.00);

-- 6. Train Schedules Table
CREATE TABLE TrainSchedules (
    ScheduleID INT PRIMARY KEY AUTO_INCREMENT,
    TrainID INT,
    StationID INT,
    ArrivalTime DATETIME,
    DepartureTime DATETIME,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (StationID) REFERENCES Stations(StationID)
);

-- Sample entries for TrainSchedules
INSERT INTO TrainSchedules (TrainID, StationID, ArrivalTime, DepartureTime) 
VALUES 
(101, 1, '2025-02-10 07:30:00', '2025-02-10 08:00:00'), -- New York
(101, 2, '2025-02-10 19:30:00', '2025-02-10 20:00:00'), -- Los Angeles
(202, 3, '2025-02-11 08:00:00', '2025-02-11 09:30:00'), -- San Francisco
(202, 4, '2025-02-11 17:00:00', '2025-02-11 18:30:00'), -- Chicago
(303, 5, '2025-02-12 06:00:00', '2025-02-12 07:45:00'), -- Miami
(303, 6, '2025-02-12 14:00:00', '2025-02-12 15:00:00'); -- Houston




