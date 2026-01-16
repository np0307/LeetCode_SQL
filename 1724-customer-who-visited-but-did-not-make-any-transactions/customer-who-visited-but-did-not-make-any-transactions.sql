# Write your MySQL query statement below
select c1.customer_id, count(c1.visit_id) as count_no_trans 
from Visits as c1
LEFT JOIN Transactions as c2
ON c1.visit_id=c2.visit_id
WHERE c2.transaction_id IS NULL
GROUP by c1.customer_id;