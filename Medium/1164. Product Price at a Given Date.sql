/*# Product Price at a Given Date

## Problem Overview

We are given a `Products` table that records price changes of products over time.

Each row shows when a product's price was updated.

If a product has no price change before a given date (2019-08-16), its price is considered **10 by default**.

The task is to find the price of each product on a specific date.

---

## Objective

For each product, return:

- `product_id`
- `price`

Where price is the product's latest price **on or before 2019-08-16**.

If no such record exists, return price = 10.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| product_id  |
| price       |

---*/

## query

SELECT
    product_id,
    10 AS price
FROM Products
GROUP BY product_id
HAVING MIN(change_date) > '2019-08-16'

UNION

SELECT
    product_id,
    new_price AS price
FROM Products
WHERE (product_id, change_date) IN (
    SELECT
        product_id,
        MAX(change_date)
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
);
