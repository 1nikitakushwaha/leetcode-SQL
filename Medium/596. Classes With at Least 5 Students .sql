/*# Classes With at Least 5 Students

## Problem Overview

We are given a `Courses` table containing students and the classes they are enrolled in.

Each row represents a student taking a class.

The task is to find all classes that have **at least 5 distinct students**.

---

## Objective

Return:

- `class`

for all classes where the number of students is greater than or equal to 5.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| class       |

---*/

## query


SELECT
    class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;
