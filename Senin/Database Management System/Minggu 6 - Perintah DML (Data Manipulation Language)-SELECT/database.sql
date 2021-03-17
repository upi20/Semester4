-- 6-6 : Retrieving Data Practice Solutions
-- Exercise 1: Retrieving Columns from tables
-- 1. Write a simple query to view the data inserted in the tables created for the academic database
-- Solution:
SELECT
    *
FROM
    AD_ACADEMIC_SESSIONS;

SELECT
    *
FROM
    AD_COURSES;

SELECT
    *
FROM
    AD_DEPARTMENTS;

SELECT
    *
FROM
    AD_EXAMS;

SELECT
    *
FROM
    AD_EXAM_RESULTS;

SELECT
    *
FROM
    AD_EXAM_TYPES;

SELECT
    *
FROM
    AD_FACULTY_COURSE_DETAILS;

SELECT
    *
FROM
    AD_PARENT_INFORMATION;

SELECT
    *
FROM
    AD_STUDENTS;

SELECT
    *
FROM
    AD_FACULTY;

SELECT
    *
FROM
    AD_STUDENT_ATTENDANCE;

SELECT
    *
FROM
    AD_FACULTY_LOGIN_DETAILS;

SELECT
    *
FROM
    AD_STUDENT_COURSE_DETAILS;

-- 2. Write a query to retrieve the exam grade obtained by each student for every exam attempted.
-- Solution:
SELECT
    STUDENT_ID,
    EXAM_ID,
    EXAM_GRADE
FROM
    AD_EXAM_RESULTS;

-- 3. Write a query to check if a student is eligible to take exams based on the number of days he/she attended classes.
-- Solution:
SELECT
    STUDENT_ID,
    NUM_WORK_DAYS,
    EXAM_ELIGIBILITY
FROM
    AD_STUDENT_ATTENDANCE;

-- 4. Display the LOGIN_DATE_TIME for each faculty member.
-- Solution:
SELECT
    FACULTY_ID,
    LOGIN_DATE_TIME
FROM
    AD_FACULTY_LOGIN_DETAILS;

-- 5.Display the name of the Head of the Department for each of the Departments.
-- Solution:
SELECT
    NAME,
    HEAD
FROM
    AD_DEPARTMENTS;

-- 6.Retrieve the student ID and first name for each student concatenated with literal text to look like this: 720: FIRST NAME IS JACK 
-- Solution:
SELECT
    ID || ' : FIRST NAME IS ' || FIRST_NAME
FROM
    AD_STUDENTS;

-- 7.Display all the distinct exam types from the AD_EXAMS table.
-- Solution:
SELECT
    DISTINCT EXAM_TYPE
FROM
    AD_EXAMS;

-- Exercise 2: Using Arithmetic Operators and Column Alias in SELECT statements
-- 1. The faculty of the different Departments realized that the exam grades entered in the AD_EXAM_RESULTS were showing an increased value of 5 points for each entry. Can you display the exam grades with 5 points subtracted from the marks obtained by each student?
-- Solution:
SELECT
    STUDENT_ID,
    EXAM_ID,
    (EXAM_GRADE - 5)
FROM
    AD_EXAM_RESULTS;

-- 2. Display the percentage of days students have taken off and their eligibility for taking the exams.
-- Solution:
SELECT
    STUDENT_ID,
    ((NUM_DAYS_OFF / NUM_WORK_DAYS) * 100),
    EXAM_ELIGIBILITY
FROM
    AD_STUDENT_ATTENDANCE;

-- 3. Display the FIRST_NAME and EMAIL for each student like this:
-- Student Email Address
-- The email address of JACK is JSMITH@SCHOOL.EDU
-- The email address of NOAH is NAUDRY@SCHOOL.EDU
-- Solution:
SELECT
    'The email address of ' || FIRST_NAME || ' is ' || EMAIL AS "Student Email Address"
FROM
    AD_STUDENTS;

-- 4. Display the department name and the head of the department from the AD_DEPARTMENTS table like this:
-- Department and Head
-- ACCOUNTING Department's Head is: MARK SMITH
-- BIOLOGY Department's Head is: DAVE GOLD
-- COMPUTER SCIENCE Department's Head is: LINDA BROWN
-- LITERATURE Department's Head is: ANITA TAYLOR
SELECT
    NAME || q '[ Department' s Head is: ] '
 || HEAD AS "Department and Head"
FROM AD_DEPARTMENTS;
' -- 5. Display the distinct DEPARTMENT_ID from the AD_COURSE_DETAILS table.
    -- Solution:
SELECT
    DISTINCT DEPT_ID
FROM
    AD_COURSES;