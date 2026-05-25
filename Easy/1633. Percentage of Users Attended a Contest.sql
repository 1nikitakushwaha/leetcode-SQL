/*# Percentage of Users Attending a Contest

## Problem Statement

Given two tables `Users` and `Register`, find the percentage of users registered in each contest rounded to 2 decimal places.

Return the result ordered by:
- percentage in descending order
- contest_id in ascending order if percentages are equal

---

## Approach

- Group records using `contest_id`
- Count how many users registered in each contest using `COUNT(user_id)`
- Find total number of users using a subquery
- Apply percentage formula:

percentage = (registered_users * 100.0) / total_users

- Use `ROUND(..., 2)` to keep 2 decimal places
- Sort the result as required

---*/

--SQL Query
SELECT contest_id,
ROUND(COUNT(user_id)*100.0/(SELECT count(*) FROM Users),2) 
  AS percentage
from Register
group by contest_id
order by percentage desc,contest_id asc;
