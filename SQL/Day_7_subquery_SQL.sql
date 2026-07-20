SELECT 
    *
FROM
    transaction_orders
WHERE
    sales > (SELECT 
            AVG(sales)
        FROM
            transaction_orders);

with region_totals AS (select region, sum(sales) as total_sales from transaction_orders group by region) select * from region_totals where total_sales > 5000;

select transaction_orders.region, managers.Manager from transaction_orders join managers on transaction_orders.region = managers.region order by transaction_orders.region;

with region_totals AS ( 
		select region, sum(sales) as total_sales from transaction_orders group by Region
)
select managers.Manager, region_totals.region, region_totals.total_sales from region_totals join managers on region_totals.region = managers.region where region_totals.total_sales > (select avg(sales) from transaction_orders) * 5;

with region_totals as (select region, sales from transaction_orders)
select * from region_totals;

-- Home work

with category_wise_average_Sales as (select category, avg(sales) as avg_sales from transaction_orders group by Category)
select category, avg_sales from category_wise_average_sales where category_wise_average_sales.avg_sales > 500;

with category_wise_average_Sales as (select * from transaction_orders)
select * from category_wise_average_sales where sales = (select max(sales) from transaction_orders);
