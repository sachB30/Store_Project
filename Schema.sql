CREATE USER ONLINESTOREDB IDENTIFIED BY STORE DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP;
Alter user ONLINESTOREDB quota unlimited on users;
grant connect, resource to ONLINESTOREDB;