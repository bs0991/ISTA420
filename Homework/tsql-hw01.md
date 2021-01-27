1. Q: "How does the book describe the difference between imperative and declarative languages?"
		A: The book describes an imperative language as a language used to describe HOW to do something,
		while a declarative language describes what to do.
	
2. Q: List three categories of command statements in SQL.
		A: Data Definition Lanaguage (DDL), Data Manipulation Language (DML), Data Control Language (DCL)
	
3. Q: Give an informal definition of database as used in the expression "relational database management
	system." Give an informal defintion of databse as used in the expression "Human Resources database."
		A: A relational database can be any database whose structure allows us to identify/compare data in
		relation with another piece of data in the same database. A human resources database is a structured
		database capabale of storing and retrieving employee information (e.g. payroll, position management, etc.).
	
4. Q: The book states that, "[t]he goal of the relational model is to enable consistent representation
	of data with minimal or no redundancy and without sacrificing completeness..." Briefly state your
	understanding of minimal or no redundancy and completeness. Why do you think that these values are
	important?
		A: I would say the goal of any program is to be as accurate and efficient as possible. If we repeat
		data unnecessarily, that could be memory lost. Also with repeating data you risk of mistakingly modifying a 
		data entry that you did not intend to modify. Likewise, if the data is not complete it cannot be guaranteed to be 100% accurate.

5. Q: What is the difference between two-valued logic, three-valued logic, and four-valued logic? How does
	SQL implement three valued predicate logic?
		A: In two-valued logic a predicate is either true or false. In three-valued logic a predicate can
		be either true, false or unknown. In four-valued logic a predicate can be either true, false, applicable
		or inapplicable. SQL implements three-valued predicate logic by "supporting the NULL marker to signify
		the generic concept of a missing value."
		
6. Q: How does SQL enforce entity integrity? What is entity integrity?
		A: Through primary keys. Entity integreity ensures there are no duplicate records within the table.
		Every object in a table has to be unique.
		
7. Q: How does SQL enforce referential integrity? What is referential integrity?
		A: Through foreign keys. Referential integrity refers to the accuracy of data within a relationship.
		
8. Q: What is a relation as deined in the textbook?
		A: A representation of a set.
		
9. Q: Relational databases are based on three mathematical concepts: set theory, predicate logic, and relational
	algebra.
		(a) Please give your brief understanding of set theory as described in the text. What is a set?
			A: A set is a collection of unique objects. Set theory is a mathematical branch that is defined by
			"sets" or a collection of unordered, unique objects.
		
		(b) Please give your brief understanding of predicate logic as described in the text. What is predicate
			logic?
			A: Predicate logic defines properties or expressions as either a true or false value. Predicate logic
			can be used to filter data and define subsets.
		
		(c) Please give your brief understanding of relational algebra. What is selection? What is projection?
			A: Relational algebra is the mathematical process in which relational databases yield output. Selection
			is a horizontal concept in how we choose rows. Projection is a vertical concept in how we choose columns.
	
10. Q: Is this table in first normal form? Why or why not? If it is not, how would you change it?
		
		create table faculty (
			facID int primary key,
			facName text,
			facCreds text);
			
		A: No, because there are repeating values in facCreds. I would create a seperate table to list facCreds
		then match them by facName.
		
		create faculty table (
			facID int,
			facName text);
			
		create credential table (
			credID int,
			credName text);
			
		create fac_cred table (
			facID int,
			credID int);
			<compound primary key>
		
11. Q: Is this table in second normal form? Why or why not? If it is not, how would you change it?

		create table pets (
			ownerID int primary key,
			petID int primary key,
			ownerFirstName text,
			ownerLastName text,
			petName text,
			petType text);
			
		A: No, because you have nonkey columns that do not depend on the entire compound primary key. This table as
		is, is considered 1NF.
		
			create owner table (
				ownerID int,
				ownerFirstName text,
				ownerLastName text);
				
			create pet table (
				petID int,
				petName text,
				petBreed text);
				
			create owner_pet table (
				petID int,
				ownerID int);
				<compound primary key petID, ownerID>
		
12. Q: Is this table in third normal form? Why or why not? If it is not, how would you change it?

		create table friends (
			friendID int primary key,
			friendName text,
			friendStreet text,
			friendCity text,
			friendState text,
			friendZip text);
			
		A: No, because there is a transitive dependency between City, State and Zip.
		
13. Q: List the components of a four-part object name.
		A: Server, Database, Schema, and Object
		
14. Q: What is the difference between declarative data integrity and procedural data integrity?
		A: Declarative data integrity is data integrity enforced as part of the table definitions. Procedural
		data integrity is data integrity enforced with code such as stored procedures or triggers.