/*# Find Customer Referee

## Problem Overview

We are given a `Customer` table containing customer information and the ID of the customer who referred them.

The task is to find customers who:

- Were not referred by customer with `id = 2`, or
- Were not referred by anyone (`referee_id` is `NULL`).

---

## Objective

Return the names of customers whose `referee_id` is either:

- Not equal to `2`
- `NULL`

---

## Output

Return a table containing:

| Column Name |
|-------------|
| name        |

---*/

## query
SELECT name
FROM Customer
WHERE referee_id !=2
OR referee_id is NULL;
