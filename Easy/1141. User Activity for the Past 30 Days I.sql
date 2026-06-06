/*# User Activity for the Past 30 Days I

## Problem Overview

We are given a `Activity` table containing user actions with timestamps.

The task is to count the number of **active users per day** in the last 30 days ending on a given date (2019-07-27 in the problem).

A user is considered active on a day if they have at least one activity on that date.

---

## Objective

For each day, return:

- `activity_date`
- `active_users`

Only include dates where at least one user was active.

---

## Output

Return a table containing:

| Column Name   |
|---------------|
| activity_date |
| active_users  |

---*/

## query

SELECT
    activity_date,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY)
                        AND '2019-07-27'
GROUP BY activity_date;
