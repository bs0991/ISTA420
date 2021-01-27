# Chapter 3, T-SQL Query Fundamentals

## Discussion Questions

1. Q: In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.  
   A: You may want to join two tables together because there is information in two separate tables that you need to retrieve. <br><br>
1. Q: Describe in your own words the output from an *inner join*.  
   A: An *inner join*, like the *cross join*, also produces a Cartesian product. That an output that will all possible combinations between two tables. The difference betwee *cross* and *inner* is that the *inner join* then filters rows based on a predicate you specify. <br><br>
1. Q: Describe in your own words the output from an *outer join*.  
   A: An *outer join* also produces a Cartesian product, but applies a third phase called Adding Outer Rows. <br><br>
1. Q: Describe in your own words the output from an *cross join*.  
   A: A *cross join*, in my opinion, returns an output that reflects all possible combinations between two tables. <br><br>
1. Q: A convenient mnemonic for remembering the various joins is "Ohio". Why is this true?  
   A: O -inner, HI -left/right inner, O -full outer. <br><br>
1. Q: Give an example of a *composite join*.  
   A: A *composite join* is simply a join where you need to match multiple attributes from each side. A good example of this is if you need to query data from more than one table. <br><br>
1. Q: What is the difference between the following two queries? The business problem is "How many orders do we have from each customer?"  
   A: The first query is counting all C.custid entries as total number orders. The second query is only counting the C.custid's with corresponding O.orderid's as the total number of orders. <br><br>
1. Q: What might be one reason the following query does not return the colum *custID* in the query?  
   A: There may not be any C.custid entries that correspond with O.orderid where O.orderdate >= '20160101'. <br><br>
