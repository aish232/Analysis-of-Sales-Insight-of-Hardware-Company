##all values in customer table
select * from sales.customers

##total number of customers
select count(*) from sales.customers

##transactions for chennai market 
select * from sales.transactions where market_code = 'Mark001'

##transactions in usd
select * from sales.transactions where currency='USD'
## so need to convert the USD currency values to INR in power bi

##transactions in 2020 
select * from sales.transactions t inner join sales.date d 
on t.order_date = d.date
where d.year = 2020

##total revenue in 2020
select sum(t.sales_amount) 
from sales.transactions t inner join sales.date d 
on t.order_date = d.date
where d.year = 2020
##142224545

##total revenue in 2019
select sum(t.sales_amount) 
from sales.transactions t inner join sales.date d 
on t.order_date = d.date
where d.year = 2019
##336019102

# so sales is declining 

#sales revenue in chennai
select sum(t.sales_amount) 
from sales.transactions t inner join sales.date d 
on t.order_date = d.date
where d.year = 2020 and t.market_code = 'Mark001'
##2463024









