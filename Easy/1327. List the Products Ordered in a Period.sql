/*# List the Products Ordered in a Period

## Problem Overview

We are given two tables:

- `Products` → contains product details.
- `Orders` → contains order information, including order date and quantity.

The task is to find products that were ordered in **February 2020** and whose total ordered quantity during that month was at least 100 units.

---

## Objective

For each qualifying product, return:

- `product_name`
- `unit`

where `unit` is the total quantity ordered in February 2020.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| product_name |
| unit         |

---*/

# query
SELECT
    p.product_name,
    SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;
