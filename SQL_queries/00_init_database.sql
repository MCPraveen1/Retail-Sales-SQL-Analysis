-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    signup_date DATE DEFAULT GETDATE()
);

-- Create Products Table
CREATE TABLE Products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Create Stores Table
CREATE TABLE Stores (
    store_id INT IDENTITY(1,1) PRIMARY KEY,
    store_name VARCHAR(100),
    location VARCHAR(100)
);

-- Create Transactions Table
CREATE TABLE Transactions (
    transaction_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    product_id INT,
    store_id INT,
    quantity INT,
    transaction_date DATE DEFAULT GETDATE(),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);

-- Insert Sample Data into Customers Table
INSERT INTO Customers (first_name, last_name, gender, age, signup_date) VALUES
('Alice', 'Johnson', 'Female', 28, '2023-01-15'),
('Bob', 'Smith', 'Male', 35, '2022-11-20'),
('Charlie', 'Davis', 'Male', 22, '2023-05-10'),
('Diana', 'Brown', 'Female', 40, '2021-09-05');

-- Insert Sample Data into Products Table
INSERT INTO Products (product_name, category, price) VALUES
('Laptop', 'Electronics', 1200.00),
('Smartphone', 'Electronics', 800.00),
('Headphones', 'Accessories', 150.00),
('Coffee Maker', 'Home Appliances', 100.00);

-- Insert Sample Data into Stores Table
INSERT INTO Stores (store_name, location) VALUES
('Tech Hub', 'New York'),
('Gadget World', 'San Francisco'),
('Home Essentials', 'Los Angeles');

-- Insert Sample Data into Transactions Table
INSERT INTO Transactions (customer_id, product_id, store_id, quantity, transaction_date) VALUES
(1, 1, 1, 1, '2024-02-10'),
(2, 2, 2, 2, '2024-02-15'),
(3, 3, 1, 1, '2024-03-01'),
(4, 4, 3, 3, '2024-03-05');
