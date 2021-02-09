# Chapter 07, T-SQL Query Fundamentals

## Discussion Questions

1. Q: What is a window function?  
   A: A window function is a function that, for each row, computes a scalar result value based on a calculation against a subset of the rows from the underlying query.<br><br>
1. Q: What does PARTITION do?  
   A: The window-partition clause restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row.<br><br>
1. Q: What does ORDER BY do?  
   A: The window-order clause defines ordering for each partitioned row.<br><br>
1. Q: What does ROWS BETWEEN do?  
   A: The window-frame clause, ROWS BETWEEN, filters a frame, or a subset, of rows from the window partition between the two specified delimiters.<br><br>
1. Q: What is a ranking window function? Why would you use it? Give an example.  
   A: You use a ranking window function to rank each row with respect to others in the window.<br><br>
1. Q: What is an offset window function? Why would you use it? Give an example.  
   A: You use offset window functions to return an element from a row that is at a certain offset from the current row or at the beginning or end of a window frame.<br><br>
1. Q: What do LEAD and LAG do?  
   A: The LAG and LEAD functions support window paritions and window order clauses. You use these to obtain an element from a row that is at a certain offset from the current row within the partition, based on the indicated ordering.<br><br>
1. Q: What do FIRST_VALUE and LAST_VALUE do?  
   A: You use the FISRT_VALUE and LAST_VALUE functions to return an element from the first and last rows in the window frame, respectively.<br><br>
1. Q: What is an aggregate window function? Why would you use it? Give an example.  
   A: You use the aggregate window functions to aggregate the rows in the defined window. <br><br>
1. Q: What is a pivot table and what does it do?  
   A: A pivot table involves pivoting data which is rotating data from a state of rows to a state of columns. Unvpivoting data is rotated from columns to rows.<br><br>
1. Q: In mathematical theory, what is a *power set*? How does this definition of power set relate to *grouping sets*?  
   A: In mathematical theory, a power set is a set of all the subsets of a set. Grouping sets wokrs similar in that you can use it to define multiple grouping sets in the same query. List the grouping sets you want, separated by commans within the parentheses of the *GROUPING SETS* subclause.<br><br>
1. Q: What is a *bit array*? How can you implement a bit array to represent a set of flags? How does the GROUPING_ID() function implement a bit array?  
   A: A bit array is an array data structure that compactly stores bits. You can use the GROUPING_ID funtion and specify the elements within to return an integer bitmap in which each bit represents a different input element.<br><br>
1. Q: Read the documentation on the UNIX/LINUX chmod command. How would you interpret this command: chmod 755 myscript.sql?  
   A: When you perform chmod 755 myscript.sql you allow everyone to read and execute the file, the owner is allowed to write to the file as well.<br><br> 