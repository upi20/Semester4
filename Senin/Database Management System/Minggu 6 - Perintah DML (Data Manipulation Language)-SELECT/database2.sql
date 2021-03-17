-- Database Foundations
-- 6-7 : Restricting Data Using WHERE Statement
-- Practice Solutions
-- Exercise 1: Restricting Data Using SELECT
-- Overview
-- In this practice you limit the rows displayed with:
-- • The WHERE clause
-- • The comparison operators
-- • Logical conditions using AND, OR, and NOT operators
-- Tasks
-- 1. Display the course details for the Spring Session.
-- Solution:
SELECT
    ID,
    NAME,
    SESSION_ID,
    DEPT_ID
FROM
    AD_COURSES
WHERE
    SESSION_ID = 100;

-- 2. Display the details of the students who have scored more than 95.
-- Solution:
SELECT
    STUDENT_ID,
    EXAM_ID,
    COURSE_ID,
    EXAM_GRADE
FROM
    AD_EXAM_RESULTS
WHERE
    EXAM_GRADE > 95;

-- 3. Display the details of the students who have scored between 65 and 70.
-- Solution:
SELECT
    STUDENT_ID,
    EXAM_ID,
    COURSE_ID,
    EXAM_GRADE
FROM
    AD_EXAM_RESULTS
WHERE
    EXAM_GRADE BETWEEN 65
    AND 70;

-- 4. Display the students who registered after 01-Jun-2012.
-- Solution:
SELECT
    ID,
    FIRST_NAME,
    LAST_NAME,
    REG_YEAR
FROM
    AD_STUDENTS
WHERE
    REG_YEAR > '06/01/2012';

-- 5. Display the course details for departments 10 and 30.
-- Solution:
SELECT
    NAME,
    SESSION_ID,
    DEPT_ID
FROM
    AD_COURSES
WHERE
    DEPT_ID IN (10, 30);

-- 6. Display the details of students whose first name begins with the letter "J".
-- Solution:
SELECT
    FIRST_NAME,
    LAST_NAME
FROM
    AD_STUDENTS
WHERE
    FIRST_NAME LIKE 'J%';

-- 7. Display the details of students who have opted for courses 190 or 193.
-- Solution:
SELECT
    STUDENT_ID,
    COURSE_ID
FROM
    AD_STUDENT_COURSE_DETAILS
WHERE
    COURSE_ID = 190
    OR COURSE_ID = 193;

-- 8. Display the course details offered by department 30 for the Fall Session (Session ID 200)
-- Solution:
SELECT
    ID,
    NAME,
    SESSION_ID
FROM
    AD_COURSES
WHERE
    DEPT_ID = 20
    AND SESSION_ID = 200;

-- 9. Display the course details of courses not being offered in the summer and fall session (Session ID 200 and 300).
-- Solution:
SELECT
    ID,
    NAME,
    SESSION_ID
FROM
    AD_COURSES
WHERE
    SESSION_ID NOT IN (200, 300);

-- 10. Display the course details for department 20.
-- Solution:
SELECT
    ID,
    NAME,
    SESSION_ID,
    DEPT_ID
FROM
    AD_COURSES
WHERE
    DEPT_ID = 20;