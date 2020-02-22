/* Select all orders and group dates by month*/
with orders_by_months as (SELECT EXTRACT(month from order_date) "Month",
    COUNT(order_date) "No. of Orders"
    FROM orders
    GROUP BY EXTRACT(month FROM order_date)
    ORDER BY "No. of Orders" DESC)
    
select * from orders_by_months


/* Joined the customer and orders table to determine most frequent customers*/
select orders.order_id, orders.customer_id, customers.cust_first_name, customers.cust_last_name
from orders full join customers on orders.customer_id = customers.customer_id

