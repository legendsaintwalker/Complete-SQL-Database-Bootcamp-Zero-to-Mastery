/* TRY TO WRITE THESE AS JOINS FIRST */
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select c.firstname, c.lastname, c.customerid, c.state, o.totalamount
from orders as o, (
    select customerid, state, firstname, lastname from customers 
) as c
where o.customerid = c.customerid and c.state in ('OH', 'NY', 'OR' )
ORDER BY orderid 


/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE dept_no = (
        SELECT dept_no 
        FROM dept_manager
        WHERE emp_no = 110183
    )
)
ORDER BY emp_no
