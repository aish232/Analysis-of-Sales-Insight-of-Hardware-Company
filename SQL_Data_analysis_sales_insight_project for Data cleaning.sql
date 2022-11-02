##sales amount is lower than 0
SELECT * FROM sales.transactions where sales_Amount <0

#distinct transactions
select distinct transactions.currency from sales.transactions
#so we need to check on this because INR is also showing up twice 

#transactions where currency is INR
SELECT count(*) FROM sales.transactions where transactions.currency = 'INR' #279

SELECT count(*) FROM sales.transactions where transactions.currency = 'INR\r' #150000

SELECT count(*) FROM sales.transactions where transactions.currency = 'USD' #2

SELECT count(*) FROM sales.transactions where transactions.currency = 'USD\r' #2

SELECT * FROM sales.transactions where transactions.currency = 'USD\r' or transactions.currency = 'USD'
