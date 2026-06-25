/*# Immediate Food Delivery

## Problem Overview

We are given a `Delivery` table containing customer orders.

For each order:

- `order_date` is the date the order was placed.
- `customer_pref_delivery_date` is the customer's preferred delivery date.

An order is considered **immediate** if:

```text
order_date = customer_pref_delivery_date*/

SELECT
    ROUND(
        AVG(
            CASE
                WHEN order_date = customer_pref_delivery_date THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS immediate_percentage
FROM Delivery d
JOIN (
    SELECT
        customer_id,
        MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
) f
ON d.customer_id = f.customer_id
AND d.order_date = f.first_order_date;
