# Chapter 02b, T-SQL Query Fundamentals

## Discussion Questions

1. Q: What is a data type? Why do we have data types?  
   A: A data type is an attribute that specifies the type of data that the object can hold: integer, character, monetary, date/time, binary strings, etc.. We have data types so we can input different types to our binary code within our program. <br><br>
1. Q: What is collation? Name four elements of a collation.  
   A: Collation is a property of character data that encapsulates language support, sort order, case sensitivity, accent sensitivity and more. The four elements of a collation are instance, database, column, and expression. <br><br>
1. Q: How would you strip whitespace from a string? For example, suppose you had "...Dave..." but wanted only "Dave".  
   A: Use the TRIM() function. *SELECT* TRIM ('...Dave...') AS TrimmedString; <br><br>
1. Q: Suppose you wanted to make a list of every college and university that was called an Institute from the college table. Write the query.  
   A: *SELECT* * from college where collegeName *LIKE* '%institute%';   <br><br>
1. Q: How would you find the number of the index of the first space in a string? For example, the index of the first space in "Barack Hussein Obama" would be 7.  
   A: T-SQL = *SELECT CHARINDEX*(' ', 'Barack Hussein Obama'); SQLite = *SELECT* INSTR('Barack Hussein Obama',' '); <br><br>
1. Q: How would you select the first name in a list of the presidents. Each record looks like this: "George Washington", "John Adams", "Thomas Jefferson". First names can be an arbitary length, from "Cal" to "Benjamin". (e.g. Cal College, Benjamin Harrison)  
   A: *SELECT* substr('Barack Hussien Obama', 1, instru('Barack Hussien Obama', ' '); <br><br>
1. Q: What is the order of precedence for the logical operators?  
   A: In order of highest to least precedence: *NOT*, *AND*, *OR*. <br><br>
1. Q: What is the order of precedence for the math operators?  
   A: In order of highest to least precedence: (*MULTIPLICATION, DIVISION, AND REMAINDER*), (*ADDITION, SUBTRACTION*)  <br><br>
1. Q: What is the difference between a simple and a searched CASE expression?  
   A: You use *SIMPLE* to compare one value or scalar expression with a list of possible values and return a value for the first match. The *SEARCHED* case expression evaluates a set of Boolean expressions to determine the result. <br><br>
1. Q: How would you turn a list of names like this: "LASTNAME, FIRSTNAME", to a list like this: "FIRSTNAME LASTNAME"?  
   A: *SELECT* substr('Lozano, Phil', instr('Lozano, Phil', ' ')+1) || ' ' || substr('Lozano, Phil', instr('Lozano, Phil', 1, (instr('Lozano, Phil', ',')-1); <br><br>
1. Q: How would you turn a list of names like this: "FIRSTNAME LASTNAME", to a list like this: "LASTNAME FIRSTNAME"?  
   A: *SELECT* substr('Phil Lozano', instr('Phil Lozano', ' ')+1) || ', ' || substr('Phil Lozano', instr('Phil Lozano', 1, (instr('Phil Lozano', ' ')-1);