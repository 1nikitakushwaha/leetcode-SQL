/*# Investments in 2016

## Problem Overview

We are given an `Insurance` table containing policyholders' investment values and locations.

The task is to calculate the total `tiv_2016` for policyholders who satisfy both conditions:

- Their `tiv_2015` value is shared with at least one other policyholder.
- Their location `(lat, lon)` is unique (no other policyholder shares the same location).

The final answer should be rounded to two decimal places.

---

## Objective

Return:

- `tiv_2016`

representing the sum of 2016 investment values for all qualifying policyholders.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| tiv_2016    |

---*/

## query


SELECT
    ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);
