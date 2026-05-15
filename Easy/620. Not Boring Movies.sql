-- 620. Not Boring Movies


Question:
Write an SQL query to report the movies with:
1. an odd-numbered ID
2. description is not "boring"

Return the result ordered by rating in descending order.

Table: Cinema

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| movie       | varchar |
| description | varchar |
| rating      | float   |
+-------------+---------+

id is the primary key.
Each row contains information about a movie.
rating is a floating point value in the range [0, 10].
*/

-- Approach:
-- 1. Select required columns from Cinema table
-- 2. Filter rows where description is not 'boring'
-- 3. Keep only odd IDs using modulo operator (%)
-- 4. Sort the result by rating in descending order

SELECT*
FROM Cinema 
WHERE description!='boring'
AND  id%2!=0
ORDER by rating DESC;
