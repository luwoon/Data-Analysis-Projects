--Evaluation of current business performance and analysis of major contributing factors to revenue
--To enable business to strategically plan for the future and identify opportunities that would lead to growth and generate more revenue
--Dataset from: Daqing Chen, Sai Liang Sain, and Kun Guo, Data mining for the online retail industry: A case study of RFM model-based customer segmentation using data mining, Journal of Database Marketing and Customer Strategy Management, Vol. 19, No. 3, pp. 197-208, 2012. doi: 10.1057/dbm.2012.17.

--Time series analysis of revenue data (in months)

--Top 10 countries that are generating the highest revenue, along with quantity sold
select country, sum(unitprice), sum(quantity)
from online_retail_dataset
group by country
order by sum(unitprice) desc
limit 10;

--Top 10 customers by revenue
select customerid, sum(unitprice)
from online_retail_dataset
group by customerid
order by sum(unitprice) desc
limit 10;

--Countries' demands for the store's products to identify countries for expansion opportunities

--Link to dashboard:
