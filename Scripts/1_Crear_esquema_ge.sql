CREATE USER ge 
IDENTIFIED BY ge 
DEFAULT TABLESPACE ge_data 
QUOTA 10M ON ge_data 
TEMPORARY TABLESPACE temp
QUOTA 5M ON system ;
