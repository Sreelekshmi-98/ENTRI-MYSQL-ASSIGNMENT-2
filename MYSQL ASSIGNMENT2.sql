CREATE DATABASE Sales;

USE Sales;

CREATE TABLE Orders (Order_Id INT PRIMARY KEY, Customer_Name VARCHAR(200) NOT NULL, 
Product_Category VARCHAR(40), Ordered_item VARCHAR(50) NOT NULL, Contact_No VARCHAR(10) UNIQUE );

INSERT INTO Orders (Order_Id, Customer_Name, Product_Category,  Ordered_item, Contact_No) VALUES
(586, 'Annie', 'Electronics', 'SmartTV', '8978418900'),
(587,'Dany', 'Accessories', 'PowerBank', '7512475623'),
(588, 'Alex', 'Clothing', 'Jacket', '8856147560'),
(589, 'Tony', 'Electronics', 'Smartphone', '9524569980'),
(590, 'Tessy', 'Cookware', 'Fryingpan', '9647001223'),
(591, 'Maria', 'Cookware', 'Nonstickpan', '7010039743') ;

DESC Orders;

SELECT * FROM Orders;

ALTER TABLE Orders
ADD Orders_quantity INT NOT NULL;


UPDATE Orders
SET Orders_quantity = 4
WHERE Order_Id = 586;

UPDATE Orders
SET Orders_quantity = 5
WHERE Order_Id = 587;

UPDATE Orders
SET Orders_quantity = 2
WHERE Order_Id = 588;


UPDATE Orders
SET Orders_quantity = 7
WHERE Order_Id = 589;

UPDATE Orders
SET Orders_quantity = 8
WHERE Order_Id = 590;

UPDATE Orders
SET Orders_quantity = 6
WHERE Order_Id = 591;

SELECT * FROM Orders;

RENAME TABLE Orders TO Sales_Orders;

SELECT * FROM Sales_Orders;

INSERT INTO Sales_Orders (Order_Id, Customer_Name, Product_Category, Ordered_item, Contact_No, Orders_quantity) VALUES
(592, 'John', 'Electronics', 'Laptop', 7096420039, 2),
(593, 'Boby', 'Clothing', 'Shirt', 9876543210, 2),
(594, 'Treesa', 'Accessories', 'Watch', 8001116661, 4),
(595, 'Catherine', 'Cookware', 'Fryingpan', 7290123456, 5),
(596, 'David', 'Electronics', 'Smartphone', 9619876543, 3),
(597, 'Stephey', 'Clothing', 'Dress', 8167890123, 5),
(598, 'Philip', 'Accessories', 'Wallet', 9243210987, 3),
(599, 'George', 'Cookware', 'Nonstickpan', 7145678901, 2),
(600, 'Hannah', 'Electronics', 'Tablet', 9012345678, 1),
(601, 'Ivan', 'Clothing', 'Jacket', 6254321098, 3);


SELECT Customer_Name, Ordered_Item
FROM Sales_Orders;


UPDATE Sales_Orders
SET Ordered_Item = 'TV'
WHERE Order_Id =586 AND Ordered_Item = 'SmartTV';

DROP TABLE Sales_Orders;


