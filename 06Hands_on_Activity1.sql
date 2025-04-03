CREATE DATABASE myDB;
USE myDB;
CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(100) NOT NULL,
    ContactNum VARCHAR(20),
    CityAddress VARCHAR(255)
);
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Gender CHAR(1),
    Birthdate DATE
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY NOT NULL,
    Description VARCHAR(255) NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    VendorID INT,
    FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID) 
);
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Vendors;