# Write your MySQL query statement below
select e1.name 
from employee e1
JOIN employee e2
ON e1.id = e2.managerId
group by e1.id,e1.name
HAVING COUNT(e2.id)>=5;