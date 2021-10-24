# BootCamp-Mod-7-Pewlett-Hackard-Analysis
Performing analysis on Pewlett-Hackard employee database to determine the number of people within their company who will be retiring in the near future and what positions will need to be filled.


## Overview of Project

### Purpose
The purpose of this analysis is to use SQL to create a database of Pewlett-Hackard employees to help Bobby, an HR analyist at Pewlett-Hackard, to determine which employees are eligible for Pewlett-Hackard's retirement package and which positions will need to be filled.


## Analysis and Results
### Data
- Pewlett-Hackard previously has been mainly using Excel and VBA to store and manipulate their data. Therefore, 6 CSV were provided with all of the employee data for the company.

### Initial Set Up of the Database
- First, each file was opened to determine what type of data was stored in each file and how they interrelate to each other, such as:
  * What columns do the 6 CSV tables have in common
  * How can the tables be combined together to run queries and filter the employee data
  * Determining Primary Keys for each of the 6 CSV tables
  * Determining Foreign Keys for each of the 6 CSV tables

- Then, each table was created in SQL and the data was imported into each table.
  * departments table
  * dept_emp table
  * dept_managers table
  * employees table
  * salaries table
  * titles table
  * An example of this is the dept_emp table shown below:
 
<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/create_dept_emp.png"width="529" height="471"/></p>

### Requirements for Retirement
- Bobby's boss determined the requirements for retirement:
  * Anyone born between 1952 and 1955
  * Anyone hired between 1985 and 1988
  * They must be a current employee

### Adding new tables to refine data
- retirement_info table
  * A new table to determine employee members who were born between 1952 and 1955 and were hired between 1985 and 1988.
- current_emp table
  * A new table to hold only the names and employee number of current employees, since the data included all current and former employees.
- emp_info table
  * A new table to hold all of the information about each employee joined from all of the tables.
- retire_titles table
  * A new table to hold the employee number, name, and title of all employees eligible for retirement.
- unique_titles table
  * A new table that takes the information from the retire_tables table and only keeps the latest employee information since the retire_titles table has multiple entries for the same employee because of promotions and title changes through the year. 
- retiring_titles table
  * A new table to count the number of employees with each title who are eligible for retirement.
- mentor_list table
  * A new table to filter employees who are current employees and were born in 1965 to create a list of employees who eligible to be mentors for the mentorship program.



### Results
- The unique_titles table contains 90,398 rows, showing that there are 90,398 employees eligible for retirement.
- Before creating the unique_title table from the retire_titles, retire_titles contained 147,942 rows. This shows that 57,544 rows were duplicates, which shows that at least half of the employees eligible for retirement either had a promotion or title change.

<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/retire_titles_table.png"width="548.8" height="257.6"/>&nbsp;<img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/unique_titles_table.png"width="415.2" height="254.4"/></p>

- The title with the largest number of employees eligible for retirement is Senior Engineer with 29,414 employees.
  * The title with the second largest number of employees eligible for retirement is Senior Staff with 28,255 employees.
- The title with the smallest number of employees eligible for retirement is Manager.
  * Showing that employees who are Mangers are mostly younger than retirement age, since only 2 of the 9 department managers are eligible for retirement.
<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/retiring_titles_table.png" width="353" height="281"/></p>

- The mentor_list table contains 1,549 rows, showing that there are 1,549 people eligible to be mentors.
  * Showing that there is no way for there to be a one-to-one mentor to new employee assignment for all of the positions that will need to be filled.
<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/mentor_list_table.png"width="492" height="214.7"/></p>


## Summary
- There are 90,398 roles that potential need to be filled very soon.
  * Combined, Senior employees make up 64% of those eligible for retirement. 
  * Development and Production have the highest counts for employees eligible for retirement and making up about 50% of the total number of employees who are eligible for retirement.

<p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/retiring_by_title_by_percentage.png"width="651.2" height="310.4"/>&nbsp;<img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/retiring_by_dept.png"width="273.6" height="399.2"/></p>
 
- My suggestion is to open up eligibility to more than just those born in 1965, because there does not seem to be enough mentors for the amount of new employees that need to be hired.
  * While the department counts for those eligible to be mentors is roughly proportional to the department counts for those eligible to retire, there are other aspects that need to be considered.
    - The title counts for those eligible to be mentors does not proportionately match the title counts for those eligible to retire.
    - There are no managers eligible to be mentors.
    - Senior Staff are 31% of those to retire but are only 18% of those eligible to be mentors.

<p align="center"><p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/mentor_list_by_title.png"width="308" height="346"/>&nbsp;<img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/mentor_list_by_dept.png"width="273.6" height="398.4"/></p>

<p align="center"><p align="center"><img src="https://github.com/M-Outlaw/BootCamp-Mod-7-Pewlett-Hackard-Analysis/blob/main/Graphics/mentor_list_by_title_percentage.png"width="632.8" height="288.8"/></p>
