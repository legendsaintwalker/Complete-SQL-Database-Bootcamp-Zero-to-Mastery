/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
select first_name, last_name from "public"."employees"
order by first_name, last_name desc 
;


/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
select age(birth_date) from "public"."employees"
order by age(birth_date);


/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
select * from "public"."employees"
where first_name ilike 'K%'
order by hire_date;
