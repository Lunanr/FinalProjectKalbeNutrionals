-- Soal no 1
select "Marital Status", avg(age) as "Average age by marital status"
from CUSTOMER
group by "Marital Status";

-- Soal no 2
select gender, avg(age) as "Average age by gender"
from customer
group by gender;

-- Soal no 3
select s.storename, sum(t.qty) as "The most total number of quantity"
from transaction as t
full outer join store as s on t.storeid = s.storeid
group by s.storename
order by 2 desc;

-- Soal no 4
select p."Product Name" , sum(t.totalamount) as "Total amount"
from transaction as t
full outer join product as p on t.productid = p.productid
group by p."Product Name"
order by 2 desc;

-- This query for merge all data
select *
from transaction as t
full outer join product as p on t.productid = p.productid 
full outer join customer as c on t.customerid = c.customerid 
full outer join store as s on t.storeid = s.storeid 
