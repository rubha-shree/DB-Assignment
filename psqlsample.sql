\l
\c postgres
\dt
create table employee_info(name VARCHAR (50) NOT NULL, employee_no integer PRIMARY KEY, created TIMESTAMP NOT NULL DEFAULT NOW());
\d employee_info
\copy employee_info(name,employee_no) FROM '/Users/rubhashree/employee_details.csv' DELIMITER ',' CSV
select * from employee_info;
