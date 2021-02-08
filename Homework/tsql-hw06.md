# Chapter 06, T-SQL Query Fundamentals

## Discussion Questions

1. Q: What does a set operator do?  
   A: Set operators are operators that combine complete rows from two query result sets (or multisets). <br><br>
1. Q: What are the general requirements of a set operator?  
   A: A set operator must have multisets as inputs and the two queries cannot have *ORDER BY* clauses becuase an *ORDER BY* clause returns a cursor not a multiset. The two queries must also produce results with the same number of columns and corresponding columns must have compatible data types.<br><br>
1. Q: What is a Venn Diagram? What does it do?  
   A: A Venn Diagram is a diagram that uses overalapping circles to show illustrate the logical relationships between a collection of different sets.<br><br>
1. Q: Draw a Venn Diagram of the UNION operator. What does it do?  
   A: A UNION Venn Diagram will unify the results of two queries and eliminate duplicates.<br><br>
1. Q: Draw a Venn Diagram of the UNION ALL operator. What does it do?  
   A: A UNION ALL Venn Diagram will unify the results of two queries without eliminating duplicates.<br><br>
1. Q: Draw a Venn Diagram of the INTERSECT operator. What does it do?  
   A: A INTERSECT Venn Diagram will only return the results or rows that are common to both input queries.<br><br>
1. Q: If SQL Server supported the INTERSECT ALL operator, what would it do?  
   A: INTERSECT ALL will return the number of duplicate rows matching the lower of the counts from both input multisets. For example, if (UK, NULL, London) appears four times in E.Employees and six times in C.Customers, INTERSECT ALL will return four occurrences in the output.<br><br>
1. Q: Draw a Venn Diagram of the EXCEPT operator. What does it do?  
   A: A EXCEPT Venn Diagram will return results that appear in the first input, but not the second.<br><br>
1. Q: If SQL Server supported the EXCEPT ALL operator, what would it do?  
   A: EXCEPT ALL will return only occurrences of a row from the first multiset that does not have a corresponding occurerrence in the second.<br><br>
1. Q: What is the precedence of the set operators?  
   A: The INTERSECT operator precedes UNION and EXCEPT, and UNION and EXCEPT are evaluated in order of appearance. Using the ALL variant doesnt change the precedence. In a query that contains multiple set operators, first INTERSECT operators are evaluated and then operators with the same precedence are evaluated based on their order of appearance.<br><br>
1. Q: The symmetric difference of two sets A and B is all elements in A that are also not in A and B, and all
elements of B that are also not in A and B. For example, if set A consisted of all integers between 1 and
100 that are divisible by 2, and set B consisted of all integers between 1 and 100 that are divisible by
3, the symmetric difference of A and B would include all integers in A and B except integers divisible
by both 2 and 3, e.g., 6, 12, 18, etc. Write a SQL query that computes the symmetric difference of two
tables A and B.  
   A: (SELECT * FROM A
	  MINUS
	  SELECT * FROM B)
	  UNION ALL
	  (SELECT * FROM B
	  MINUS
	  SELECT * FROM A);

 