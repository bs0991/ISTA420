# Chapter 08a, T-SQL Query Fundamentals

## Discussion Questions

1. Q: When using INSERT, is the list of columns necessary? Why or why not?  
   A: Specifying the target column names right after the table name is optional, but by doing so, you control the value-column associations instead of relying on the order of the columns in the CREATE TABLE statement.<br><br>
1. Q: When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?  
   A: You can use the INSERT SELECT to insert a set of rows returned by a SELECT query. You can also use the INSERT SELECT to specify the column names that you want to insert data into.<br><br>
1. Q: What is the operand for the INSERT EXEC statement?  
   A: EXEC?<br><br>
1. Q: How would you use the INSERT INTO statement?  
   A: SELECT orderid, orderdate, empid, custid INTO dbo.Orders FROM Sales.Orders; This can be used to copy from the source the base structure and data.<br><br>
1. Q: What are the parameters to the BULK INSERT statement?  
   A: The target table, source file, and options.<br><br>
1. Q: Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?  
   A: IDENTITY does not guarantee uniqueness of the value. Uniqueness must be enforced by using a PRIMARY KEY or UNIQUE constraint or UNIQUE index.<br><br>
1. Q: How do you create a SEQUENCE object?  
   A: To create a sequence object, use the CREATE SEQUENCE command.<br><br>
1. Q: How do you use a SEQUENCE object?  
   A: A sequence object is used to sequentially generate numeric values.<br><br>
1. Q: How do you alter a SEQUENCE object?  
   A: You alter a SEQUENCE object through the ALTER SEQUENCE command.<br><br>
1. Q: What is the difference between DELETE and TRUNCATE?  
   A: DELETE is used to delete data from a table based on an optional filter predicate. TRUNCATE deletes all rows from a table. Unlike DELETE, TRUNCATE has no filter.<br><br>
1. Q: What is the difference between DELETE and DROP TABLE?  
   A: DELETE performs conditional based deletion, whereas DROP deletes entire records in the table. DELETE removes only the rows in the table and it preserves the table structure as same, and DROP removes all the data in the table and the table structure.<br><br>    