--7-ddl.sql
------ 13 Entity Tables

CREATE TABLE ONLINESTOREDB.Regions
  (
    regionid   NUMBER(10),
    regionname VARCHAR2(30) NOT NULL,
    CONSTRAINT PK_REGID PRIMARY KEY (regionid)
  );
  
CREATE TABLE ONLINESTOREDB.Countries
  (
    CountryID    NUMBER(10),
    CountryName  VARCHAR2(30) NOT NULL,
    Region       NUMBER(10),
    CONSTRAINT PK_CNTID PRIMARY KEY (CountryID),
    CONSTRAINT FK_REGID FOREIGN KEY (Region)
    REFERENCES ONLINESTOREDB.Regions(regionid)
  );  
  
CREATE TABLE ONLINESTOREDB.Locations
  (
    LocationID    NUMBER(10),
    Address       VARCHAR2(50) NOT NULL,
    Postal_Code   NUMBER(10) NOT NULL,
    City          VARCHAR2(30) NOT NULL,
    State         VARCHAR2(30) NOT NULL,
    Country       NUMBER(10),
    CONSTRAINT PK_LOCID PRIMARY KEY (LocationID),
    CONSTRAINT FK_CNTID FOREIGN KEY (Country)
    REFERENCES ONLINESTOREDB.Countries(CountryID)
  );

CREATE TABLE ONLINESTOREDB.Warehouses
  (
    Warehouseid   NUMBER(10),
    WarehouseName VARCHAR2(30) NOT NULL,
    Location    NUMBER(10),
    CONSTRAINT PK_WAHID PRIMARY KEY (Warehouseid),
    CONSTRAINT FK_LOCID FOREIGN KEY (Location)
    REFERENCES ONLINESTOREDB.Locations(LocationID)
  );
    
---- Product

CREATE TABLE ONLINESTOREDB.Product_category
  (
    categoryid   NUMBER(10),
    categoryname VARCHAR2(30) NOT NULL,
    CONSTRAINT PK_CATGID PRIMARY KEY (categoryid)
  );

CREATE TABLE ONLINESTOREDB.Products
  (
    PRODUCTID    NUMBER(10),
    PRODUCTNAME  VARCHAR2(30) NOT NULL,
    DESCRIPTION  VARCHAR2(100),
    STANDARDCOST NUMBER(10),
    LISTPRICE    NUMBER(10),
    CATEGORY     NUMBER(10),
    CONSTRAINT PK_PRDID PRIMARY KEY (PRODUCTID),
    CONSTRAINT FK_CATGID FOREIGN KEY (CATEGORY)
    REFERENCES ONLINESTOREDB.Product_category(categoryid)
  ); 

CREATE TABLE ONLINESTOREDB.Inventory
  (
    Inventoryid   NUMBER(10),
    quantity      NUMBER(10),
    PRODUCT       NUMBER(10),
	Warehouse    NUMBER(10),
    CONSTRAINT PK_INVID PRIMARY KEY (Inventoryid),
    CONSTRAINT FK_PRDID FOREIGN KEY (PRODUCT)
    REFERENCES ONLINESTOREDB.Products(PRODUCTID),
	CONSTRAINT FK_WAHID FOREIGN KEY (Warehouse)
    REFERENCES ONLINESTOREDB.Warehouses(Warehouseid)
  );  
  
---- Company ----------------

CREATE TABLE ONLINESTOREDB.Department
  (
    Deptid   NUMBER(10),
    DepartmentName VARCHAR2(30) NOT NULL,
    Location    NUMBER(10),
    CONSTRAINT PK_DEPID PRIMARY KEY (Deptid),
    CONSTRAINT FK_DepLOCID FOREIGN KEY (Location)
    REFERENCES ONLINESTOREDB.Locations(LocationID)
  );
  
CREATE TABLE ONLINESTOREDB.Employees
  (
    EmployeeID    NUMBER(10),
    FirstName     VARCHAR2(50) NOT NULL,
    LastName      VARCHAR2(50),
    Email         VARCHAR2(100),
    phone         NUMBER(12),
    hiredate      DATE NOT NULL,
    DOB           DATE,
    SALARY        NUMBER(12),
    MANAGER       NUMBER(10),
    Designation   VARCHAR2(30), 
    Department    NUMBER(10),
    CONSTRAINT PK_EMPID PRIMARY KEY (EmployeeID),
    CONSTRAINT FK_DEPID FOREIGN KEY (Department)
    REFERENCES ONLINESTOREDB.Department(Deptid)
  );  
  
---- Customer ----------------  

CREATE TABLE ONLINESTOREDB.Customer
  (
    CustomerID    NUMBER(10),
    Name     VARCHAR2(50) NOT NULL,
    Address       VARCHAR2(100),
    Website       VARCHAR2(100), 
	Facebook      VARCHAR2(100), 
	Twitter       VARCHAR2(100), 
	WhatsApp      VARCHAR2(100), 
    CONSTRAINT PK_CUSTID PRIMARY KEY (CustomerID)
  ); 
  
CREATE TABLE ONLINESTOREDB.Contacts
  (
    ContactID     NUMBER(10) Unique,
    FirstName     VARCHAR2(50) NOT NULL,
    LastName      VARCHAR2(50),
    Email         VARCHAR2(100),
    phone         NUMBER(12),
    CustomerID     NUMBER(10),
    CONSTRAINT FK_CUSTID FOREIGN KEY (CustomerID)
    REFERENCES ONLINESTOREDB.Customer(CustomerID)
  );  
    
--- Orders
CREATE TABLE ONLINESTOREDB.Orders
  (
    OrderID      NUMBER(10),
    CustomerID   NUMBER(10),
    Status       Varchar2(12)   DEFAULT 'PENDING' NOT NULL,
    SALESMANID   NUMBER(10), 
    ORDERDATE    DATE Default SYSDATE,
	DeliveryDate DATE,
    CONSTRAINT PK_ODRID PRIMARY KEY (OrderID),
    CONSTRAINT FK_CUSTODRID FOREIGN KEY (CustomerID)
    REFERENCES ONLINESTOREDB.Customer(CustomerID),
	CONSTRAINT ck_status CHECK (Status IN ('PENDING','SHIPPED','COMPLETED','CANCELED'))
  ); 
  
CREATE TABLE ONLINESTOREDB.OrderItems
  ( 
    ItemID       NUMBER(10),
    OrderID      NUMBER(10),
    PRODUCTID    NUMBER(10),
    Quantity     NUMBER(10), 
    UnitPrice    NUMBER(10), 
    Inventory_Prodid number(10),
    Warehouseid   NUMBER(10),
    CONSTRAINT PK_ITMID PRIMARY KEY (ItemID),
    CONSTRAINT FK_ODRID FOREIGN KEY (OrderID)
    REFERENCES ONLINESTOREDB.Orders(OrderID),
	CONSTRAINT FK_ORDPRDID FOREIGN KEY (PRODUCTID)
    REFERENCES ONLINESTOREDB.Products(PRODUCTID)
  );   
  

------------------------Procedure to Update Emp Sal ------------------------------------------------------------------------------
-- 11
Create or Replace Procedure ONLINESTOREDB.P_Update_Emp_Sale (empno number, sal number)
as
v_empid Employees.EmployeeID%type;

 begin
   Update ONLINESTOREDB.Employees set salary=sal where EmployeeID=empno;
   commit;
 end;
/ 
-- Update manager Salary
Exec ONLINESTOREDB.P_Update_Emp_Sale(7902, 900000); 


-----------------Procedure to show top three costly Products ------------------------------------------------
-- 11
Create or Replace Procedure ONLINESTOREDB.P_Top_three_costly_proudec
as
		Cursor C1 is SELECT PRODUCTNAME, DESCRIPTION, LISTPRICE
		FROM 
			(
			SELECT  PRODUCTNAME, DESCRIPTION, LISTPRICE
			FROM        ONLINESTOREDB.Products
			ORDER BY LISTPRICE desc
			)
		WHERE rownum <= 3
		ORDER BY LISTPRICE desc;
		
Type MaxPricitem is table of C1%rowtype index by PLS_INTEGER;
V_MxPrcItm MaxPricitem;

Begin
 OPEN C1;
   LOOP
      FETCH c1 BULK COLLECT INTO V_MxPrcItm; 
      EXIT WHEN V_MxPrcItm.COUNT = 0;
 
      FOR indx IN 1..V_MxPrcItm.COUNT
      LOOP
       DBMS_OUTPUT.put_line('Product Name is '||V_MxPrcItm(indx).PRODUCTNAME||' '||V_MxPrcItm(indx).DESCRIPTION||' Max Price is '||V_MxPrcItm(indx).LISTPRICE);
      END LOOP;
   END LOOP;
   CLOSE C1; 
End;
/   

set serveroutput on
Exec ONLINESTOREDB.P_Top_three_costly_proudec;

----------15 Audit Table -------------------------------------------------------------------

CREATE TABLE ONLINESTOREDB.store_audit_Table_Change(
  Table_name varchar2(30),
  Table_UID number(10),
  Table_Entityname varchar2(30),
  Who  varchar2(30),
  When Date,
  Module  varchar2(30)
);

----------16 Audit Table Trigger -------------------------------------------------------------------

CREATE OR REPLACE trigger ONLINESTOREDB.Audit_Product_category
BEFORE INSERT OR DELETE OR UPDATE ON ONLINESTOREDB.Product_category
FOR EACH ROW
ENABLE
DECLARE
 -- v_user varchar2 (30);
--  v_date  varchar2(30);
BEGIN
  --SELECT user, TO_CHAR(sysdate, 'DD/MON/YYYY HH24:MI:SS') INTO v_user, v_date  FROM dual;
  IF INSERTING THEN
    INSERT INTO ONLINESTOREDB.store_audit_Table_Change (Table_name,Table_UID,Table_Entityname,Who,ChangeTime,Module,operation) 
    VALUES('Product_category', :New.categoryid , :New.categoryname, user, sysdate, sys_context('USERENV','MODULE'), 'Insert');  
  ELSIF DELETING THEN
     INSERT INTO ONLINESTOREDB.store_audit_Table_Change (Table_name,Table_UID,Table_Entityname,Who,ChangeTime,Module,operation) 
      VALUES('Product_category', :Old.categoryid , :Old.categoryname,  user, sysdate, sys_context('USERENV','MODULE'), 'Delete');  
  ELSIF UPDATING THEN
     INSERT INTO ONLINESTOREDB.store_audit_Table_Change (Table_name,Table_UID,Table_Entityname,Who,ChangeTime,Module,operation) 
      VALUES('Product_category', :Old.categoryid , :Old.categoryname,  user, sysdate, sys_context('USERENV','MODULE'), 'Update');
  END IF;
END;
/