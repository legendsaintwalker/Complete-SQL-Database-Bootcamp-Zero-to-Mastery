
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select a.firstname, a.lastname, a.state , b.orderid 
from "public"."customers" as a 
inner join "public"."orders" as b on a.customerid = b.customerid
where state = 'OH' or state = 'NY' or state = 'OR'
order by orderid;


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
select p.prod_id, p.title, i.quan_in_stock
from "public"."products" as p 
inner join "public"."inventory" as i on i.prod_id = p.prod_id


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

select * from a.emp_no, a.first_name, 
a.last_name, 
b.dept_name, c.dept_no
from "public"."employees" as a ,
inner join "public"."dept_emp" as b on b.emp_no = a.emp_no
inner join "public"."departments" as c on c.dept_no = b.dept_no


