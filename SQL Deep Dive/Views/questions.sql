/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

create view "90-95" as 

select emp_no, extract(year from hire_date)
from employees
where 
    (extract(year from hire_date)) >= 1990 and 
    (extract(year from hire_date))  <= 1995
    group by emp_no 
    order by emp_no;
-- ...

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

create view  as 
select e.emp_no, s.salary
from employees as e 
join salaries as s using (emp_no)
where s.salary > 80000 
group by e.emp_no, s.salary
order by emp_no; 
-- ...
