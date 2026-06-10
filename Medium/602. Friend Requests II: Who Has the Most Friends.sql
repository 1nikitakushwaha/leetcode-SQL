/*# Friend Requests II: Who Has the Most Friends

## Problem Overview

We are given a `RequestAccepted` table containing pairs of users who have become friends.

Each row represents a friendship between:

- `requester_id`
- `accepter_id`

Since friendship is mutual, both users gain one friend from each accepted request.

The task is to find the person who has the highest number of friends.

---

## Objective

Return:

- `id`
- `num`

where:

- `id` is the person with the most friends.
- `num` is the number of friends they have.

---

## Output

Return a table containing:

| Column Name |
|-------------|
| id          |
| num         |

---*/

## query
SELECT
    id,
    COUNT(*) AS num
FROM (
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL

    SELECT accepter_id AS id
    FROM RequestAccepted
) AS friends
GROUP BY id
ORDER BY num DESC
LIMIT 1;
