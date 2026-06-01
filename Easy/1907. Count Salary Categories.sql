/*# Count Salary Categories

## Problem Overview

We are given an `Accounts` table containing the monthly income of bank accounts.

The task is to count how many accounts belong to each salary category:

- **Low Salary**: income < 20000
- **Average Salary**: income between 20000 and 50000 inclusive
- **High Salary**: income > 50000

All three categories must appear in the result, even if their count is 0.

---

## Objective

Return:

- `category`
- `accounts_count`

for each salary category.

---

## Output

Return a table containing:

| Column Name    |
|----------------|
| category       |
| accounts_count |

---*/

##  Solution


SELECT 'Low Salary' AS category,
       COUNT(*) AS accounts_count
FROM Accounts
WHERE income < 20000

UNION ALL

SELECT 'Average Salary' AS category,
       COUNT(*) AS accounts_count
FROM Accounts
WHERE income BETWEEN 20000 AND 50000

UNION ALL

SELECT 'High Salary' AS category,
       COUNT(*) AS accounts_count
FROM Accounts
WHERE income > 50000;
