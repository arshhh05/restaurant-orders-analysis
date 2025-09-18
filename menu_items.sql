use restaurant_db;

-- viewing the menu_items table
select * from menu_items;

-- no of items on the menu
select count(*) from menu_items;

-- least and most expensive items on menu
select * from menu_items
order by price;

select * from menu_items
order by price desc;

-- how many italian dishes on the menu
select count(*) from menu_items
where category='Italian';

-- least and most expensive italian dishes
select * from menu_items
where category='Italian'
order by price;

select * from menu_items
where category='Italian'
order by price desc;

-- how many dishes in each category
select category, count(menu_item_id) as num_dishes
from menu_items
group by category;

-- avg. dish price in each category
select category, avg(price) as avg_price
from menu_items
group by category;




