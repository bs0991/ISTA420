# Chapter 02c, T-SQL Query Fundamentals

## Discussion Questions

1. Q: List the date/time types in T-SQL.  
   A: DATETIME, SMALLDATETIME, DATE, TIME, DATETIME2, and DATETIMEOFFSET<br><br>
1. Q: How do you express a date/time literal in T-SQL?  
   A: As a string literal 'YYYYMMDD'.<br><br>
1. Q: What is the setting DATEFORMAT used for?  
   A: Determines how SQL Server interprets the literals you enter when they are converted from a character-string type to a date and time type.<br><br>
1. Q: Write a T-SQL snippet changing the date format to German. Read the documentation on how to do this.  
   A: SET LANGUAGE German;  
      SELECT CAST ('01/25/2021) AS DATE);<br><br>
1. Q: What is the difference between CAST(), CONVERT(), AND PARSE()?  
   A: They are all used to convert one data type into another, but the CAST method accepts just two parameters while the CONVERT method takes a third parameter representing the format of conversion. CAST and CONVERT will accept any valid expression. PARSE will only accept a STRING value converting from STRING to date/time and number types only.<br><br>
1. Q: What function returns the current date?  
   A: GETDATE, CURRENT_TIMESTAMP, GETUTCDATE, SYSDATETIME, SYSUTCDATETIME, and SYSDATETIMEOFFSET. Prefer to use SYSTEMDATE TIME or CURRENT_TIMESTAMP.<br><br>
1. Q: How do you add one day to the current date? Add one week? Add one month? Add one year?  
   A: SELECT DATEADD (day, 1, '20210125'); (week, 1, '20210125');(month, 1, '20210125'); (year, 1, '20210125');<br><br>
1. Q: Write a SQL snippet to return the number of years between your birth date and today's date.  
   A: SELECT DATEDIFF (year, '19910906', '20210125');<br><br>
1. Q: How do you check a string literal to see it if represents a valid date?  
   A: SELECT ISDATE ('20210125'); If it is a valid date the code will return a 1, if not a 0.<br><br>
1. Q: What does EOMONTH() do? Give an example of why this might be very useful.  
   A: The EOMONTH function accepts an input date and time value and returns the respective end-of-month date as a DATE typed value. A good use of this would be to execute a query to see what the total sales were at the end of the month.<br><br>
1. Q: Payments are due exactly 30 days from the date of the last function. Write a select query that calculates the date of the next payment. Pretend we want to update a column in a database that contains the date of the next payment. We will do this when we write UPDATE queries.  
   A: SELECT DATEADD (day, 30, 'GETDATE');<br><br>
1. Q: Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday Write a select query that does this.  
   A: SELECT DATEDIFF (day, '19910906', 'GETDATE');<br><br>