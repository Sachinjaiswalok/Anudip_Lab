Lab 2 Question:
Database Schema: Consider a simple database with one tables: BankAccount BankAccount 

Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance 

  //1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table.

Query: insert into BankAccount(accountid,account_holder_name,account_balance)values(61,'Aarush',50000.00),(62,'Sachin',30000.00),(63,'Rahul',20000.00),(64,'Ben',40000.00),(65,'SpiderMan',60000.00),(66,'IronMan',10000.00);
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

 select *from BankAccount;
+-----------+---------------------+-----------------+
| accountid | account_holder_name | account_balance |
+-----------+---------------------+-----------------+
|        61 | Aarush              |           50000 |
|        62 | Sachin              |           30000 |
|        63 | Rahul               |           20000 |
|        64 | Ben                 |           40000 |
|        65 | SpiderMan           |           60000 |
|        66 | IronMan             |           10000 |
+-----------+---------------------+-----------------+
6 rows in set (0.00 sec)

PURPOSE:-inserts new data into the BankAccount table, adding six new accounts with their respective IDs, holder names, and balances.

  2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.
Query: select account_holder_name,account_balance from BankAccount;

+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Aarush              |           50000 |
| Sachin              |           30000 |
| Rahul               |           20000 |
| Ben                 |           40000 |
| SpiderMan           |           60000 |
| IronMan             |           10000 |
+---------------------+-----------------+
6 rows in set (0.00 sec)

 PURPOSE:-retrieves the account holder's name and balance for all accounts in the BankAccount table, allowing you to view the current state of all accounts.

  3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 
Query: select account_holder_name,account_balance from BankAccount where account_balance > 30000;

+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Aarush              |           50000 |
| Ben                 |           40000 |
| SpiderMan           |           60000 |
+---------------------+-----------------+
3 rows in set (0.01 sec)

PURPOSE:- filters account holders with a balance greater than 30,000, returning only those accounts that meet this condition.

  4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 61.
Query: update BankAccount set account_balance =30000.00 where accountid = 61;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

select *from BankAccount;
+-----------+---------------------+-----------------+
| accountid | account_holder_name | account_balance |
+-----------+---------------------+-----------------+
|        61 | Aarush              |           30000 |
|        62 | Sachin              |           30000 |
|        63 | Rahul               |           20000 |
|        64 | Ben                 |           40000 |
|        65 | SpiderMan           |           60000 |
|        66 | IronMan             |           10000 |
+-----------+---------------------+-----------------+
6 rows in set (0.00 sec)

PURPOSE:- updates the account balance of the account holder with ID 61 to 30,000.00, modifying existing data in the table 1 2.
