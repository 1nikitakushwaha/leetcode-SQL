/*# Find Users With Valid E-Mails

## Problem Overview

We are given a `Users` table containing user IDs, names, and email addresses.

The task is to identify users whose email addresses are valid according to the following rules:

- The email prefix (before `@`) must start with a letter.
- The prefix may contain:
  - letters (`a-z`, `A-Z`)
  - digits (`0-9`)
  - underscore (`_`)
  - period (`.`)
  - dash (`-`)
- The domain must be exactly `@leetcode.com`.

---

## Objective

Return all rows corresponding to users with valid email addresses.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| user_id     |
| name        |
| mail        |

---*/

## query

SELECT * FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';
