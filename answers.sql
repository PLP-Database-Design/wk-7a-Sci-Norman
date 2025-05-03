          -- Question 1 Achieving 1NF 

CREATE TABLE ProductDetail (

OrderID INT,

CustomerName VARCHAR(100),

Products VARCHAR(100)

);

INSERT INTO ProductDetail(OrderID, CustomerName, Products)

VALUES

(101, 'patk Nogo', 'Laptop'),

(101, 'John Dreye', 'Mouse'),

(102, 'Jane Smith', 'Tablet'),

(102, 'Joan Swih', 'Keyboard'),

(102, 'brian Sith', 'Mouse'),

(103, 'Emily blork', 'Phone');

-- Question 2

CREATE TABLE Orders (

OrderID INT PRIMARY KEY,

CustomerName VARCHAR(100)

);

INSERT INTO Orders (OrderID, CustomerName)

VALUES

(101, 'John Dreye'),
          
(102, 'Jane Smith'),

(103, 'Emily blork');

CREATE TABLE Product (

OrderID INT,

Product VARCHAR(100),

Quantity INT,

PRIMARY KEY (OrderID, Product),

FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)

);

INSERT INTO Product (OrderID, Product, Quantity)

VALUES

(101, 'Laptop', 2),

(101, 'Mouse', 1),

(102, 'Tablet', 3),

(102, 'Keyboard', 1),

(102, 'Mouse', 2),

(103, 'Phone', 1);
