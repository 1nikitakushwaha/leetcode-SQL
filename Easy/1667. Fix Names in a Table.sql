/*# Fix Names in a Table

## Problem Overview

We are given a `Users` table containing user IDs and names. The names may contain a mix of uppercase and lowercase letters.

The task is to format each name so that:

- The first character is uppercase.
- All remaining characters are lowercase.

The result should be ordered by `user_id`.

---

## Objective

For each user, return:

- `user_id`
- `name`

with the name properly formatted.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| user_id     |
| name        |

The result should be ordered by `user_id`.

---*/

## query
SELECT
    user_id,
    CONCAT(
        UPPER(LEFT(name, 1)),
        LOWER(SUBSTRING(name, 2))
    ) AS name
FROM Users
ORDER BY user_id;
