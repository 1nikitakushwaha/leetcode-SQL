/*# Classes With at Least 5 Students

## Problem Overview

We are given a table containing students and the classes they are enrolled in.  
Each row represents a student belonging to a particular class.

The task is to find all classes that have **at least 5 students**.

---

## Objective

Return all class names where the number of students enrolled is greater than or equal to 5.

---

## Output

Return a table with:

- `class`
  
Only classes with **5 or more students** should be included.

---

## Example Format

| class |
|-------|
| Math  |
| Physics |

---*/

## solution postgreSQL
select class
from Courses 
group by class 
having count(*)>=5;

