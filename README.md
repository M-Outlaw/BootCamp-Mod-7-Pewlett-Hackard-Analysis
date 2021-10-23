# BootCamp-Mod-7-Pewlett-Hackard-Analysis
Performing analysis on Pewlett-Hackard employee database to determine the number of people within their company will be retiring in the near future and what positions will need to be filled.

## Overview of Project

### Purpose
The purpose of this analysis is to use SQL to create database of Pewlett-Hackard employees to help Bobby, an HR analyist at Pewlett-Hackard, to determine which employees are eligable for Pewlett-Hackard's retirement package and which positions will need to be filled.

## Analysis and Results
### Data
- Pewlett-Hackard previously has been mainly using Excell and VBA to store and manipulate their data. Therefore, 6 CSV were provided with all of the employee data for the company.


### Initial set up of the database
- First, each file was opened to determine what type of data was stored in each file and how they interrelate to each other, such as:
  * What columns do the 6 CSV tables have in common
  * How can the tables be combined together to run queires and filter the employee data
  * Determining Primary Keys for each of the 6 CSV tables
  * Determining Foreign Keys for each of the 6 CSV tables

- Then, each table was created in SQL and the data was imported into each table.
  * deptartments table
  * dept_emp table
  * dept_managers table
  * employees table
  * salaries table
  * titles table
  * An example of this is the dept_emp table shown below:
 
<p align="center"><img src=""/></p>

### Requirements for Retirement
- Bobby's boss determined the requiremets for retirement:
  * Anyone born between 1952 and 1955
  * Anyone hired between 1985 and 1988
  * They must be a current employee

### Adding new tables to refine data
- retirement_info table
  * A new table to determine employee members who were born between 1952 and 1955 and were hired between 1985 and 1988.
- current_emp table
  * A new table to hold only the names and employee number of current employess, since the data included all current and former employees.
- emp_info table
  * A new table to hold all of the information about each employee joined from all of the tables.
- retire_titles table
  * A new table to hold the employee number, name, and title of all employees eligable for retirement.
- unique_titles table
  * A new table that takes the information from the retire_tables table and only keeps the latest employee information since the retire_titles table has mulitple entries for the same employee because of promotions and title changes through the year.
- retiring_titles table
  * A new table to count the number of employees with each title who are eligable for retirement.
- mentor_list table
  * A new table to filter employees who are current employees and were born in 1965 to create a list of employees who elible to be mentors for the mentorship program.



<p align="center"><img src="" width="301.6" height="205.6"/>&nbsp;<img src="" width="301.6" height="205.6"/></p>



### Results
- The unique_titles table contains 90,398 rows, showing that there are 90,398 employess eligible for retirement.
- Before creating the uniqu_title table from the retire_titles, retire_titles contained 147,942 rows. This shows that 57,544 rows were duplicates, which shoes that at least half of the employees eligible for retirement either had a promotion or title change.
- The title with the largest number of employees eligible for retirement is Senior Engineer with 29,414 employees.
  * The title with the second largest number of employees eligible for retirement is Senior Staff with 28,255 employees.
  * Combined, Senior employees make up 64% of those eligible for retirement.
- The title with the smallest number of employees eligible for retirement is Manager.
  * Showing that employees who are Mangers are mostly younger than retirement age, since only 2 of the 9 department managers are eligible for retirement.
- The mentor_list table contains 1,549 rows, showing that there are 1,549 people eligible to be mentors.
  * Showing that there is no way for there to be a one-to-one mentor to new employee assignment for all of the postions that will need to be filled.
- The title counts for those eligable to be mentors does not proportionately match the title counts for those eligable to retire.
 * There are no managers eligible to be mentors.
 * Senior Staff are 31% of those to retire but are only 18% of those eligable to be mentors.
- The department counts for those eligable to be mentors roughly proportionately matches the department counts for those eligable to retire

## Summary
- There are 90,398 roles that potential need to be filled very soon.
 * Mostly from senior employees.
- While the mentor list is roughy proportional to the retirement list per department, the mentor list is not proportional to the retirement list per title. Also, there are 

