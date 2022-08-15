
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/
select e.first_name, e.last_name, e.hire_date, e.emp_no, count(t.title) as "t.title_no"
from "public"."employees" as e 
inner join "public"."titles" as t on t.emp_no = e.emp_no
where  extract( year from e.hire_date ) > '1991' 
group by e.first_name, e.last_name, e.hire_date, e.emp_no 
having count(t.title) > 2
order by emp_no




/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
from "public"."employees" as e 
join "public"."salaries" as s  using (emp_no)
join "public"."dept_emp" as d using (emp_no)
join "public"."departments" as de using (dept_no)
where de.dept_no = 'd005'
group by  e.emp_no
having count(s.from_date) > 15
order by e.emp_no


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

select e.emp_no, count(d.dept_no) as "no_of_dept"
from "public"."employees" as e 
join "public"."dept_emp" as d using (emp_no)
join "public"."departments" as de using (dept_no)
group by e.emp_no
having count(d.dept_no) > 1
order by e.emp_no 



