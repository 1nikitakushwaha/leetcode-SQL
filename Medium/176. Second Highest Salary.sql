/*# Second Highest Salary

## Problem Overview

We are given an `Employee` table containing employee salaries.

The task is to find the second highest distinct salary in the table.

If no second highest salary exists, return `NULL`.

---

## Objective

Return:

- `SecondHighestSalary`

representing the second highest distinct salary.

---

## Output

Return a table containing:

| Column Name         |
|---------------------|
| SecondHighestSalary |

---*/
#query
SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
