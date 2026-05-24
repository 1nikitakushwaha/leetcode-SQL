/* Employee Reports Summary

## Problem
Find all managers, the number of employees directly reporting to them, and the average age of those employees.

Return:
- `employee_id`
- `name`
- `reports_count`
- `average_age`

The result should be ordered by `employee_id`.

---

## Approach

This problem uses a **Self Join** because managers and employees are stored in the same table.

- `m` represents the manager table
- `e` represents the employee table

We join using:

```sql
e.reports_to = m.employee_id
*/


