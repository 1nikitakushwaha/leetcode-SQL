-- 183. Customers Who Never Order

/*
Question:
Write an SQL query to report all customers who never place any orders.

Return the result table in any order.

Tables:

Customers
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+

id is the primary key of this table.

Orders
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| customerId  | int     |
+-------------+---------+

id is the primary key of this table.
customerId is a foreign key referencing Customers.id.
*/

-- Approach:
-- 1. Use LEFT JOIN to join Customers with Orders
-- 2. Customers without orders will have NULL values in Orders table
-- 3. Filter rows where Orders.customerId is NULL



SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id=o.customerID
WHERE o.customerID IS NUll;

