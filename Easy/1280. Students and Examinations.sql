-- 1280. Students and Examinations

/*
Question:
Write an SQL query to find the number of times each student attended each exam.

Return the result table ordered by:
1. student_id
2. subject_name

Tables:

Student
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| student_id  | int     |
| student_name| varchar |
+-------------+---------+

Subjects
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| subject_name | varchar |
+--------------+---------+

Examinations
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| student_id   | int     |
| subject_name | varchar |
+--------------+---------+
*/

-- Approach:
-- 1. Use CROSS JOIN to create all possible student-subject combinations
-- 2. LEFT JOIN with Examinations table to match attended exams
-- 3. COUNT attended exams for each student and subject
-- 4. GROUP BY student details and subject name
-- 5. ORDER BY student_id and subject_name

SELECT S.student_id,S.student_name,SU.subject_name,
count(E.student_id) AS attended_exams
FROM Students S
CROSS JOIN Subjects SU
LEFT JOIN Examinations E
ON S.student_id=E.student_id
AND Su.subject_name=E.subject_name
GROUP BY S.student_id,S.student_name,SU.subject_name
ORDER BY S.student_id,S.student_name,SU.subject_name;
