/*# Exchange Seats

## Problem Overview

We are given a `Seat` table where each row contains a student's seat ID and name.

The task is to swap the seat IDs of every two consecutive students:

- Swap seats 1 and 2
- Swap seats 3 and 4
- Swap seats 5 and 6
- and so on

If the total number of students is odd, the last student keeps their original seat.

---

## Objective

Return the seat arrangement after exchanging every pair of adjacent seats.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| id          |
| student     |

The result should be ordered by `id`.

---*/

## query


SELECT
    CASE
        WHEN id = (SELECT MAX(id) FROM Seat)
             AND id % 2 = 1 THEN id
        WHEN id % 2 = 1 THEN id + 1
        ELSE id - 1
    END AS id,
    student
FROM Seat
ORDER BY id;
