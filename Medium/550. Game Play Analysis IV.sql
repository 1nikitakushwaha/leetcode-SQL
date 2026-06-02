/*# Game Play Analysis IV

## Problem Overview

We are given an `Activity` table containing player login records.

The task is to find the fraction of players who logged in again on the day immediately after their first login date.

The result should be rounded to 2 decimal places.

---

## Objective

Calculate:

- Number of players who logged in on the day after their first login
- Divided by the total number of players

Return the result as `fraction`.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| fraction    |

---*/

## query

SELECT ROUND(
    1.0 * COUNT(player_id) / 
    (SELECT COUNT(DISTINCT player_id)
    FROM Activity), 2) AS fraction
FROM Activity
WHERE (player_id, event_date) IN (
    SELECT player_id, MIN(event_date) + 1
    FROM Activity
    GROUP BY player_id
