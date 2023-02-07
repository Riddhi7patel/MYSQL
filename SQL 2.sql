/* joins: select all the computers from the products table:

using the products table and the categories table, return the product name and the category name */
select p.name as product, c.name as category
from products as p
inner join categories as c
on p.categoryID = c.categoryID
where c.name = "computers";

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select p.name, p.price, r.rating
from products as p
inner join reviews as r
on p.productID = r.productId
where r.rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select contact(e.firstname," ", e.lastname) as employee, sum(s.quantity) as total
from employees as e
inner join sales as s
on e.employeeID = s.employeeID
group by e.employeeId
having total = (select sum(s.quantity) as total from sales group by sales.employeeID order by total desc limit 1);



/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as department,c.name as category from categories as c
inner join departments as d
on d.DepartmentID = c. DepartmentID
where c.Name = "Appliances" or c.name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select p.name as product, count(s.quantity) as totalquantity, sum(s.priceperunit * s.quantity)asbtotalvalue
from product as p
inner join sales as s
on p.productID = s.productID
group by s. productId
having p.name = "egale: hotel califinia";



/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.name as product, r.reviewer, r.rating, r.comment
from reviews as r
inner join product as p
on p.ProductID = r.productID
where p.name = "visio Tv"
order by r.rating
limit 1;

-- ------------------------------------------ Extra - May be difficult

/* Your goal is to write a query that serves as an employee sales report.

This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
