 ----------------------------------------------------------------------------------------------------------------------
-- 13
Create or Replace View ONLINESTOREDB.V_Most_Sold_Prod As
Select Itm.PRODUCTID, Prd.PRODUCTNAME, ord.Status, Lc.city, max(Quantity) Quantity_sold
From ONLINESTOREDB.OrderItems Itm, ONLINESTOREDB.Products Prd, ONLINESTOREDB.Orders ord, ONLINESTOREDB.Warehouses WH, ONLINESTOREDB.Locations LC
where Itm.PRODUCTID = Prd.PRODUCTID
and  Itm.OrderID =  ord.OrderID
and  Itm.Warehouseid  = WH.Warehouseid
and WH.Location = LC.LocationID     
and Ord.status = 'COMPLETED'
and Ord.ORDERDATE > sysdate -7
group by Itm.PRODUCTID, Prd.PRODUCTNAME, ord.Status, Lc.city
order by Quantity_sold desc; 

-------------------------------------------------------------------------------------------------------------
-- 14
Create or Replace View ONLINESTOREDB.V_Max_Ord_County As
Select Cust.CustomerID, Cust.Name, Cnt.CountryName, count(Unique ITM.OrderID)  Max_Orders
From ONLINESTOREDB.Customer CUST, ONLINESTOREDB.Orders ord, ONLINESTOREDB.OrderItems Itm, 
ONLINESTOREDB.Warehouses WH, ONLINESTOREDB.Locations LC, ONLINESTOREDB.Countries Cnt
where CUST.CustomerID = ord.CustomerID
and Itm.OrderID =  ord.OrderID
and Itm.Warehouseid = WH.Warehouseid
and WH.Location = LC.LocationID
and LC.Country = Cnt.CountryID
and ord.status in ('PENDING','SHIPPED','COMPLETED')
and Ord.ORDERDATE > sysdate -7
group by Cust.CustomerID, Cust.Name, Cnt.CountryName
order by Max_Orders desc;
