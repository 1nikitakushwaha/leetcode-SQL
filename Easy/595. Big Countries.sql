-- LeetCode 175: Combine Two Tables

-- Person Table
-- +----------+----------+-----------+
-- | personId | firstName| lastName  |
-- +----------+----------+-----------+
-- | 1        | Allen    | Wang      |
-- | 2        | Bob      | Alice     |
-- +----------+----------+-----------+

-- Address Table
-- +-----------+----------+---------------+------------+
-- | addressId | personId | city          | state      |
-- +-----------+----------+---------------+------------+
-- | 1         | 2        | New York City | New York   |
-- | 2         | 3        | Leetcode      | California |
-- +-----------+----------+---------------+------------+

-- Approach:
-- Use LEFT JOIN to combine both tables.
-- Keep all people even if address does not exist.

select firstName,lastName,city,state 
from Person p
left join Address a
on p.personID=a.personID;
