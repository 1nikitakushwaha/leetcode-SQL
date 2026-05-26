/*# 610. Triangle Judgement

## Problem Statement
Write a query to determine whether three sides `x`, `y`, and `z` can form a triangle.

A triangle is valid if:
- `x + y > z`
- `y + z > x`
- `z + x > y`

Return `"Yes"` if the sides form a triangle, otherwise return `"No"`.
  Triangle table:
+----+----+----+
| x  | y  | z  |
+----+----+----+
| 13 | 15 | 30 |
| 10 | 20 | 15 |
+----+----+----+
Output: 
+----+----+----+----------+
| x  | y  | z  | triangle |
+----+----+----+----------+
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
+----+----+----+----------+
  */

## SQL Query
SELECT*,
CASE
  WHEN x+y>z AND y+z>x AND z+x>y THEN 'Yes'
  ELSE 'No'
END as triangle
FROM Triangle;

