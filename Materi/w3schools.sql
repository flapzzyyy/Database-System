-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-10-11 08:38:40.745

-- tables
-- Table: Categories
CREATE TABLE Categories (
    CategoryID int NOT NULL,
    CategoryName varchar(30) NULL,
    Description text NULL,
    CONSTRAINT Categories_pk PRIMARY KEY (CategoryID)
);

-- Table: Customers
CREATE TABLE Customers (
    CustomerID int NOT NULL AUTO_INCREMENT,
    CustomerName varchar(30) NULL,
    ContactName varchar(30) NULL,
    Address varchar(50) NULL,
    City varchar(15) NULL,
    PostalCode char(15) NULL,
    Country varchar(30) NULL,
    CONSTRAINT Customers_pk PRIMARY KEY (CustomerID)
);

-- Table: Employees
CREATE TABLE Employees (
    EmployeeID int NOT NULL,
    LastName varchar(20) NULL,
    FirstName varchar(20) NULL,
    BirthDate date NULL,
    Photo varchar(30) NULL,
    Notes text NULL,
    CONSTRAINT Employees_pk PRIMARY KEY (EmployeeID)
);

-- Table: OrderDetails
CREATE TABLE OrderDetails (
    OrderDetailID int NOT NULL,
    OrderID int NOT NULL,
    ProductID int NOT NULL,
    Quantity int NOT NULL,
    CONSTRAINT OrderDetails_pk PRIMARY KEY (OrderDetailID)
);

-- Table: Orders
CREATE TABLE Orders (
    OrderID int NOT NULL,
    CustomerID int NOT NULL,
    EmployeeID int NOT NULL,
    OrderDate date NULL,
    ShipperID int NOT NULL,
    CONSTRAINT Orders_pk PRIMARY KEY (OrderID)
);

-- Table: Products
CREATE TABLE Products (
    ProductID int NOT NULL,
    ProductName varchar(30) NOT NULL,
    SupplierID int NOT NULL,
    CategoryID int NOT NULL,
    Unit int NOT NULL,
    Price numeric(5,2) NOT NULL,
    CONSTRAINT Products_pk PRIMARY KEY (ProductID)
);

-- Table: Shippers
CREATE TABLE Shippers (
    ShipperID int NOT NULL,
    ShipperName varchar(30) NULL,
    Phone varchar(30) NULL,
    CONSTRAINT Shippers_pk PRIMARY KEY (ShipperID)
);

-- Table: Suppliers
CREATE TABLE Suppliers (
    SupplierID int NOT NULL,
    SupplierName varchar(50) NULL,
    ContactName varchar(50) NULL,
    Address varchar(100) NULL,
    City varchar(20) NULL,
    PostalCode char(5) NULL,
    Country varchar(30) NULL,
    Phone varchar(30) NOT NULL,
    CONSTRAINT Suppliers_pk PRIMARY KEY (SupplierID)
);

-- foreign keys
-- Reference: OrderDetails_Orders (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT OrderDetails_Orders FOREIGN KEY OrderDetails_Orders (OrderID)
    REFERENCES Orders (OrderID)
    ON UPDATE CASCADE;

-- Reference: OrderDetails_Products (table: OrderDetails)
ALTER TABLE OrderDetails ADD CONSTRAINT OrderDetails_Products FOREIGN KEY OrderDetails_Products (ProductID)
    REFERENCES Products (ProductID)
    ON UPDATE CASCADE;

-- Reference: Orders_Customers (table: Orders)
ALTER TABLE Orders ADD CONSTRAINT Orders_Customers FOREIGN KEY Orders_Customers (CustomerID)
    REFERENCES Customers (CustomerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Reference: Orders_Employees (table: Orders)
ALTER TABLE Orders ADD CONSTRAINT Orders_Employees FOREIGN KEY Orders_Employees (EmployeeID)
    REFERENCES Employees (EmployeeID)
    ON UPDATE CASCADE;

-- Reference: Orders_Shippers (table: Orders)
ALTER TABLE Orders ADD CONSTRAINT Orders_Shippers FOREIGN KEY Orders_Shippers (ShipperID)
    REFERENCES Shippers (ShipperID)
    ON UPDATE CASCADE;

-- Reference: Products_Categories (table: Products)
ALTER TABLE Products ADD CONSTRAINT Products_Categories FOREIGN KEY Products_Categories (CategoryID)
    REFERENCES Categories (CategoryID)
    ON UPDATE CASCADE;

-- Reference: Products_Suppliers (table: Products)
ALTER TABLE Products ADD CONSTRAINT Products_Suppliers FOREIGN KEY Products_Suppliers (SupplierID)
    REFERENCES Suppliers (SupplierID)
    ON UPDATE CASCADE;

-- End of file.
