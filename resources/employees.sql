-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    HireDate DATE,
    DepartmentID INT,
    Salary DECIMAL(10, 2)
);

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerID INT
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Status VARCHAR(20),
    TotalAmount DECIMAL(10, 2)
);

-- Create OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert data into Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, BirthDate, HireDate, DepartmentID, Salary)
VALUES 
(1, 'Ahmed', 'Mohamed', '1980-05-15', '2015-06-01', 1, 60000),
(2, 'Mohamed', 'Ahmed', '1990-02-20', '2018-07-15', 2, 55000),
(3, 'Moamen', 'Saleh', '1975-11-30', '2010-01-10', 3, 75000);

-- Insert data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID)
VALUES
(1, 'HR', 1),
(2, 'IT', 2),
(3, 'Sales', 3);

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES
(1, 'Laptop', 'Electronics', 1200.00, 50),
(2, 'Smartphone', 'Electronics', 800.00, 200),
(3, 'Desk Chair', 'Furniture', 150.00, 30);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Status, TotalAmount)
VALUES
(1, 101, '2025-02-20', 'Shipped', 2000.00),
(2, 102, '2025-02-22', 'Pending', 400.00);

-- Insert data into OrderDetails table
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 1, 1, 1200.00),
(2, 1, 2, 1, 800.00),
(3, 2, 3, 2, 150.00);