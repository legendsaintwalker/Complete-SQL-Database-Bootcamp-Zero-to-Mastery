/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, count(hire_date)
from "public"."employees"
where hire_date =  '1986-06-26'
group by hire_date

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT  a.emp_no, count( b.title ) as "amount of title"
FROM "public"."employees" as a
join "public"."titles" as b using(emp_no)
where extract(year from a.hire_date) > '1991'
group by a.emp_no
order by a.emp_no


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/
SELECT  b.dept_name, a.first_name, a.last_name, c.from_date, c.to_date
from "public"."employees" as a 
join "public"."dept_emp" as c using(emp_no)
join "public"."departments" as b using (dept_no)
where b.dept_no = 'd005'
group by b.dept_name, a.first_name, a.last_name, c.from_date, c.to_date; 
