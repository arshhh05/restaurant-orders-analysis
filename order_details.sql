-- view order_details table
select * from order_details;

-- date range of table
select min(order_date), max(order_date) 
from order_details
order by order_date;

-- how many orders were made within this date range
select count(distinct(order_id)) from order_details;

-- how many items were ordered within this date range
select count(*) from order_details;

-- which orders had the most number of items
select order_id, count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;

-- how many orders had more than 12 items?
select count(*) from
(select order_id, count(item_id) as num_items
from order_details
group by order_id
having num_items > 12) as num_order;