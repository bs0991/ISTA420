# Chapter 02a, T-SQL Query Fundamentals

## Discussion Questsions

1. Q: List the order of execution of a SQL query.  
   A: Logical processing order: *FROM, WHERE, GROUP BY, HAVING COUNT, SELECT, ORDER BY*  
      Keyed-In-Order: *SELECT, FROM, WHERE, GROUP BY, HAVING COUNT, ORDER BY* <br><br>
1. Q: What does the *from* clause do?  
   A: The *FROM* clause allows you to specifiy the names of the tables you want to query and table operators that operate on those tables. Gets all of the rows from all of the tables. <br><br>
1. Q: What does the *where* clause do?  
   A: The *WHERE* (row filter) clause allows you to specify a predicate or logical expression to filter the rows returned by the *FROM* phase. <br><br>
1. Q: What does the *group by* clause do?  
   A: The *GROUP BY* (groups rows filtered by the *WHERE* clause) clause allows you to arrange the rows returned in groups. The groups are determined by the elements you specify in the *GROUP BY* clause. <br><br>
1. Q: What does the *having* clause do?  
   A: The *HAVING* (group filter) clause allows you to filter groups. Only groups for which the *HAVING* predicate evaluates *TRUE* are returned by the *HAVING* phase to the next logical query processing phase. <br><br>
1. Q: What does the *select* clause do?  
   A: The *SELECT* clause is where you specify the attributes (columns) you want to return in the result table for the query. It produces the result table of the query.  <br><br>
1. Q: What does the *distinct* keyword do?  
   A: The *DISTINCT* keyword is used to remove duplicate rows. <br><br>
1. Q: What does the *order by* clause do?  
   A: The *ORDER BY* cluase is used to sort the rows in the output for presentation purposes. In terms of logical processing, it is the very last clause to be processed. <br><br>
1. Q: What does the *limit* clause do?  
   A: The *LIMIT* clause is used to place an upper bound on the number of rows returned by the entire *SELECT* statement. This is not supported by T-SQL, but it is in standard SQL. <br><br>
1. Q: What does the *top* clause do?  
   A: The *TOP* clause is used to fetch the n% of top records from the table. <br><br>
1. Q: What do the *offset*...*fetch*...clauses do?  
   A: With the *OFFSET* clause you can indicate how many rows to skip. With the *FETCH* clause you indicate how many rows to filter after the skipped rows. Example: Think of shopping on Amazon. At the bottom of the page are page numbers to search through. This is *OFFSET / FETCH*. <br><br>     