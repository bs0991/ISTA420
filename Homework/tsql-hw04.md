# Chapeter 04, T-SQL Query Fundamentals

## Discussion Questions

1. Q: In your own words, what is a *subquery*?  
   A: A query nested in a larger query.
1. Q: In your own words, what is a *self contained subquery*?  
   A: A self contained subquery is still nested in a larger query, but is not dependent on the tables from the outer query.<br><br>
1. Q: In your own words, what is a *correlated subquery*?  
   A: A correlated subquery is a subquery that selects data from a table referenced in the outer query. Meaning it is dependent on the outer query and cannot be invoked independently. <br><br>
1. Q: Give an example of a subquery that returns a single value. When would you use this kind of subquery?  
   A: An example of this could be writing a query that provides you with the total number of employees within the table. SELECT COUNT(employeeid) from employees;<br><br>
1. Q: Give an example of a subquery that returns multiple values. When would you use this kind of subquery?  
   A: A subquery that returns a list of all orderIDs in a single column. SELECT orderid from orders;<br><br>
1. Q: Give an example of a subquery that returns table values. When would you use this kind of subquery?  
   A: Select * from (table). You can use this when you want to retrieve all of the information from a specific table.<br><br>
1. Q: What does the *exists* predicate do? Give an example.  
   A: The exists predicate accepts a subquery as input and returns true if the subquery returns any rows and false if otherwise.<br><br>
1. Q: What happens if we use the *not* operator before a predicate? Give an example.  
   A: Using the not operator before a predicate will negate that predicate.<br><br>
1. Q: When you use *exists* or *not exists* with respect to a row in a databse, does it return two or three values? Explain your answer.  
   A: The exists predicate uses two-valued logic. Meaning that the value either exists or it doesn't. There's no situation where it's unknown whether a query returns any rows.<br><br>
1. Q: How would you use a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.  
   A: You would query one instance to return the year/total sales for that specific product/year and then create another instance to calculate the running total. The subquery would filter the rows where the year is less than or equal to the current year and then sum the quantities for total sales for each year.<br><br>