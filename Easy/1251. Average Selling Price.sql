# 1251. Average Selling Price

/*
PROBLEM:
We are given two tables:
1. Prices(product_id, start_date, end_date, price)
2. UnitsSold(product_id, purchase_date, units)

We need to find the average selling price for each product.

Average Price = 
(total revenue from product) / (total units sold)

Round result to 2 decimal places.
If a product has no sales, return 0.
*/
--query--
SELECT 
p.product_id,
    CASE
        WHEN SUM(u.units) is null
        THEN 0
        ELSE
            ROUND(SUM(u.units * p.price) / SUM(u.units)::numeric, 2)
    END
    AS average_price
FROM 
    Prices p
LEFT JOIN 
    UnitsSold u
ON 
    u.product_id = p.product_id 
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 
    p.product_id;
