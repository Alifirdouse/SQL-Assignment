#  1. Create new database & employee table (based on give sample data)
# create employee table with primary key (EmployeeID)

create database employee_db;
use employee_db;

create table employee_tb 
(emp_id	int primary key,
first_name	varchar(10),
last_name	varchar(10),
salary	int,
joining_date	datetime,
department	varchar(20),
gender	char(8),
job_title varchar(20))
;

select*from employee_tb;

#  2.  Insert sample data into the table. 

INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    101, 'Malli', 'G', 50000, '2020-09-20 11:16:00', 'IT', 'Male', 'Software Engineer'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    102, 'Venu', 'S', 55000, '2024-10-05 07:15:00', 'IT', 'Male', 'Software Engineer'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    103, 'Anjali', 'R', 62000, '2024-08-15 09:45:00', 'HR', 'Female', 'HR'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    104, 'Rajesh', 'K', 48000, '2023-07-10 14:10:00', 'Finance', 'Male', 'Finance'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    105, 'Priya', 'M', 53000, '2024-06-25 18:30:00', 'IT', 'Female', 'Software Engineer'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    106, 'Arjun', 'B', 67000, '2024-09-05 12:25:00', 'Operation', 'Male', 'Unknown'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    107, 'Sneha', 'T', 60000, '2024-05-19 08:20:00', 'Marketing', 'Female', 'Marketing Executive'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    108, 'Vikram', 'P', 58000, '2024-04-30 11:16:00', 'IT', 'Male', 'Software Engineer'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    109, 'Kavitha', 'L', 50000, '2023-03-05 11:05:00', 'HR', 'Female', 'HR Manager'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    110, 'Suresh', 'N', 62000, '2024-02-28 15:40:00', 'Finance', 'Male', 'Financial Analyst'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    111, 'Deepak', 'J', 65000, '2022-09-22 16:30:00', 'Operations', 'Male', 'Unknown'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    112, 'Roshini', 'D', 52000, '2022-11-12 10:12:00', 'IT', 'Female', 'Software Engineer'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    113, 'Sameer', 'C', 70000, '2024-10-18 13:45:00', 'Marketing', 'Male', 'Marketing Executive'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    114, 'Pooja', 'V', 56000, '2024-07-07 19:10:00', 'HR', 'Female', 'HR Manager'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    115, 'Harish', 'S', 48000, '2024-06-02 06:35:00', 'Finance', 'Male', 'Finance Analyst'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    116, 'Asha', 'Y', 51000, '2024-05-21 14:22:00', 'IT', 'Female', 'Software Engineer'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    117, 'Kiran', 'Z', 62000, '2021-04-18 18:55:00', 'Operation', 'Male', 'Unknown'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    118, 'Divya', 'M', 58000, '2024-03-29 08:11:00', 'Marketing', 'Female', 'Marketing Executive'
);

INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    119, 'Sunil', 'B', 60000, '2024-02-17 12:47:00', 'HR', 'Male', 'HR Manager'
);
INSERT INTO employee_tb (
    emp_id, first_name, last_name, salary, joining_date, department, gender, job_title
) VALUES (
    120, 'Meena', 'A', 49000, '2020-01-05 16:25:00', 'IT', 'Female', 'Software Engineer'
);
# 3. Write a query to create a clone of an existing table using Create Command.


#  4. Write a query to get all employee detail from "employee" table

select * from employee_tb;

 # 5. Select only top 1 record from employee table

SELECT * FROM employee_tb
ORDER BY emp_id asc
LIMIT 1;

 #6. Select only bottom 1 record from employee table

SELECT * FROM employee_tb
ORDER BY emp_id DESC
LIMIT 1;

 # 7. How to select a random record from a table? 

select * from employee_tb
order by  rand()
limit 1 ;

#8. Write a query to get

SELECT 
# “first_name” in upper case as "first_name_upper"
    UPPER(first_name) AS first_name_upper,
#‘first_name’ in lower case as ‘first_name_lower”    
    LOWER(first_name) AS first_name_lower,
#Create a new column “full_name” by combining “first_name” &“last_name” with space as a separator.
    CONCAT(first_name, ' ', last_name) AS full_name,
#Add 'Hello ' to first_name and display result.
    CONCAT('Hello ', first_name) AS greeting
FROM employee_tb;

#9. Select the employee details of

#Whose “first_name” is ‘Malli’
SELECT * FROM employee_tb
WHERE first_name = 'Malli';

#Whose “first_name” present in ("Malli","Meena", "Anjali")
SELECT * FROM employee_tb
WHERE first_name IN ('Malli', 'Meena', 'Anjali');

#Whose “first_name” not present in ("Malli","Meena", "Anjali")
SELECT * FROM employee_tb
WHERE first_name NOT IN ('Malli', 'Meena', 'Anjali');

#Whose “first_name” starts with “v”
SELECT * FROM employee_tb
WHERE first_name LIKE 'v%';

#Whose “first_name” ends with “i”
SELECT * FROM employee_tb
WHERE first_name LIKE '%i';

#Whose “first_name” contains “o”
SELECT * FROM employee_tb
WHERE first_name LIKE '%o%';

#Whose "first_name" start with any single character between 'm-v'
SELECT * FROM employee_tb
WHERE LOWER(LEFT(first_name, 1)) BETWEEN 'm' AND 'v';

#Whose "first_name" not start with any single character between 'm-v'
SELECT * FROM employee_tb
WHERE LOWER(LEFT(first_name, 1)) NOT BETWEEN 'm' AND 'v';

#Whose "first_name" start with 'M' and contain 5 letters
SELECT * FROM employee_tb
WHERE first_name LIKE 'M____';

#10. Write a query to get all unique values of"department" from the employee table.
SELECT DISTINCT department FROM employee_tb;

#11. Query to check the total records present in a table.
select count(*) as total_records from employee_tb;

#12. Write down the query to print first letter of a Name in Upper Case and all other letter in Lower Case.
SELECT CONCAT(UCASE(LEFT(first_name, 1)), LCASE(SUBSTRING(first_name, 2))) AS formatted_name
FROM employee_tb;

#13. Write down the query to display all employee name in one cell separated by ',' ex:-"Vikas, nikita, Ashish, Nikhil , anish"(EmployDetail table).
SELECT GROUP_CONCAT(first_name SEPARATOR ', ') AS all_names
FROM employee_tb;

 #14. Query to get the below values of "salary" from employee table

SELECT 
#Lowest salary
MIN(salary) AS lowest_salary,
#Highest salary
MAX(salary) AS highest_salary,
#Average salary
AVG(salary) AS average_salary,
#Highest salary - Lowest salary as diff_salary
MAX(salary) - MIN(salary) AS diff_salary,
#% of difference between Highest salary and lowest salary. (sample outputformat: 10.5%)
CONCAT(ROUND(((MAX(salary) - MIN(salary)) * 100.0 / MAX(salary)), 2), '%') AS percent_difference
FROM employee_tb;

#15. Select “first_name” from the employee table after removing white spaces from 

#Right side spaces
SELECT RTRIM(first_name) AS first_name_no_right_space
FROM employee_tb;

#Left side spaces
SELECT LTRIM(first_name) AS first_name_no_left_space
FROM employee_tb;

#Both right & left side spaces
SELECT TRIM(first_name) AS first_name_trimmed
FROM employee_tb;

#16. Query to check no.of records present in a table where employees having 50k salary.
SELECT COUNT(*) AS employee_count
FROM employee_tb
WHERE salary = 50000;

#17. Find the most recently hired employee in each department.
SELECT *
FROM employee_tb e
WHERE joining_date = (
    SELECT MAX(joining_date)
    FROM employee_tb
    WHERE department = e.department
);

## Case When Then End Statement Queries

#1.Display first_name and gender as M/F.(if male then M, if Female then F)
SELECT 
    first_name,
    CASE 
        WHEN gender = 'Male' THEN 'M'
        WHEN gender = 'Female' THEN 'F'
        ELSE 'Other'
    END AS gender_short
FROM employee_tb;

#2. Display first_name, salary, and a salary category.
# (If salary is below 50,000, categorize as 'Low'; between 50,000 and 60,000 as 'Medium'; above 60,000 as 'High')

SELECT 
    first_name,
    salary,
    CASE 
        WHEN salary < 50000 THEN 'Low'
        WHEN salary BETWEEN 50000 AND 60000 THEN 'Medium'
        ELSE 'High'
    END AS salary_category
FROM employee_tb;

#3.Display first_name, department, and a department classification. 
#(If department is 'IT', display 'Technical'; if 'HR', display 'Human Resources'; if 'Finance', display 'Accounting'; otherwise, display 'Other')

SELECT 
    first_name, 
    department,
    CASE 
        WHEN department = 'IT' THEN 'Technical'
        WHEN department = 'HR' THEN 'Human Resources'
        WHEN department = 'Finance' THEN 'Accounting'
        ELSE 'Other'
    END AS department_classification
FROM employee_tb;

#4.Display first_name, salary, and eligibility for a salary raise.
# (If salary is less than 50,000, mark as 'Eligible for Raise'; otherwise, 'Not Eligible')

SELECT 
    first_name, 
    salary,
    CASE 
        WHEN salary < 50000 THEN 'Eligible for Raise'
        ELSE 'Not Eligible'
    END AS raise_eligibility
FROM employee_tb;

#5.Display first_name, joining_date, and employment status. 
#(If joining date is before '2022-01-01', mark as 'Experienced'; otherwise, 'New Hire')

SELECT 
    first_name, 
    joining_date,
    CASE 
        WHEN joining_date < '2022-01-01' THEN 'Experienced'
        ELSE 'New Hire'
    END AS employment_status
FROM employee_tb;

#6.Display first_name, salary, and bonus amount. 
#(If salary is above 60,000, add10% bonus; if between 50,000 and 60,000, add 7%; otherwise, 5%)

SELECT 
    first_name, 
    salary,
    CASE 
        WHEN salary > 60000 THEN salary * 0.10
        WHEN salary BETWEEN 50000 AND 60000 THEN salary * 0.07
        ELSE salary * 0.05
    END AS bonus_amount
FROM employee_tb;

#7.Display first_name, salary, and seniority level.
#(If salary is greater than 60,000, classify as 'Senior'; between 50,000 and 60,000 as 'Mid-Level'; below 50,000 as 'Junior')

SELECT 
    first_name, 
    salary,
    CASE 
        WHEN salary > 60000 THEN 'Senior'
        WHEN salary BETWEEN 50000 AND 60000 THEN 'Mid-Level'
        ELSE 'Junior'
    END AS seniority_level
FROM employee_tb;

#8. Display first_name, department, and job level for IT employees.
#(If department is 'IT' and salary is greater than 55,000, mark as 'Senior IT Employee'; otherwise, 'Other').

SELECT 
    first_name,
    department,
    CASE 
        WHEN department = 'IT' AND salary > 55000 THEN 'Senior IT Employee'
        ELSE 'Other'
    END AS job_level
FROM employee_tb
WHERE department = 'IT';

#12. Display first_name, joining_date, and recent joiner status. 
#(If an employee joined after '2024-01-01', label as 'Recent Joiner'; otherwise, 'Long-Term Employee')

SELECT 
    first_name,
    joining_date,
    CASE 
        WHEN joining_date > '2024-01-01' THEN 'Recent Joiner'
        ELSE 'Long-Term Employee'
    END AS joiner_status
FROM employee_tb;

 #13. Display first_name, joining_date, and leave entitlement.
 #(If joined before '2021-01-01', assign '10 Days Leave'; between '2021-01-01' and '2023-01-01', assign '20 Days Leave'; otherwise, '25 Days Leave')

SELECT 
    first_name,
    joining_date,
    CASE 
        WHEN joining_date < '2021-01-01' THEN '10 Days Leave'
        WHEN joining_date BETWEEN '2021-01-01' AND '2023-01-01' THEN '20 Days Leave'
        ELSE '25 Days Leave'
    END AS leave_entitlement
FROM employee_tb;

#14. Display first_name, salary, department, and promotion eligibility. 
#(If salary is above 60,000 and department is 'IT', mark as 'Promotion Eligible'; otherwise, 'Not Eligible')

SELECT 
    first_name,
    salary,
    department,
    CASE 
        WHEN salary > 60000 AND department = 'IT' THEN 'Promotion Eligible'
        ELSE 'Not Eligible'
    END AS promotion_status
FROM employee_tb;

#15. Display first_name, salary, and overtime pay eligibility.
# (If salary is below 50,000, mark as 'Eligible for Overtime Pay'; otherwise, 'Not Eligible')

SELECT 
    first_name,
    salary,
    CASE 
        WHEN salary < 50000 THEN 'Eligible for Overtime Pay'
        ELSE 'Not Eligible'
    END AS overtime_eligibility
FROM employee_tb;

 #16. Display first_name, department, salary, and job title. 
 #(If department is 'HR' and salary is above 60,000, mark as 'HR Executive'; if department is 'Finance' and salary is above 55,000, mark as 'Finance Manager'; otherwise, 'Regular Employee')

SELECT 
    first_name,
    department,
    salary,
    CASE 
        WHEN department = 'HR' AND salary > 60000 THEN 'HR Executive'
        WHEN department = 'Finance' AND salary > 55000 THEN 'Finance Manager'
        ELSE 'Regular Employee'
    END AS job_title
FROM employee_tb;

#17. Display first_name, salary, and salary comparison to the company average. 
#(If salary is   above the company’s average salary, mark as 'Above Average'; otherwise, 'Below Average')

SELECT 
    first_name,
    salary,
    CASE 
        WHEN salary > (SELECT AVG(salary) FROM employee_tb) THEN 'Above Average'
        ELSE 'Below Average'
    END AS salary_comparison
FROM employee_tb;

#Group by

#1.Write the query to get the department and department wise total(sum) salary,
#   display it in ascending and descending order according to salary. 

select*from employee_tb;

-- Ascending order
SELECT department, SUM(salary) AS total_salary
FROM employee_tb
GROUP BY department
ORDER BY total_salary ASC;

-- Descending order
SELECT department, SUM(salary) AS total_salary
FROM employee_tb
GROUP BY department
ORDER BY total_salary DESC;


 #2.Write down the query to fetch Project name assign to more than one Employee 2.
 SELECT job_title
FROM employee_tb
GROUP BY job_title
HAVING COUNT(DISTINCT emp_id) > 1;

 #3.Write the query to get the department, total no. of departments, total(sum) salary
 #  with respect to department from "employee table" table. 
 SELECT 
  department, 
  COUNT(DISTINCT department) OVER () AS total_departments, 
  SUM(salary) AS total_salary
FROM employee_tb
GROUP BY department;




 #4.Get the department-wise salary details from the "employee table" table: 4.
  SELECT department,  salary
FROM employee_tb
ORDER BY department;
 #What is the average salary? (Order by salary ascending)
 SELECT AVG(salary) AS average_salary
FROM employee_tb
ORDER BY average_salary ASC;

 #What is the maximum salary? (Order by salary ascending)
 SELECT MAX(salary) AS max_salary
FROM employee_tb
ORDER BY max_salary ASC;

#5. Display department-wise employee count and categorize based on size. (If a department
#   has more than 5 employees, label it as 'Large'; between 3 and 5 as 'Medium'; otherwise,'Small')
 SELECT 
  department,
  COUNT(*) AS employee_count,
  CASE 
    WHEN COUNT(*) > 5 THEN 'Large'
    WHEN COUNT(*) BETWEEN 3 AND 5 THEN 'Medium'
    ELSE 'Small'
  END AS department_size
FROM employee_tb
GROUP BY department;
     
 #6. Display department-wise average salary and classify pay levels. (If the average salary in a
 #    department is above 60,000, label it as 'High Pay'; between 50,000 and 60,000 as 'Medium Pay'; otherwise, 'Low Pay').
 SELECT 
  department,
  AVG(salary) AS avg_salary,
  CASE 
    WHEN AVG(salary) > 60000 THEN 'High Pay'
    WHEN AVG(salary) BETWEEN 50000 AND 60000 THEN 'Medium Pay'
    ELSE 'Low Pay'
  END AS pay_level
FROM employee_tb
GROUP BY department;

 #7. Display department, gender, and count of employees in each category. (Group by
 #   department and gender, showing total employees in each combination)
 SELECT 
  department, 
  gender, 
  COUNT(*) AS employee_count
FROM employee_tb
GROUP BY department, gender;

 #8. Display the number of employees who joined each year and categorize hiring trends. (If a
 #   year had more than 5 hires, mark as 'High Hiring'; 3 to 5 as 'Moderate Hiring'; otherwise,'Low Hiring')
 SELECT 
  EXTRACT(YEAR FROM joining_date) AS join_year,
  COUNT(*) AS hires,
  CASE 
    WHEN COUNT(*) > 5 THEN 'High Hiring'
    WHEN COUNT(*) BETWEEN 3 AND 5 THEN 'Moderate Hiring'
    ELSE 'Low Hiring'
  END AS hiring_trend
FROM employee_tb
GROUP BY EXTRACT(YEAR FROM joining_date)
ORDER BY join_year;

select* from employee_tb;
 #9. Display department-wise highest salary and classify senior roles. (If the highest salary in a
 #   department is above 70,000, label as 'Senior Leadership'; otherwise, 'Mid-Level')
 SELECT 
  department,
  MAX(salary) AS highest_salary,
  CASE 
    WHEN MAX(salary) > 70000 THEN 'Senior Leadership'
    ELSE 'Mid-Level'
  END AS role_level
FROM employee_tb
GROUP BY department;

 #10. Display department-wise count of employees earning more than 60,000. (Group
 #     employees by department and count those earning above 60,000, labeling departments
 #    with more than 2 such employees as 'High-Paying Team')
 
SELECT 
  department,
  COUNT(*) AS high_earners,
  CASE 
    WHEN COUNT(*) > 2 THEN 'High-Paying Team'
    ELSE 'Normal Team'
  END AS team_label
FROM employee_tb
WHERE salary > 60000
GROUP BY department;
 
# Date time related queries
 select*from employee_tb;
#1. Query to extract the below things from joining_date column. (Year, Month, Day, Current Date)
SELECT 
  emp_id,
  joining_date,
  YEAR(joining_date) AS join_year,
  MONTH(joining_date) AS join_month,
  DAY(joining_date) AS join_day
 # CURDATE() AS current_date
FROM employee_tb;



#2. Create two new columns that calculate the difference between joining_date and the
#   current date. One column should show the difference in months, and the other should   show the difference in days
 SELECT 
  emp_id,
  joining_date,
  TIMESTAMPDIFF(MONTH, joining_date, CURDATE()) AS diff_in_months,
  DATEDIFF(CURDATE(), joining_date) AS diff_in_days
FROM employee_tb;

#3. Get all employee details from the employee table whose joining year is 2020. 
SELECT *
FROM employee_tb
WHERE YEAR(joining_date) = 2020;

#4. Get all employee details from the employee table whose joining month is Feb. 
SELECT *
FROM employee_tb
WHERE MONTH(joining_date) = 2;

#5. Get all employee details from employee table whose joining date between "2021-01-01" and "2021-12-01"
SELECT *
FROM employee_tb
WHERE joining_date BETWEEN '2021-01-01' AND '2021-12-01';
 
# Partitioning Data

#1. Assign a row number to each employee within their department based on salary in descending order.
SELECT 
  emp_id,
  department,
  salary,
  ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employee_tb;

#2. Rank employees within each department based on salary using RANK().
 SELECT 
  emp_id,
  department,
  salary,
  RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank_in_dept
FROM employee_tb;

#3. Rank employees within each department based on salary using DENSE_RANK()
SELECT 
  emp_id,
  department,
  salary,
  DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank_in_dept
FROM employee_tb;
 
#4. Find the highest-paid employee in each department using RANK(). 
 SELECT *
FROM (
  SELECT 
    emp_id,
    department,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
  FROM employee_tb
) AS ranked
WHERE salary_rank = 1;

#5. ind the second highest-paid employee in each department using RANK().
 SELECT *
FROM (
  SELECT 
    emp_id,
    department,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
  FROM employee_tb
) AS ranked
WHERE salary_rank = 2;

#6. Rank employees based on their years of experience within each department. 
 SELECT 
  emp_id,
  department,
  joining_date,
  TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) AS years_of_experience,
  RANK() OVER (PARTITION BY department ORDER BY TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) DESC) AS exp_rank
FROM employee_tb;

#7. Find the employee with the earliest join date in each department using RANK().
 SELECT *
FROM (
  SELECT 
    emp_id,
    department,
    joining_date,
    RANK() OVER (PARTITION BY department ORDER BY joining_date ASC) AS join_rank
  FROM employee_tb
) AS ranked
WHERE join_rank = 1;

#Complex Ranking Scenarios

#1.Find the employees who earn more than the average salary of their department. 
SELECT *
FROM employee_tb e
WHERE salary > (
    SELECT AVG(salary)
    FROM employee_tb
    WHERE department = e.department
);

# 2.Rank employees within each job title in every department based on salary. 
SELECT 
  emp_id,
  department,
  job_title,
  salary,
  RANK() OVER (PARTITION BY department, job_title ORDER BY salary DESC) AS rank_by_salary
FROM employee_tb;

# 3.Find the top 3 highest-paid employees in each department. 
SELECT *
FROM (
  SELECT 
    emp_id,
    department,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
  FROM employee_tb
) AS ranked
WHERE salary_rank <= 3;

# 4.Find employees who belong to the top 10% earners within their department using PERCENT_RANK().
SELECT *
FROM (
  SELECT 
    emp_id,
    department,
    salary,
    PERCENT_RANK() OVER (PARTITION BY department ORDER BY salary DESC) 
  FROM employee_tb
) AS ranked
WHERE percent_rank <= 0.10;
 
#5. Assign row numbers to employees based on their joining year using PARTITION BY YEAR(join_date).
SELECT 
  emp_id,
  joining_date,
  ROW_NUMBER() OVER (PARTITION BY YEAR(joining_date) ORDER BY joining_date) AS row_num_in_year
FROM employee_tb;
 
#6. Rank employees based on the number of projects handled within each department. 
SELECT 
  emp_id,
  department,
  job_title,
  RANK() OVER (PARTITION BY department ORDER BY job_title DESC) AS project_rank
FROM employee_tb;

#7. Find employees who are the only ones in their department (departments with only one employee).
 SELECT *
FROM employee_tb
GROUP BY department
HAVING COUNT(*) = 1;

#8. Find the highest-paid employee in each job role within a department. 
SELECT *
FROM (
  SELECT 
    emp_id,
    department,
    job_title,
    salary,
    RANK() OVER (PARTITION BY department, job_title ORDER BY salary DESC) AS salary_rank
  FROM employee_tb
) AS ranked
WHERE salary_rank = 1;

#9. Find employees who have been working in the company the longest in each department.
SELECT *
FROM (
  SELECT 
    emp_id,
    department,
    joining_date,
    RANK() OVER (PARTITION BY department ORDER BY joining_date ASC) AS seniority_rank
  FROM employee_tb
) AS ranked
WHERE seniority_rank = 1;
