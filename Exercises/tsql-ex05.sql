-- Name: Brandon Scott
-- File: tsql-ex05.sql
-- Date: February 10, 2021

--You must use SQL Server to complete this exercise. Complete the following tasks. Look at the csv le
--named \data\USPresidents.csv in the data directory. Invoke SSMS, and complete the following steps.
--Your deliverable should be a plain text le (.txt) that contains a header showing your name, the name of
--the assignment, and the date. The body of the text le should echo the SQL statement you use to complete
--each step of the exercise and the results of the query.

--1. Create an appropriate table schema.

--2. Insert the CSV data into the table you just created.

--3. Delete the column that contains the path to the images.

--4. Delete the rst record from your table using the output clause. This is the header.

	--• You may combine the following two steps.

	--• Alter the presidents table by adding an integer column, beginning at 1 and ending at 44, that is
	--NOT NULL and UNIQUE.

	--• Alter the presidents table by adding the column you created as a primary key column with a new
	--constraint.

--5. Bring the data up to date by updating the last row. Use the output clause.

--6. Bring the data up to date by adding a new row. Use the output clause.

--7. How many presidents from each state belonged to the various political parties? Aggregate by party
--and state. Note that this will in effect be a pivot table.

--8. Create a report showing the number of days each president was in office.

--9. Create a report showing the age (in years) of each present when he took office.

--10. See if there is any correlation between a president's party and reported religion, or lack of reported
--religion.

use TSQLV4;

drop table if exists dbo.Presidents;

create table dbo.Presidents
(
  ID int not null,
 "Last Name" varchar(50) not null,
 "First Name" varchar(50) not null,
 "Middle Name" varchar(50) not null,
 "Order of Presidency" varchar(50) not null,
 "Date of Birth" varchar(50) not null,
 "Date of Death" varchar(50) not null,
 "Town or County of Birth" varchar(50) not null,
 "State of Birth" varchar(50) not null,
 "Home State" varchar(50) not null,
 "Party Affiliation" varchar(50) not null,
 "Date Took Office" varchar(50) not null,
 "Date Left Office" varchar(50) not null,
 "Assassination Attempt" varchar(50) not null,
 Assassinated varchar(50) not null,
 "Religious Affliation" varchar(50) not null,
 "Image Path" varchar(50) null
 );

 select * from Presidents;

alter table dbo.Presidents
drop column "Image Path";

alter table dbo.Presidents
add constraint PK_ID primary key (ID);

update dbo.Presidents
set "Date Left Office" = '2017-01-20', "Assassination Attempt" = 'false', "Assassinated" = 'false'
where ID = 44;

insert into dbo.Presidents
values (45, 'Trump', 'Donald', 'John', 45, '1946-06-14', ' ', 'New York', 'New York', 'New York', 'Republican', '2017-01-20', '2021-01-20', 'false', 'false', 'Unaffiliated Christian');

insert into dbo.Presidents
values (46, 'Biden', 'Joseph', 'Robinette', 46, '1942-11-20', ' ', 'Scranton', 'Pennsylvania', 'Pennsylvania', 'Democrat', '2021-01-20', ' ', 'false', 'false', 'Roman Catholic');

select count(ID) as total, "Home State", "Party Affiliation"
from Presidents
group by "Home State", "Party Affiliation";

select ID, "Last Name", "First Name", datediff(day, "Date Took Office", "Date Left Office") as TotalDays
from Presidents;

select ID, "Last Name", "First Name", datediff(year, "Date of Birth", "Date Took Office") as age
from Presidents;

select count(ID) as total, "Party Affiliation", "Religious Affliation"
from Presidents
group by "Party Affiliation", "Religious Affliation"
order by "Party Affiliation" desc;
