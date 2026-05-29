/*# Product Sales Analysis III

## Problem Overview

We are given two tables:

- `Sales` → contains product sales information by year.
- `Product` → contains product details.

The task is to find the first year each product was sold along with its quantity and price in that year.

---

## Objective

For every product, return:

- `product_id`
- `first_year`
- `quantity`
- `price`

The result should contain only the earliest sales year for each product.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| product_id  |
| first_year  |
| quantity    |
| price       |

---*/

## query
  
SELECT 
    product_id,
    year AS first_year,
    quantity,
    price
FROM Sales
WHERE (product_id, year) IN (
    SELECT 
        product_id,
        MIN(year)
    FROM Sales
    GROUP BY product_id
);
