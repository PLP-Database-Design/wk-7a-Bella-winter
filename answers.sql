QUESTION 1:Achieving 1NF (First Normal Form) 
-- Create table OrderProduct the normalized table
CREATE TABLE OrderProduct(
order_id INT PRIMARY KEY,
customerName VARCHAR(255),
product VARCHAR(100)
); 

-- Insert values to our normalized table
INSERT INTO OrderProduct(order_id, customerName, product)
VALUES 
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone'); 


QUESTION 2: Achieving 2NF (Second Normal Form)
-- SOLN We have to create two tables to achieve 2NF.
-- create first table (table orders)
CREATE TABLE Orders(
order_id INT PRIMARY KEY,
customerName VARCHAR(255)
);

-- inserting values to table orders
INSERT INTO Orders(order_id, customerName)
VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');


-- creating second table (table orderproducts)
CREATE TABLE orderproducts(
order_id INT ,
product VARCHAR(100),
quantity int,
PRIMARY KEY (order_id, product),
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- inserting values to table orderproducts
INSERT INTO orderproducts (order_id, Product, quantity)
VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);

