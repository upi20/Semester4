-- Database Foundations
-- 6-8 : Sorting Data Using ORDER BY
-- Practice Solutions
-- Exercise 1: Sorting Data Using ORDER BY
-- Overview
-- In this practice you will:
-- • Sort rows by using the ORDER BY clause
-- Tasks
-- 1. Display all fields for each of the records in ascending order for the following tables:
-- a. AD_STUDENTS ordered by REG_YEAR
-- Solution:
SELECT
    ID,
    FIRST_NAME,
    LAST_NAME,
    PARENT_ID,
    REG_YEAR,
    EMAIL
FROM
    AD_STUDENTS
ORDER BY
    REG_YEAR;

-- b. AD_EXAM_RESULTS ordered by STUDENT_ID and COURSE_ID
-- Solution:
SELECT
    STUDENT_ID,
    EXAM_ID,
    COURSE_ID,
    EXAM_GRADE
FROM
    AD_EXAM_RESULTS
ORDER BY
    COURSE_ID,
    STUDENT_ID;

-- c. AD_STUDENT_ATTENDANCE ordered by STUDENT_ID
-- Solution:
SELECT
    STUDENT_ID,
    NUM_WORK_DAYS,
    NUM_DAYS_OFF,
    EXAM_ELIGIBILITY
FROM
    AD_STUDENT_ATTENDANCE
ORDER BY
    STUDENT_ID;

-- d. AD_DEPARTMENTS ordered by DEPT_ID
-- Solution:
SELECT
    ID,
    NAME,
    HEAD
FROM
    AD_DEPARTMENTS
ORDER BY
    ID;

-- 2. Display the percentage of days students have taken days off and sort the records based on the percentage calculated.
-- Solution:
SELECT
    STUDENT_ID,
    ((NUM_DAYS_OFF / NUM_WORK_DAYS) * 100) AS PERCT,
    EXAM_ELIGIBILITY
FROM
    AD_STUDENT_ATTENDANCE
ORDER BY
    PERCT;

-- 3. Display the top 5 students based on exam grade results.
-- Solution:
SELECT
    ROWNUM As "HIGH SCORES",
    STUDENT_ID,
    EXAM_ID,
    EXAM_GRADE
FROM
    (
        SELECT
            STUDENT_ID,
            EXAM_ID,
            EXAM_GRADE
        FROM
            AD_EXAM_RESULTS
        ORDER BY
            EXAM_GRADE DESC
    )
WHERE
    ROWNUM <= 5 -- 4. Display the parent details ordered by PARENT_ID.
    -- Solution:
SELECT
    ID,
    PARENT1_FN,
    PARENT1_LN,
    PARENT2_FN,
    PARENT2_LN
FROM
    AD_PARENT_INFORMATION
ORDER BY
    ID;