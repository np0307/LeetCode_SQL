# Write your MySQL query statement below
select s2.product_name, s1.year, s1.price 
from Sales as s1
JOIN Product as s2
ON s1.product_id = s2.product_id;