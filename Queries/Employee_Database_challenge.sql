-- Deliverable 1: The Number of Retiring Employees by Title
-- 1) Retrieve the emp_no, first_name, and last_name from the Employees table.
SELECT emp_no,
first_name,
last_name
FROM employees;

-- 2) Retrieve the title, from_date, and to_date from the Titles table.
SELECT title,
from_date,
to_date
FROM titles;

-- 3- 6) Create the new retirement titles table using the INTO clause and filtering on birth_date.
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    ti.title,
    ti.from_date,
    ti.to_date
INTO retire_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- 7) Confirm the retirement title table is what we expected
SELECT * FROM retire_titles;

-- 8-13) Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
    rt.title
INTO unique_titles
FROM retire_titles as rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- 14) Confirm the unique titles table is what we expected
SELECT * FROM unique_titles;

-- 15-19) Use GROUP BY with orderby to count the number of employees elegable for retirement by title
SELECT COUNT(ut.title), 
	title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- 20) Confirm the retiring titles table is what we expected
SELECT * FROM retiring_titles;


-- Deliverable 2: The Employees Eligible for the Mentorship Program
-- 1) Retrieve the emp_no, first_name, last_name, and birth_date from the employees table.
SELECT emp_no,
    first_name,
    last_name,
    birth_date
FROM employees;

-- 2) Retrieve the from_date and to_date from the department employees table.
SELECT from_date,
    to_date
FROM dept_emp;

-- 3) Retrieve the titles from the titles table
SELECT title FROM titles;

-- 4-10) Use Dictinct with joins and Orderby to get unique employees who are 
-- eligible for the mentorship program based on their date of birth and that 
-- they are a current employee
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentor_list
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE de.to_date = ('9999-01-01')
and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

-- Confirm the mentorship eligibility table is what we expected
SELECT * FROM mentor_list;


-- Deliverable 3
-- 3a) How many roles will need to be filled as the "silver tsunami" begins to make an impact?
SELECT COUNT(ut.title) FROM unique_titles as ut

-- 3b) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
