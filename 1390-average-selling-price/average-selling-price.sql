# Write your MySQL query statement below
select p.product_id , 

IFNULL (
    ROUND((SUM(p.price*u.units))/sum(u.units),2), 
    0
 ) as average_price
from Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
Group by p.product_id;