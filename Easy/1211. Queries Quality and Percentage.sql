/* Queries Quality and Percentage

## Problem Overview

We are given a table containing search query results along with their position and rating.

Two metrics need to be calculated for each query:

- **Quality**: Average of `(rating / position)`
- **Poor Query Percentage**: Percentage of queries with a rating less than 3

Both values should be rounded to 2 decimal places.

---

## Objective

For each `query_name`, return:

- `query_name`
- `quality`
- `poor_query_percentage`

---

## Output

Return a table containing:

| Column Name             |
|-------------------------|
| query_name              |
| quality                 |
| poor_query_percentage   |

---*/

## query

SELECT query_name,
ROUND(AVG(rating*1.0/position),2) AS quality,
ROUND(
    sum(case
    when rating<3 then 1 else 0 end) *100.0/count(*)
     ,2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
