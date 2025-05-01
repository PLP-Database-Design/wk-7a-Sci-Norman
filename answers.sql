          -- Question 1 Achieving 1NF (First Normal Form) 

CREATE TABLE OrderDetails_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(50)
);

-- Inserting data for OrderID 101
INSERT INTO OrderDetails_1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO OrderDetails_1NF VALUES (101, 'John Doe', 'Mouse');

-- Inserting data for OrderID 102
INSERT INTO OrderDetails_1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO OrderDetails_1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO OrderDetails_1NF VALUES (102, 'Jane Smith', 'Mouse');

-- Inserting data for OrderID 103
INSERT INTO OrderDetails_1NF VALUES (103, 'Emily Clark', 'Phone');


          -- Question 2 Achieving 2NF (Second Normal Form)

-- Step 1: Create Orders table to store order-specific information
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Step 2: Create OrderItems table to store product-specific information
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Step 3: Populate the Orders table
INSERT INTO Orders (OrderID, CustomerName)
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Step 4: Populate the OrderItems table
INSERT INTO OrderItems (OrderID, Product, Quantity)
SELECT OrderID, Product, Quantity
FROM OrderDetails;