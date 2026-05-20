-- LeetCode 1045: Customers Who Bought All Products

-- Customer Table
-- +-------------+-------------+
-- | customer_id | product_key |
-- +-------------+-------------+
-- | 1           | 5           |
-- | 2           | 6           |
-- | 3           | 5           |
-- | 3           | 6           |
-- | 1           | 6           |
-- +-------------+-------------+

-- Product Table
-- +-------------+
-- | product_key |
-- +-------------+
-- | 5           |
-- | 6           |
-- +-------------+

-- Approach:
-- Group rows by customer_id.
-- Count distinct products bought by each customer.
-- Compare it with total number of products in Product table.
-- If both counts are equal, that customer bought all products.

-- Select customers who bought all products
select customer_id
from Customer
group by customer_id
having count(DISTINCT product_key)=
  (
    select count(*) 
  from Product
  );
