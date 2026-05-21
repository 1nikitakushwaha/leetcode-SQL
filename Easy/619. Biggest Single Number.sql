/*619# Largest Single Number

## Question

A single number is a number that appeared only once in the `MyNumbers` table.

Find the largest single number. If there is no single number, report `null`.

### Table: MyNumbers

| Column Name | Type |
|-------------|------|
| num         | int  |

---

### Example

#### Input

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

#### Output

| num |
|-----|
| 6   |

#### Explanation

The single numbers are:

```text
1, 4, 5, 6*/

select max(num) as num
from(
    select num
    from MyNumbers
    group by num
    having count(*)=1 
) as temp;
