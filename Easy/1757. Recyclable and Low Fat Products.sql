/*# 1757. Recyclable and Low Fat Products

## Problem Statement

Given a table `Products`:

| Column Name | Type |
|-------------|------|
| product_id | int |
| low_fats | enum |
| recyclable | enum |

- `product_id` is the primary key.
- `low_fats` contains `'Y'` or `'N'`.
- `recyclable` contains `'Y'` or `'N'`.

Write an SQL query to find the ids of products that are both low fat and recyclable.

Return the result table in any order.

---

## Approach

We need to filter products that satisfy both conditions:

1. Product should be low fat (`low_fats = 'Y'`)
2. Product should be recyclable (`recyclable = 'Y'`)

Using the `WHERE` clause with the `AND` operator allows us to select only those rows where both conditions are true.*/

---

## SQL Query
  
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';



select product_id 
from Products
where low_fats='Y' and recyclable='Y'
