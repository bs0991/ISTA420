. headers on

-- Name: Brandon Scott
-- File: myfamilyScott.sql
-- Date: January 12, 2021

drop table if exists myfamily;

create table myfamily (
	id int primary key,
	name text,
	sex int,
	role text,
	occupation text
	);
	
insert into myfamily values (1, "Brandon", 1, "Husband", "Cloud Engineer");
insert into myfamily values (2, "Christy", 0, "Wife", "Registered Nurse");
insert into myfamily values (3, "Calli", 0, "Pet", "Eating");
insert into myfamily values (4, "Harvey", 1, "Pet", "Sleeping");
insert into myfamily values (5, "Tim", 1, "Dad", "Highway Patrol Officer");
insert into myfamily values (6, "Lori", 0, "Mom", "Office Administrator");

select * from myfamily;
id|name|sex|role|occupation
1|Brandon|1|Husband|Cloud Engineer
2|Christy|0|Wife|Registered Nurse
3|Calli|0|Pet|Eating
4|Harvey|1|Pet|Sleeping
5|Tim|1|Dad|Highway Patrol Officer
6|Lori|0|Mom|Office Administrator
select * from myfamily where role like "Pet";
id|name|sex|role|occupation
3|Calli|0|Pet|Eating
4|Harvey|1|Pet|Sleeping
select * from myfamily where sex = 0;
id|name|sex|role|occupation
2|Christy|0|Wife|Registered Nurse
3|Calli|0|Pet|Eating
6|Lori|0|Mom|Office Administrator
select * from myfamily where occupation like "Registered Nurse";
id|name|sex|role|occupation
2|Christy|0|Wife|Registered Nurse

