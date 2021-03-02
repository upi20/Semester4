-- Exercise 1: Creating Tables Using Oracle Application Express
-- 1. Create the DDL Statements for creating the tables for the Academic Database listed above – include NOT NULL constraints where necessary. (Other constraints will be added later)
-- ======================================================
-- Membuat table
-- ======================================================
CREATE TABLE AD_ACADEMIC_SESSIONS (ID NUMBER, NAME VARCHAR2(50) NOT NULL);

CREATE TABLE AD_DEPARTMENTS (
    ID NUMBER,
    NAME VARCHAR2(50) NOT NULL,
    HEAD VARCHAR2(50) NOT NULL
);

CREATE TABLE AD_PARENT_INFORMATION (
    ID NUMBER,
    PARENT1_FN VARCHAR2(50) NOT NULL,
    PARENT1_LN VARCHAR2(50) NOT NULL,
    PARENT2_FN VARCHAR2(50),
    PARENT2_LN VARCHAR2(50)
);

CREATE TABLE AD_STUDENTS (
    ID NUMBER,
    FIRST_NAME VARCHAR2(50) NOT NULL,
    LAST_NAME VARCHAR2(50) NOT NULL,
    REG_YEAR DATE NOT NULL,
    EMAIL VARCHAR2(50) NOT NULL,
    PARENT_ID NUMBER NOT NULL
);

CREATE TABLE AD_COURSES (
    ID NUMBER,
    NAME VARCHAR2 (50) NOT NULL,
    SESSION_ID NUMBER NOT NULL,
    DEPT_ID NUMBER,
    LOGON_ID VARCHAR2 (10),
    PASSWORD VARCHAR2 (10),
    BUILDING VARCHAR2 (50),
    ROOM VARCHAR2 (20),
    DATE_TIME VARCHAR2 (20)
);

CREATE TABLE AD_FACULTY (
    ID NUMBER,
    FIRST_NAME VARCHAR2(50) NOT NULL,
    LAST_NAME VARCHAR2(50) NOT NULL,
    EMAIL VARCHAR2(50) NOT NULL,
    SALARY NUMBER,
    INSURANCE VARCHAR2(20),
    HOURLY_RATE NUMBER,
    DEPT_ID NUMBER
);

CREATE TABLE AD_EXAM_TYPES (
    TYPE VARCHAR2(50),
    NAME VARCHAR2(50) NOT NULL,
    DESCRIPTION VARCHAR2(50)
);

CREATE TABLE AD_EXAMS (
    ID NUMBER,
    START_DATE DATE,
    EXAM_TYPE VARCHAR2(50) NOT NULL,
    COURSE_ID NUMBER NOT NULL
);

CREATE TABLE AD_EXAM_RESULTS (
    STUDENT_ID NUMBER,
    COURSE_ID NUMBER,
    EXAM_ID NUMBER,
    EXAM_GRADE NUMBER NOT NULL
);

CREATE TABLE AD_STUDENT_ATTENDANCE (
    STUDENT_ID NUMBER,
    SESSION_ID NUMBER,
    NUM_WORK_DAYS NUMBER NOT NULL,
    NUM_DAYS_OFF NUMBER NOT NULL,
    EXAM_ELIGIBILITY VARCHAR2(20)
);

CREATE TABLE AD_STUDENT_COURSE_DETAILS (
    STUDENT_ID NUMBER,
    COURSE_ID NUMBER,
    GRADE VARCHAR2(2) NOT NULL
);

CREATE TABLE AD_FACULTY_COURSE_DETAILS (
    FACULTY_ID NUMBER,
    COURSE_ID NUMBER,
    CONTACT_HRS NUMBER NOT NULL
);

CREATE TABLE AD_FACULTY_LOGIN_DETAILS (
    FACULTY_ID NUMBER,
    LOGIN_DATE_TIME TIMESTAMP NOT NULL
);

-- ======================================================
-- Melihat detail table
-- ======================================================
DESC AD_ACADEMIC_SESSIONS;

DESC AD_DEPARTMENTS;

DESC AD_PARENT_INFORMATION;

DESC AD_STUDENTS;

DESC AD_COURSES;

DESC AD_FACULTY;

DESC AD_EXAM_TYPES;

DESC AD_EXAMS;

DESC AD_EXAM_RESULTS;

DESC AD_STUDENT_ATTENDANCE;

DESC AD_STUDENT_COURSE_DETAILS;

DESC AD_FACULTY_COURSE_DETAILS;

DESC AD_FACULTY_LOGIN_DETAILS;

-- Exercise 2: Altering the Tables
-- 1. Alter the tables in the Academic Database to define the primary key, foreign key and unique constraints.
-- ======================================================
-- Menambahakan constraint
-- ======================================================
-- CONSTRAIN P
-- 01
ALTER TABLE
    AD_ACADEMIC_SESSIONS
ADD
    CONSTRAINT AD_ACADEMIC_SESSIONS_PK PRIMARY KEY (ID);

-- CONSTRAIN U
-- 02
ALTER TABLE
    AD_ACADEMIC_SESSIONS
ADD
    CONSTRAINT AD_SESSIONS_NAME_UK UNIQUE(NAME);

-- ======================================================
-- ======================================================
-- 03
ALTER TABLE
    AD_COURSES
ADD
    CONSTRAINT AD_COURSES_PK PRIMARY KEY (ID);

-- 04
ALTER TABLE
    AD_COURSES
ADD
    CONSTRAINT AD_COURSES_NAME_UK UNIQUE(NAME);

-- 05
ALTER TABLE
    AD_COURSES
ADD
    CONSTRAINT AD_COURSES_FK1 FOREIGN KEY (SESSION_ID) REFERENCES AD_ACADEMIC_SESSIONS (ID);

-- PERHATIAN BUAT DULU PRIMARY KEY AD_DEPARTEMENTS SEBELUM MENJALANKAN QUERY
-- DIBAWAH
-- 07
ALTER TABLE
    AD_COURSES
ADD
    CONSTRAINT AD_COURSES_FK2 FOREIGN KEY (DEPT_ID) REFERENCES AD_DEPARTMENTS (ID);

-- ======================================================
-- ======================================================
-- JALANKAN INI TERLEBIH DAHULU SEBELUM MENJALANKAN QUERY DIATAS
-- 06
ALTER TABLE
    AD_DEPARTMENTS
ADD
    CONSTRAINT AD_DEPARTMENTS_PK PRIMARY KEY (ID);

-- KEMUDIAN BISA JALNKAN INI
-- 08
ALTER TABLE
    AD_DEPARTMENTS
ADD
    CONSTRAINT AD_DEPT_NAME_UK UNIQUE(NAME);

-- ======================================================
-- ======================================================
-- 09
ALTER TABLE
    AD_EXAMS
ADD
    CONSTRAINT AD_EXAMS_PK PRIMARY KEY (ID);

-- PERHATIAN BUAT DULU PRIMARY KEY AD_EXAM_TYPES SEBELUM MENJALANKAN QUERY
-- DIBAWAH
-- 11
ALTER TABLE
    AD_EXAMS
ADD
    CONSTRAINT AD_EXAMS_FK1 FOREIGN KEY (EXAM_TYPE) REFERENCES AD_EXAM_TYPES (TYPE);

-- 12
ALTER TABLE
    AD_EXAMS
ADD
    CONSTRAINT AD_EXAMS_FK2 FOREIGN KEY (COURSE_ID) REFERENCES AD_COURSES (ID);

-- ======================================================
-- ======================================================
-- JALANKAN INI TERLEBIH DAHULU SEBELUM MENJALANKAN QUERY AD_EXAMS_FK1
-- 10
ALTER TABLE
    AD_EXAM_TYPES
ADD
    CONSTRAINT AD_EXAM_TYPES_PK PRIMARY KEY (TYPE);

-- ======================================================
-- ======================================================
-- 13
ALTER TABLE
    AD_EXAM_RESULTS
ADD
    CONSTRAINT AD_EXAM_RESULTS_PK PRIMARY KEY (STUDENT_ID, COURSE_ID, EXAM_ID);

-- 15
ALTER TABLE
    AD_EXAM_RESULTS
ADD
    CONSTRAINT AD_EXAM_RESULTS_FK1 FOREIGN KEY (STUDENT_ID) REFERENCES AD_STUDENTS (ID);

-- 16
ALTER TABLE
    AD_EXAM_RESULTS
ADD
    CONSTRAINT AD_EXAM_RESULTS_FK2 FOREIGN KEY (COURSE_ID) REFERENCES AD_COURSES (ID);

-- 17
ALTER TABLE
    AD_EXAM_RESULTS
ADD
    CONSTRAINT AD_EXAM_RESULT_FK3 FOREIGN KEY (EXAM_ID) REFERENCES AD_EXAMS (ID);

-- ======================================================
-- ======================================================
-- 18
ALTER TABLE
    AD_FACULTY
ADD
    CONSTRAINT AD_FACULTY_PK PRIMARY KEY (ID);

-- 19
ALTER TABLE
    AD_FACULTY
ADD
    CONSTRAINT AD_FACULTY_FK FOREIGN KEY (DEPT_ID) REFERENCES AD_DEPARTMENTS (ID);

-- 20
ALTER TABLE
    AD_FACULTY
ADD
    CONSTRAINT AD_FACULTY_EMAIL_UK UNIQUE(EMAIL);

-- ======================================================
-- ======================================================
-- 21
ALTER TABLE
    AD_PARENT_INFORMATION
ADD
    CONSTRAINT AD_PARENT_INFORMATION_PK PRIMARY KEY (ID);

-- ======================================================
-- ======================================================
-- 14
ALTER TABLE
    AD_STUDENTS
ADD
    CONSTRAINT AD_STUDENTS_PK PRIMARY KEY (ID);

-- 22
ALTER TABLE
    AD_STUDENTS
ADD
    CONSTRAINT AD_STUDENTS_FK FOREIGN KEY (PARENT_ID) REFERENCES AD_PARENT_INFORMATION (ID);

-- 23
ALTER TABLE
    AD_STUDENTS
ADD
    CONSTRAINT AD_STUDENTS_EMAIL_UK UNIQUE(EMAIL);

-- ======================================================
-- ======================================================
-- 24
ALTER TABLE
    AD_STUDENT_ATTENDANCE
ADD
    CONSTRAINT AD_STUDENT_ATTENDANCE_PK PRIMARY KEY (STUDENT_ID, SESSION_ID);

-- 25
ALTER TABLE
    AD_STUDENT_ATTENDANCE
ADD
    CONSTRAINT AD_STUDENT_ATTENDANCE_FK1 FOREIGN KEY (STUDENT_ID) REFERENCES AD_STUDENTS (ID);

-- 26
ALTER TABLE
    AD_STUDENT_ATTENDANCE
ADD
    CONSTRAINT AD_STUDENT_ATTENDANCE_FK2 FOREIGN KEY (SESSION_ID) REFERENCES AD_ACADEMIC_SESSIONS (ID);

-- ======================================================
-- ======================================================
-- 27
ALTER TABLE
    AD_STUDENT_COURSE_DETAILS
ADD
    CONSTRAINT AD_STUDENT_COURSE_PK PRIMARY KEY (STUDENT_ID, COURSE_ID);

-- 28
ALTER TABLE
    AD_STUDENT_COURSE_DETAILS
ADD
    CONSTRAINT AD_STUDENT_COURSE_FK1 FOREIGN KEY (STUDENT_ID) REFERENCES AD_STUDENTS (ID);

-- 29
ALTER TABLE
    AD_STUDENT_COURSE_DETAILS
ADD
    CONSTRAINT AD_STUDENT_COURSE_FK2 FOREIGN KEY (COURSE_ID) REFERENCES AD_COURSES (ID);

-- 30
ALTER TABLE
    AD_FACULTY_COURSE_DETAILS
ADD
    CONSTRAINT AD_FACULTY_COURSE_PK PRIMARY KEY (FACULTY_ID, COURSE_ID);

-- 31
ALTER TABLE
    AD_FACULTY_COURSE_DETAILS
ADD
    CONSTRAINT AD_FACULTY_COURSE_FK1 FOREIGN KEY (FACULTY_ID) REFERENCES AD_FACULTY (ID);

-- 32
ALTER TABLE
    AD_FACULTY_COURSE_DETAILS
ADD
    CONSTRAINT AD_FACULTY_COURSE_FK2 FOREIGN KEY (COURSE_ID) REFERENCES AD_COURSES (ID);

-- ======================================================
-- ======================================================
-- 33
ALTER TABLE
    AD_FACULTY_LOGIN_DETAILS
ADD
    CONSTRAINT AD_FACULTY_LOGIN_PK PRIMARY KEY (FACULTY_ID, LOGIN_DATE_TIME);

-- 34
ALTER TABLE
    AD_FACULTY_LOGIN_DETAILS
ADD
    CONSTRAINT AD_FACULTY_LOGIN_FK FOREIGN KEY (FACULTY_ID) REFERENCES AD_FACULTY (ID);

-- ======================================================
-- Melihat detail CONSTRAINT TIAP TIAP TABLE
-- ======================================================
-- ================================================
-- 01 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_ACADEMIC_SESSIONS';

-- ================================================
-- 02 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_COURSES';

-- ================================================
-- 03 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_DEPARTMENTS';

-- ================================================
-- 04 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_EXAMS';

-- ================================================
-- 05 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_EXAM_TYPES';

-- ================================================
-- 06 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_EXAM_RESULTS';

-- ================================================
-- 07 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_FACULTY';

-- ================================================
-- 08 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_PARENT_INFORMATION';

-- ================================================
-- 09 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_STUDENTS';

-- ================================================
-- 10 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_STUDENT_ATTENDANCE';

-- ================================================
-- 11 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_STUDENT_COURSE_DETAILS';

-- ================================================
-- 12 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_FACULTY_COURSE_DETAILS';

-- ================================================
-- 13 =============================================
SELECT
    *
FROM
    user_constraints
WHERE
    table_name = 'AD_FACULTY_LOGIN_DETAILS';

-- 2. Alter the table AD_FACULTY_LOGIN_DETAILS and specify a default value for the column LOGIN_DATE_TIME of SYSDATE.
ALTER TABLE
    AD_FACULTY_LOGIN_DETAILS
MODIFY
    (LOGIN_DATE_TIME TIMESTAMP DEFAULT SYSDATE);

-- 3.	Set the AD_PARENT_INFORMATION table to a read-only status.
ALTER TABLE
    AD_PARENT_INFORMATION READ ONLY;

-- ================================================
-- ================================================
-- ================================================
-- ================================================
-- ================================================
-- Exercise 3: Creating Composite Primary, Foreign and Unique Keys
-- 1. Create the DEPT table with the following structure:
CREATE TABLE DEPT(
    dept_id number(8),
    dept_name varchar2(30),
    loc_id number(4),
    CONSTRAINT dept_loc_pk PRIMARY KEY(dept_id, loc_id)
);

-- 2. Create the SUPPLIERS and PRODUCTS table with the following structure:
CREATE TABLE SUPPLIERS (
    sup_id NUMBER(15),
    sup_name VARCHAR2(45),
    contact_name VARCHAR2(45),
    CONSTRAINT sup_id_name_pk PRIMARY KEY (sup_id, sup_name)
);

CREATE TABLE PRODUCTS (
    product_id numeric(10),
    sup_id NUMBER(15) NOT NULL,
    sup_name VARCHAR2(45) NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (product_id),
    CONSTRAINT sup_comp_fk FOREIGN KEY (sup_id, sup_name) REFERENCES suppliers(sup_id, sup_name)
);

-- 3. Create the DEPT_SAMPLE table with the following structure:
CREATE TABLE DEPT_SAMPLE (
    dept_id NUMBER(8),
    dept_name VARCHAR2(30),
    loc_id NUMBER(4),
    CONSTRAINT dept_det_uk UNIQUE (dept_id, dept_name)
);