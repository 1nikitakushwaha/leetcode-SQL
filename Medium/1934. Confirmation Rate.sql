/*# Confirmation Rate

## Problem Overview

We are given two tables:

- `Signups` → contains all registered users.
- `Confirmations` → contains confirmation request records and their outcomes (`confirmed` or `timeout`).

The confirmation rate of a user is defined as:

- Number of `confirmed` requests ÷ Total number of confirmation requests.

If a user has never requested a confirmation message, their confirmation rate is **0**.

The result should be rounded to 2 decimal places.

---

## Objective

For each user, return:

- `user_id`
- `confirmation_rate`

---

## Output

Return a table containing:

| Column Name       |
|-------------------|
| user_id           |
| confirmation_rate |

---*/

## solution

SELECT 
    s.user_id,
    ROUND(
        AVG(
            CASE
             WHEN c.action='confirmed' THEN 1.00
               ELSE 0
                END
                ),2
    ) AS confirmation_rate

FROM 
  Signups s
LEFT JOIN
  Confirmations c
  ON s.user_id=c.user_id
GROUP BY
   s.user_id
  
