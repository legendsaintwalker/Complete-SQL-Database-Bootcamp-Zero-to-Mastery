/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT age(birth_date) from "public"."employees"
where (
    EXTRACT ('year' from age(birth_date) )
) > 60;


/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT count(emp_no) from "public"."employees"
where extract ('month' from "hire_date") = 02;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT count(emp_no) from "public"."employees"
where extract ('month' from "hire_date") = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT * FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT count(orderid) from "public"."orders"
where EXTRACT ( month from orderdate ) = 01;

