/*# Number of Unique Subjects Taught by Each Teacher

## Problem Overview

We are given a table that records which subjects are taught by which teacher.  
Each row represents a subject assigned to a teacher.

The goal is to find the number of unique subjects each teacher teaches.

---

## Objective

For each teacher, return the number of distinct subjects they teach.

---

## Output

Return a result table containing:

- `teacher_id`
- `cnt` (number of unique subjects taught by the teacher)

The result should be grouped by `teacher_id`.

---

## Example Format

| teacher_id | cnt |
|------------|-----|
| 1          | 3   |
| 2          | 2   |

---*/

## SQL Solution

SELECT teacher_id,
count(DISTINCT subject_id) AS cnt
FROM Teacher
group by teacher_id
