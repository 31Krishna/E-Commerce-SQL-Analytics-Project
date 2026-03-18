CREATE TABLE customers (
    customer_id VARCHAR PRIMARY KEY,
    customer_city VARCHAR,
    customer_state VARCHAR
);

CREATE TABLE orders (
    order_id VARCHAR PRIMARY KEY,
    customer_id VARCHAR,
    order_purchase_timestamp TIMESTAMP,
    order_status VARCHAR,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_id VARCHAR,
    product_id VARCHAR,
    price NUMERIC,
    freight_value NUMERIC
);

CREATE TABLE products (
    product_id VARCHAR PRIMARY KEY,
    product_category VARCHAR
);

CREATE TABLE payments (
    order_id VARCHAR,
    payment_type VARCHAR,
    payment_value NUMERIC
);
SELECT * from customers limit 5 ;
SELECT * from order_items limit 5 ;
SELECT * from orders limit 5 ;
SELECT * from payments limit 5 ;
SELECT * from products limit 5 ;

-- Total Orders --
Select Count(*) as total_orders from orders;

-- Total Revenue --
Select Sum(payment_value) as total_revenue from payments;


-- Orders by Status --
Select order_status,Count(*) as total
from orders
group by order_status
Order by total desc;

-- Total Customer --
Select Count(Distinct  customer_id) as total_customer from customers;

-- Monthly Revenue Trend  -- 
Select 
    DATE_TRUNC('month',o.order_purchase_timestamp) as Month,
	Sum(p.payment_value) as revenue
from orders o 
Join payments p 
ON o.order_id = p.order_id
Group by month 
Order by month;

-- Top 10 customer --
Select 
     o.customer_id,
	 Sum(p.payment_value) as total_spent
from orders o 
Join payments p 
ON o.order_id = p.order_id 
Group by o.customer_id
Order by total_spent Desc
Limit 10 ;

-- Revenue By State --
Select 
   c.customer_city,
   Sum(p.payment_value) as revenue
from customers c 
Join orders o
On c.customer_id = o.customer_id
Join payments p 
On o.order_id = p.order_id 
Group by c.customer_city
Order by revenue desc ;

-- Customer Frequency --
Select 
    customer_id,
	Count(order_id) as total_orders 
from orders 
group by customer_id
order by total_orders desc;


-- RFM Analysis --
SELECT 
    o.customer_id,
    MAX(o.order_purchase_timestamp) AS last_purchase,
    COUNT(o.order_id) AS frequency,
    SUM(p.payment_value) AS monetary
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY o.customer_id;

-- Window Function --
Select 
    o.customer_id,
	Sum(p.payment_value) as total_spent,
	Rank() Over(Order by Sum(p.payment_value) Desc) as rn 
from orders o 
Join payments p
On o.order_id = p.order_id
group by o.customer_id;
	







