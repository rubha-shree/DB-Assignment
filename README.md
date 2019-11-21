# DB-Assignment

1. Write commands to dump the schema of a database and restore that schema in a new database.

2. Write a stored procedure for generating Fibonacci series and returning it as an array. 
It should accept the starting integer and the number of elements to be generated in the series.
Assume that the fibonacci series starts with 1 – 1,1,2,3,5,8,…
For example, generate_fibonacci(4,6) should return [5,8,13,21,34,55]


3. Write a file that can be executed through PSQL on command line and does the following:
Loads data from a CSV file, which contains (name, employee_no) as records on separate lines, into a table employee_details whose attributes are (name, employee_no, insertion_time). Insertion time should be the time at which the data was inserted in the table from the CSV file.
Shows the number of records added.
Sample CSV file : 
name, employee_no
Nikhil, 1
Vishal, 2
Udit, 3
Bhoomit, 4
