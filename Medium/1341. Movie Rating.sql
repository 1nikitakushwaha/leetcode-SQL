/*# Movie Rating

## Problem Overview

We are given three tables:

- `Movies` → contains movie information.
- `Users` → contains user information.
- `MovieRating` → contains movie ratings given by users.

The task is to find:

1. The user who rated the greatest number of movies.
   - If there is a tie, return the user with the lexicographically smaller name.

2. The movie with the highest average rating during February 2020.
   - If there is a tie, return the movie with the lexicographically smaller title.

---

## Objective

Return a table containing two rows:

- The name of the user with the most ratings.
- The title of the movie with the highest average rating in February 2020.

---

## Output

Return a table containing:

| results |
|----------|
| user_name |
| movie_title |

---*/

## query

(
    SELECT u.name AS results
    FROM Users u
    JOIN MovieRating mr
    ON u.user_id = mr.user_id
    GROUP BY u.user_id, u.name
    ORDER BY COUNT(*) DESC, u.name
    LIMIT 1
)

UNION ALL

(
    SELECT m.title AS results
    FROM Movies m
    JOIN MovieRating mr
    ON m.movie_id = mr.movie_id
    WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = '2020-02'
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(mr.rating) DESC, m.title
    LIMIT 1
);
