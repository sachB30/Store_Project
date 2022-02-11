SQL > create or replace directory data_pump_dir as 'E:\Data_Pump_Dir';

SQL > grant read,write on DIRECTORY data_pump_dir to sys;

exit;

-- To Export full Schema
expdp '/as sysdba' directory=data_pump_dir dumpfile=Export_Schme_OnlineStore_11022022.dump logfile=Export_Schme_OnlineStore_11022022.log schemas=ONLINESTOREDB