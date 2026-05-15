-- 1068. Product Sales Analysis I

/*
Question:
Write an SQL query to report the product_name, year, and price for each sale_id.

Tables:

Sales
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| sale_id     | int     |
| product_id  | int     |
| year        | int     |
| quantity    | int     |
| price       | int     |
+-------------+---------+

Product
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+

product_id is the primary key of Product table.
sale_id + year is the primary key of Sales table.
*/

-- Approach:
-- 1. Join Sales and Product tables using product_id
-- 2. Select required columns:
--    product_name, year, and price


SELECT P.product_name,S.year,S.price 
FROM Sales S
JOIN Product P
ON S.product_id=P.product_id;
