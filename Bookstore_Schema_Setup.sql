-- Bookstore Database Management System
-- Author: Rahul Chaudhary

-- Create Database
CREATE DATABASE BookstoreDB;

-- Switch to the database
\c BookstoreDB;

-- Books table
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);

-- Customers table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);

-- Orders table
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- Import Books data
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM '/path/to/your/Books.csv' 
CSV HEADER;

-- Import Customers data
COPY Customers(Customer_ID, Name, Email, Phone, City, Country) 
FROM '/path/to/your/Customers.csv' 
CSV HEADER;

-- Import Orders data
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) 
FROM '/path/to/your/Orders.csv' 
CSV HEADER;
