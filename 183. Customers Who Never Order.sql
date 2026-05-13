LeetCode 183 - Customers Who Never Order

#Tables

Customers
+------------+--------+
| customerId | name   |
+------------+--------+
| 1          | Alice  |
| 2          | Bob    |
| 3          | John   |
+------------+--------+

#Orders
+----+------------+
| id | customerId |
+----+------------+
|101 | 1          |
|102 | 3          |
+----+------------+

#Approach
We want customers who have NO matching order.

Step 1: Take all customers
Step 2: LEFT JOIN with Orders
Step 3: Non-matching rows become NULL in Orders
Step 4: Filter those NULL values

Visual Join Flow

Customers  ───────────►  Orders
     |                    |
     |---- LEFT JOIN -----|
              ↓
       No match = NULL

📌 After LEFT JOIN

+------------+--------+------------+
| customerId | name   | customerId |
+------------+--------+------------+
| 1          | Alice  | 1          |
| 2          | Bob    | NULL       |
| 3          | John   | 3          |
+------------+--------+------------+

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id=o.customerID
WHERE o.customerID IS NUll;
