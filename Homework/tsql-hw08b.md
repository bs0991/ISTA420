# Chapter 08b, T-SQL Query Fundamentals

## Discussion Questions

1. Q: The sales tax rate for a state just changed. How would you update the state sales tax table to reflect the changes? Assume that this table had an ID column, a RATE column, and a STATE column.  
   A: UPDATE dbo.salestax SET rate = rate +/- (amount) WHERE ID = 5;<br><br>
1. Q: The Revenue Division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?  
   A: SELECT (sum(orders) * rate) as newrate FROM dbo.salestax WHERE year(orderdate) = 20--; In place of rate write the new rate calculated from question 1. <br><br>
1. Q: Explain how the proprietary assignment update command works.  
   A: The proprietary UPDATE updates both data in a table and assigns values to variables at the same time. This syntax saves you the need to use separate UPDATE and SELECT statements to achieve the same task.<br><br>
1. Q: What is one very important purpose of the MERGE SQL statement? What is ETL?  
   A: One very important purpose of the MERGE statement is to merge tables from different sources. ETL stands for Extract, Transform, and Load which is a process used to collect data from various sources, transform the data depending on business rules/needs and load the data into a destination database.<br><br>
1. Q: What are the semantics of MERGE?  
   A: You first specify the target table name in the MERGE cluase and the source table name in the USING clause. You define a merge condition by specifying a predicate (condition expression true or false) in the ON clause. The merge condition defines which rows in the source table have matches in the target and which don't. You define the action to take when a match is found in a clause called WHEN MATCHED THEN, and the action to take when a match is not found in the WHEN NOT MATCHED THEN clause.<br><br>
1. Q: Write a typical INSERT OUTPUT statement.  
   A: INSERT INTO table1 (column) OUTPUT inserted.column1, inserted column2 SELECT column3 FROM table 2 where (condition);<br><br>
1. Q: Write a typical UPDATE OUTPUT statement.  
   A: UPDATE table SET (updates) OUTPUT inserted.column1, inserted.column2, deleted.column3 as oldcolumn, inserted.column3 as newcolumn where (condition);<br><br>
1. Q: Write a typical DELETE OUTPUT statement.  
   A: DELETE FROM table OUTPUT deleted.column1, deleted.column2 WHERE (condition);<br><br>
1. Q: Write a typical MERGE OUTPUT statement.  
   A: MERGE INTO table1 as TGT USING table as SRC ON TGT.column = SRC.column WHEN MATCHED THEN UPDATE SET TGT.column = SRC.column WHEN NOT MATCHED THEN INSERT (columns) VALUES (SRC.column) OUTPUT $action AS theaction, inserted.column, deleted.column AS columnold, inserted.column as columnnew<br><br>
1. Q: What is nested DML?  
   A: Nested DML is a feature that you can use to directly insert into the final target table only the subset of rows you need from the full set of modified rows.<br><br>
1. Q: Write a query adding a new column to a table name PERSON. The new column name is DayOfBirth and the data type is string. Use ANSI SQL syntax.  
   A: ALTER TABLE person ADD dayofbirth string;<br><br>
1. Q: Write a query adding a DEFAULT constraint to the column DayOfBirth. The constraint is that the value matches one of SUN, MON, TUE, WED, THU, FRI, or SAT.  
   A: ALTER TABLE person ADD CONSTRAINT DF_dayofbirth DEFAULT CHECK('SUN' or 'MON' or 'TUE' or 'WED' or 'THU' or 'FRI' or 'SAT') FOR dayofbirth;<br><br>
1. Q: Write a query adding a foreign key to the column DayOfBirth. The referenced table is named WEEK and the referenced column is ValidDay.  
   A: ALTER TABLE person ADD CONSTRAINT FK_dayofbirth foreign key REFERENCES week(validday);<br><br>   
   