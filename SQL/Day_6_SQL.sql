-- -- Table 1: Orders (same data as your Excel sheet)
-- CREATE TABLE transaction_orders (
--     OrderID INTEGER,
--     OrderDate TEXT,
--     Customer TEXT,
--     Region TEXT,
--     Product TEXT,
--     Category TEXT,
--     Quantity INTEGER,
--     UnitPrice INTEGER,
--     Sales INTEGER
-- );


-- INSERT INTO transaction_orders VALUES
-- (1001,'2024-01-03','Aarav Shah','West','Notebook','Stationery',10,45,450),
-- (1002,'2024-01-04','Meera Iyer','South','Pen','Stationery',25,10,250),
-- (1003,'2024-01-05','Rohan Patel','North','Desk Lamp','Electronics',3,600,1800),
-- (1004,'2024-01-06','Sneha Rao','West','Notebook','Stationery',15,45,675),
-- (1005,'2024-01-07','Vikram Singh','East','Backpack','Accessories',2,900,1800),
-- (1006,'2024-01-08','Aarav Shah','West','Pen','Stationery',50,10,500),
-- (1007,'2024-01-09','Priya Nair','South','Desk Lamp','Electronics',4,600,2400),
-- (1008,'2024-01-10','Rohan Patel','North','Notebook','Stationery',20,45,900),
-- (1009,'2024-01-11','Kabir Mehta','East','Backpack','Accessories',1,900,900),
-- (1010,'2024-01-12','Meera Iyer','South','Pen','Stationery',30,10,300),
-- (1011,'2024-01-13','Sneha Rao','West','Desk Lamp','Electronics',2,600,1200),
-- (1012,'2024-01-14','Vikram Singh','East','Notebook','Stationery',12,45,540),
-- (1013,'2024-01-15','Priya Nair','South','Backpack','Accessories',3,900,2700),
-- (1014,'2024-01-16','Kabir Mehta','East','Pen','Stationery',40,10,400),
-- (1015,'2024-01-17','Aarav Shah','West','Desk Lamp','Electronics',1,600,600),
-- (1016,'2024-01-18','Rohan Patel','North','Backpack','Accessories',2,900,1800),
-- (1017,'2024-01-19','Meera Iyer','South','Notebook','Stationery',18,45,810),
-- (1018,'2024-01-20','Sneha Rao','West','Pen','Stationery',35,10,350),
-- (1019,'2024-01-21','Vikram Singh','East','Desk Lamp','Electronics',5,600,3000),
-- (1020,'2024-01-22','Priya Nair','South','Notebook','Stationery',22,45,990);

-- -- Table 2: Managers (same as your VLOOKUP table)
-- CREATE TABLE managers (
--     Region TEXT,
--     Manager TEXT
-- );

-- INSERT INTO managers VALUES
-- ('North','Ritu Sharma'),
-- ('South','Arjun Verma'),
-- ('East','Farah Khan'),
-- ('West','Devansh Rao');


select * from transaction_orders;

-- select sum(Sales) from transaction_orders;

-- select region, sum(sales) from transaction_orders group by region; -- group by

-- select category, count(*), avg(sales) from transaction_orders group by Category;

-- select region, sum(sales) from transaction_orders group by region having sum(sales) >= 5000; -- filter

-- select managers.Manager,  from transaction_orders join managers on managers.Region = transaction_orders.Region group by managers.Manager order by sum(transaction_orders.sales) DESC;

-- SELECT managers.Manager, sum(transaction_orders.sales)
-- FROM transaction_orders
-- JOIN managers ON transaction_orders.Region = managers.Region
-- GROUP BY managers.Manager
-- ORDER BY sum(transaction_orders.sales) DESC;


-- Home work

select product, sum(quantity) from transaction_orders group by Product;

-- select category, count(*) from transaction_orders group by category having count(*) > 5;

-- select region, count(*) as orders from transaction_orders group by region order by orders; 