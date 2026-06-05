/*# Monthly Transactions I

## Problem Overview

We are given a `Transactions` table containing transaction details such as country, state, amount, and transaction date.

The task is to generate monthly statistics for each country, including:

- Total number of transactions
- Number of approved transactions
- Total transaction amount
- Total approved transaction amount

The results should be grouped by month and country.

---

## Objective

For each month and country, return:

- `month`
- `country`
- `trans_count`
- `approved_count`
- `trans_total_amount`
- `approved_total_amount`

---

## Output

Return a table containing:

| Column Name           |
|-----------------------|
| month                 |
| country               |
| trans_count           |
| approved_count        |
| trans_total_amount    |
| approved_total_amount |

---*/

## query

select TO_CHAR(trans_date,'YYYY-MM') as month,
country,
count(*) as trans_count,
sum(case when state ='approved' then 1 else 0 end) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state ='approved' then amount else 0 end)approved_total_amount
from Transactions 
group by TO_CHAR(trans_date,'YYYY-MM'),country;
GROUP BY
    DATE_FORMAT(trans_date, '%Y-%m'),
    country;
