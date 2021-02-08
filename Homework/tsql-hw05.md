# Chapter 05, T-SQL Query Fundamentals

## Discussion Questions

1. Q: What is a table expression? Can you give a technical definition of a table expression?  
   A: A virtual table that only exists temporaily as we execute that query. You won't be able to reference this later.<br><br>
1. Q: In what SQL clause are derived tables (table valued subqueries) located?  
   A: They are defined in the *FROM* cluase of an outer query then specified in parentheses followed by the AS clause.<br><br>
1. Q: Why can you refer to column aliases in an outer query that you defined in an inner table valued subquery?  
   A: You can refer to an alias from the SELECT clause in the outer query after you have defined it in the FROM clause in the inner query. You can do this because subqueries are executed before the main query.<br><br>
1. Q: What SQL key word defines a common table expression?  
   A: WITH statement<br><br>
1. Q: When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?  
   A: Yes, because the CTE is named and defined first before being queried.<br><br>
1. Q: Can a main query refer to a previously defined common table expression by multiple aliases?  
   A: Yes, because the CTE is named and defined first before being queried.<br><br>
1. Q: In SQL, is a view a durable object?  
   A: Yes, becuase a query definition is stored as a permanent object in the database, making them reusable. The data is NOT copied.<br><br>
1. Q: In a view, what does WITH CHECK OPTION do? Why is this important?  
   A: The WITH CHECK option prevents a view from updating or inserting rows that aren't visible through it.<br><br>
1. Q: In a view, what does SCHEMABINDING do? Why is this important?  
   A: It binds the object to the schema of all the underlying tables and views. This will allow you to protect the view from any unexpected changes to the tables underneath. <br><br>
1. Q: What is a table valued function?  
   A: It is a user defined function that returns data of a table type.<br><br>
1. Q: What does the APPLY operator do?  
   A: It allows us to invoke a table-valued function for each row returned by an outer table expression of a query.<br><br>
1. Q: What are the two forms of the APPLY operator? Give an example of each.  
   A: CROSS and OUTER.<br><br>