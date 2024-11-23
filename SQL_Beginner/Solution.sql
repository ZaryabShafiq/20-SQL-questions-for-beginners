-- Q1
-- select contactfirstname, contactlastname, sum(quantityordered*priceeach) as total_amt
-- from sales
-- group by contactfirstname, contactlastname
-- order by total_amt DESC
-- limit 5


-- Q2
-- select extract(month from orderdate) as mon, sum(priceeach*quantityordered) as tot_amt from sales
-- where year_id = 2003
-- group by month
-- order by month


-- Q3
-- select productline as product, sum(priceeach * quantityordered) as total_amt
-- 	from sales
-- group by product


-- Q4
-- select ordernumber, contactfirstname, contactlastname, sum(quantityordered * priceeach) as total_amt
-- from sales
-- group by contactfirstname, contactlastname, ordernumber
-- having sum(quantityordered * priceeach) > 5000



-- Q5
-- select qtr_id, sum(priceeach * quantityordered) as total_amt
-- 	from sales
-- 	where year_id = 2003
-- 	group by qtr_id
-- order by qtr_id



-- Q6
-- select ordernumber, contactfirstname, contactlastname, territory, sum(priceeach * quantityordered) as total_amt
-- from sales
-- where territory = 'EMEA'
-- group by ordernumber, contactfirstname, contactlastname, territory


-- Q7
-- select productcode, sum(quantityordered) from sales
-- group by productcode
-- limit 1;


-- Q8
-- select productline, avg(priceeach) from sales
-- group by productline



-- Q9
-- select productcode, sum(priceeach * quantityordered) as total_amt from sales
-- group by productcode
-- order by total_amt desc
-- limit 3




-- Q10
-- select 100 * (sub_2.total_amt_2 - sub.total_amt_1) / sub.total_amt_1 as precent_growth
	
-- from
	
-- (select sum(priceeach * quantityordered) as total_amt_2 from sales
-- where qtr_id = 2 and year_id = 2003)sub_2,
	
-- (select sum(priceeach * quantityordered) as total_amt_1 from sales
-- where qtr_id = 1 and year_id = 2003)sub

--  /////////////////////WITH CTE METHOD\\\\\\\\\\\\\\\\\\\\\

-- WITH Q1_Sales AS (
--     SELECT SUM(priceeach * quantityordered) AS total_amt
--     FROM sales
--     WHERE year_id = 2003 AND qtr_id = 1
-- ),
-- Q2_Sales AS (
--     SELECT SUM(priceeach * quantityordered) AS total_amt
--     FROM sales
--     WHERE year_id = 2003 AND qtr_id = 2
-- )
-- SELECT 
--     100.0 * (Q2_Sales.total_amt - Q1_Sales.total_amt) / Q1_Sales.total_amt AS percentage_growth
-- FROM 
--     Q1_Sales, Q2_Sales;





-- Q11
-- select avg(orderlinenumber) from sales
-- where productline = 'Motorcycles'



-- Q12
-- select contactfirstname,
-- 	contactlastname,
-- 	sum(priceeach * quantityordered) as total_amt,
-- 	count(ordernumber) as orders_placed
-- from sales
-- group by contactfirstname, contactlastname, dealsize
-- having dealsize ilike 'large


-- Q13
-- select state, sum(priceeach * quantityordered) as total_amt
-- 	from sales
-- group by state


-- Q14
-- select productcode, productline, msrp from sales
-- where msrp > 100


-- Q15
-- select to_char(to_date(month_id::text, 'MM'), 'Month'), count(ordernumber) total_orders from sales
-- 	where year_id = 2003
-- group by month_id
-- order by month_id



-- Q16
-- select dealsize, sum (quantityordered * priceeach) as total_amt
-- 	from sales
-- group by dealsize
-- order by dealsize desc



-- Q17
-- select contactfirstname, contactlastname, sum(priceeach*quantityordered) / count(ordernumber) as avg_ord_val
-- 	from sales
-- group by contactfirstname, contactlastname



-- Q18
-- select city, count(contactfirstname) as total_cust
-- from sales
-- group by city


-- Q20
-- select territory, sum(quantityordered * priceeach)
-- from sales
-- where year_id = 2003 and territory not iLIKE 'NA'
-- group by month_id, territory


