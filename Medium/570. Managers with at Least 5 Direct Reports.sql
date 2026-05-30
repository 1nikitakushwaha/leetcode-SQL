/*# Managers with at Least 5 Direct Reports

## Problem Overview

We are given an `Employee` table that contains employee details and their manager's ID.

Each employee may report to a manager through the `managerId` column. The task is to identify managers who have at least five employees directly reporting to them.

---

## Objective

Find the names of all managers who have **5 or more direct reports**.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| name        |

Only managers with at least five direct reports should be included.

---*/

## query

SELECT name
FROM Employee
WHERE id In(
        SELECT managerId
        FROM Employee
        group by managerId
        having count(*)>=5);
