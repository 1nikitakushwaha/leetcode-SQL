/*# Project Employees I

## Problem Overview

We are given two tables:

- `Project` → contains project assignments for employees.
- `Employee` → contains employee experience information.

The task is to calculate the average experience years of employees working on each project.

---

## Objective

For every project, return:

- `project_id`
- `average_years`

The average experience should be rounded to 2 decimal places.

---

## Output

Return a table containing:

| Column Name   |
|---------------|
| project_id    |
| average_years |

---*/

## query
SELECT 
    p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id
