CREATE OR REPLACE trigger ONLINESTOREDB.Audit_Product_category
BEFORE INSERT OR DELETE OR UPDATE ON ONLINESTOREDB.Product_category
FOR EACH ROW
ENABLE
DECLARE
  v_user varchar2 (30);
  v_date  varchar2(30);
BEGIN
  SELECT user, TO_CHAR(sysdate, 'DD/MON/YYYY HH24:MI:SS') INTO v_user, v_date  FROM dual;
  IF INSERTING THEN
    INSERT INTO ONLINESTOREDB.store_audit_Table_Change (Table_name,Table_UID,Table_Entityname,Who,ChangeTime,Module,operation) 
    VALUES('Product_category', :New.categoryid , :New.categoryname, v_user, v_date, sys_context('USERENV','MODULE'), 'Insert');  
  ELSIF DELETING THEN
     INSERT INTO ONLINESTOREDB.store_audit_Table_Change (Table_name,Table_UID,Table_Entityname,Who,ChangeTime,Module,operation) 
      VALUES('Product_category', :Old.categoryid , :Old.categoryname,  v_user, v_date, sys_context('USERENV','MODULE'), 'Delete');  
  ELSIF UPDATING THEN
     INSERT INTO ONLINESTOREDB.store_audit_Table_Change (Table_name,Table_UID,Table_Entityname,Who,ChangeTime,Module,operation) 
      VALUES('Product_category', :Old.categoryid , :Old.categoryname,  v_user, v_date, sys_context('USERENV','MODULE'), 'Update');
  END IF;
END;
/