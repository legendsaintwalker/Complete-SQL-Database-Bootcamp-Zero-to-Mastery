/**
* Database: Store
* Table: products
* Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
* if it's between 10 and 20 you show 'average' 
* and of is lower than or equal to 10 you show 'cheap'.
*/
select p.price,
    p.category,
   case 
        when p.price > 20 then 'expensive'
        when p.price >= 10 or p.price <= 20 then 'average'
        when p.price <= 10 then 'cheap'
        end 
     as "rating"
from products as p
