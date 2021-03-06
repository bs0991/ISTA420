.headers on

-- Name: Brandon Scott
-- File: lab03-Scott.sql
-- Date: January 26, 2021

-- 1. What is the order number and the date of each order sold by each employee?
select e.employeeid, e.titleofcourtesy, e.firstname, e.lastname, o.orderid, o.orderdate from employees e inner join orders o on e.employeeid = o.employeeid;
EmployeeID|TitleOfCourtesy|FirstName|LastName|OrderID|OrderDate
1|Ms.|Nancy|Davolio|10258|1996-07-17
1|Ms.|Nancy|Davolio|10270|1996-08-01
1|Ms.|Nancy|Davolio|10275|1996-08-07
1|Ms.|Nancy|Davolio|10285|1996-08-20
1|Ms.|Nancy|Davolio|10292|1996-08-28
1|Ms.|Nancy|Davolio|10293|1996-08-29
1|Ms.|Nancy|Davolio|10304|1996-09-12
1|Ms.|Nancy|Davolio|10306|1996-09-16
1|Ms.|Nancy|Davolio|10311|1996-09-20
1|Ms.|Nancy|Davolio|10314|1996-09-25
1|Ms.|Nancy|Davolio|10316|1996-09-27
1|Ms.|Nancy|Davolio|10325|1996-10-09
1|Ms.|Nancy|Davolio|10340|1996-10-29
1|Ms.|Nancy|Davolio|10351|1996-11-11
1|Ms.|Nancy|Davolio|10357|1996-11-19
1|Ms.|Nancy|Davolio|10361|1996-11-22
1|Ms.|Nancy|Davolio|10364|1996-11-26
1|Ms.|Nancy|Davolio|10371|1996-12-03
1|Ms.|Nancy|Davolio|10374|1996-12-05
1|Ms.|Nancy|Davolio|10376|1996-12-09
1|Ms.|Nancy|Davolio|10377|1996-12-09
1|Ms.|Nancy|Davolio|10385|1996-12-17
1|Ms.|Nancy|Davolio|10387|1996-12-18
1|Ms.|Nancy|Davolio|10393|1996-12-25
1|Ms.|Nancy|Davolio|10394|1996-12-25
1|Ms.|Nancy|Davolio|10396|1996-12-27
1|Ms.|Nancy|Davolio|10400|1997-01-01
1|Ms.|Nancy|Davolio|10401|1997-01-01
1|Ms.|Nancy|Davolio|10405|1997-01-06
1|Ms.|Nancy|Davolio|10453|1997-02-21
1|Ms.|Nancy|Davolio|10461|1997-02-28
1|Ms.|Nancy|Davolio|10465|1997-03-05
1|Ms.|Nancy|Davolio|10469|1997-03-10
1|Ms.|Nancy|Davolio|10473|1997-03-13
1|Ms.|Nancy|Davolio|10482|1997-03-21
1|Ms.|Nancy|Davolio|10486|1997-03-26
1|Ms.|Nancy|Davolio|10508|1997-04-16
1|Ms.|Nancy|Davolio|10524|1997-05-01
1|Ms.|Nancy|Davolio|10525|1997-05-02
1|Ms.|Nancy|Davolio|10537|1997-05-14
1|Ms.|Nancy|Davolio|10542|1997-05-20
1|Ms.|Nancy|Davolio|10546|1997-05-23
1|Ms.|Nancy|Davolio|10558|1997-06-04
1|Ms.|Nancy|Davolio|10562|1997-06-09
1|Ms.|Nancy|Davolio|10567|1997-06-12
1|Ms.|Nancy|Davolio|10579|1997-06-25
1|Ms.|Nancy|Davolio|10587|1997-07-02
1|Ms.|Nancy|Davolio|10591|1997-07-07
1|Ms.|Nancy|Davolio|10598|1997-07-14
1|Ms.|Nancy|Davolio|10604|1997-07-18
1|Ms.|Nancy|Davolio|10605|1997-07-21
1|Ms.|Nancy|Davolio|10612|1997-07-28
1|Ms.|Nancy|Davolio|10616|1997-07-31
1|Ms.|Nancy|Davolio|10618|1997-08-01
1|Ms.|Nancy|Davolio|10626|1997-08-11
1|Ms.|Nancy|Davolio|10630|1997-08-13
1|Ms.|Nancy|Davolio|10653|1997-09-02
1|Ms.|Nancy|Davolio|10655|1997-09-03
1|Ms.|Nancy|Davolio|10664|1997-09-10
1|Ms.|Nancy|Davolio|10665|1997-09-11
1|Ms.|Nancy|Davolio|10668|1997-09-15
1|Ms.|Nancy|Davolio|10671|1997-09-17
1|Ms.|Nancy|Davolio|10677|1997-09-22
1|Ms.|Nancy|Davolio|10680|1997-09-24
1|Ms.|Nancy|Davolio|10689|1997-10-01
1|Ms.|Nancy|Davolio|10690|1997-10-02
1|Ms.|Nancy|Davolio|10709|1997-10-17
1|Ms.|Nancy|Davolio|10710|1997-10-20
1|Ms.|Nancy|Davolio|10713|1997-10-22
1|Ms.|Nancy|Davolio|10717|1997-10-24
1|Ms.|Nancy|Davolio|10718|1997-10-27
1|Ms.|Nancy|Davolio|10733|1997-11-07
1|Ms.|Nancy|Davolio|10743|1997-11-17
1|Ms.|Nancy|Davolio|10746|1997-11-19
1|Ms.|Nancy|Davolio|10773|1997-12-11
1|Ms.|Nancy|Davolio|10776|1997-12-15
1|Ms.|Nancy|Davolio|10785|1997-12-18
1|Ms.|Nancy|Davolio|10788|1997-12-22
1|Ms.|Nancy|Davolio|10789|1997-12-22
1|Ms.|Nancy|Davolio|10792|1997-12-23
1|Ms.|Nancy|Davolio|10800|1997-12-26
1|Ms.|Nancy|Davolio|10813|1998-01-05
1|Ms.|Nancy|Davolio|10821|1998-01-08
1|Ms.|Nancy|Davolio|10825|1998-01-09
1|Ms.|Nancy|Davolio|10827|1998-01-12
1|Ms.|Nancy|Davolio|10834|1998-01-15
1|Ms.|Nancy|Davolio|10835|1998-01-15
1|Ms.|Nancy|Davolio|10842|1998-01-20
1|Ms.|Nancy|Davolio|10850|1998-01-23
1|Ms.|Nancy|Davolio|10859|1998-01-29
1|Ms.|Nancy|Davolio|10877|1998-02-09
1|Ms.|Nancy|Davolio|10886|1998-02-13
1|Ms.|Nancy|Davolio|10888|1998-02-16
1|Ms.|Nancy|Davolio|10894|1998-02-18
1|Ms.|Nancy|Davolio|10900|1998-02-20
1|Ms.|Nancy|Davolio|10902|1998-02-23
1|Ms.|Nancy|Davolio|10909|1998-02-26
1|Ms.|Nancy|Davolio|10910|1998-02-26
1|Ms.|Nancy|Davolio|10916|1998-02-27
1|Ms.|Nancy|Davolio|10921|1998-03-03
1|Ms.|Nancy|Davolio|10928|1998-03-05
1|Ms.|Nancy|Davolio|10946|1998-03-12
1|Ms.|Nancy|Davolio|10950|1998-03-16
1|Ms.|Nancy|Davolio|10952|1998-03-16
1|Ms.|Nancy|Davolio|10968|1998-03-23
1|Ms.|Nancy|Davolio|10969|1998-03-23
1|Ms.|Nancy|Davolio|10975|1998-03-25
1|Ms.|Nancy|Davolio|10976|1998-03-25
1|Ms.|Nancy|Davolio|10981|1998-03-27
1|Ms.|Nancy|Davolio|10984|1998-03-30
1|Ms.|Nancy|Davolio|10991|1998-04-01
1|Ms.|Nancy|Davolio|10992|1998-04-01
1|Ms.|Nancy|Davolio|10995|1998-04-02
1|Ms.|Nancy|Davolio|11012|1998-04-09
1|Ms.|Nancy|Davolio|11023|1998-04-14
1|Ms.|Nancy|Davolio|11027|1998-04-16
1|Ms.|Nancy|Davolio|11038|1998-04-21
1|Ms.|Nancy|Davolio|11039|1998-04-21
1|Ms.|Nancy|Davolio|11064|1998-05-01
1|Ms.|Nancy|Davolio|11067|1998-05-04
1|Ms.|Nancy|Davolio|11069|1998-05-04
1|Ms.|Nancy|Davolio|11071|1998-05-05
1|Ms.|Nancy|Davolio|11077|1998-05-06
2|Dr.|Andrew|Fuller|10265|1996-07-25
2|Dr.|Andrew|Fuller|10277|1996-08-09
2|Dr.|Andrew|Fuller|10280|1996-08-14
2|Dr.|Andrew|Fuller|10295|1996-09-02
2|Dr.|Andrew|Fuller|10300|1996-09-09
2|Dr.|Andrew|Fuller|10307|1996-09-17
2|Dr.|Andrew|Fuller|10312|1996-09-23
2|Dr.|Andrew|Fuller|10313|1996-09-24
2|Dr.|Andrew|Fuller|10327|1996-10-11
2|Dr.|Andrew|Fuller|10339|1996-10-28
2|Dr.|Andrew|Fuller|10345|1996-11-04
2|Dr.|Andrew|Fuller|10368|1996-11-29
2|Dr.|Andrew|Fuller|10379|1996-12-11
2|Dr.|Andrew|Fuller|10388|1996-12-19
2|Dr.|Andrew|Fuller|10392|1996-12-24
2|Dr.|Andrew|Fuller|10398|1996-12-30
2|Dr.|Andrew|Fuller|10404|1997-01-03
2|Dr.|Andrew|Fuller|10407|1997-01-07
2|Dr.|Andrew|Fuller|10414|1997-01-14
2|Dr.|Andrew|Fuller|10422|1997-01-22
2|Dr.|Andrew|Fuller|10457|1997-02-25
2|Dr.|Andrew|Fuller|10462|1997-03-03
2|Dr.|Andrew|Fuller|10471|1997-03-11
2|Dr.|Andrew|Fuller|10478|1997-03-18
2|Dr.|Andrew|Fuller|10487|1997-03-26
2|Dr.|Andrew|Fuller|10502|1997-04-10
2|Dr.|Andrew|Fuller|10515|1997-04-23
2|Dr.|Andrew|Fuller|10516|1997-04-24
2|Dr.|Andrew|Fuller|10541|1997-05-19
2|Dr.|Andrew|Fuller|10552|1997-05-29
2|Dr.|Andrew|Fuller|10553|1997-05-30
2|Dr.|Andrew|Fuller|10556|1997-06-03
2|Dr.|Andrew|Fuller|10561|1997-06-06
2|Dr.|Andrew|Fuller|10563|1997-06-10
2|Dr.|Andrew|Fuller|10583|1997-06-30
2|Dr.|Andrew|Fuller|10588|1997-07-03
2|Dr.|Andrew|Fuller|10595|1997-07-10
2|Dr.|Andrew|Fuller|10615|1997-07-30
2|Dr.|Andrew|Fuller|10620|1997-08-05
2|Dr.|Andrew|Fuller|10657|1997-09-04
2|Dr.|Andrew|Fuller|10663|1997-09-10
2|Dr.|Andrew|Fuller|10669|1997-09-15
2|Dr.|Andrew|Fuller|10673|1997-09-18
2|Dr.|Andrew|Fuller|10676|1997-09-22
2|Dr.|Andrew|Fuller|10683|1997-09-26
2|Dr.|Andrew|Fuller|10686|1997-09-30
2|Dr.|Andrew|Fuller|10691|1997-10-03
2|Dr.|Andrew|Fuller|10727|1997-11-03
2|Dr.|Andrew|Fuller|10734|1997-11-07
2|Dr.|Andrew|Fuller|10737|1997-11-11
2|Dr.|Andrew|Fuller|10738|1997-11-12
2|Dr.|Andrew|Fuller|10752|1997-11-24
2|Dr.|Andrew|Fuller|10780|1997-12-16
2|Dr.|Andrew|Fuller|10781|1997-12-17
2|Dr.|Andrew|Fuller|10787|1997-12-19
2|Dr.|Andrew|Fuller|10798|1997-12-26
2|Dr.|Andrew|Fuller|10805|1997-12-30
2|Dr.|Andrew|Fuller|10808|1998-01-01
2|Dr.|Andrew|Fuller|10810|1998-01-01
2|Dr.|Andrew|Fuller|10815|1998-01-05
2|Dr.|Andrew|Fuller|10819|1998-01-07
2|Dr.|Andrew|Fuller|10832|1998-01-14
2|Dr.|Andrew|Fuller|10846|1998-01-22
2|Dr.|Andrew|Fuller|10858|1998-01-29
2|Dr.|Andrew|Fuller|10865|1998-02-02
2|Dr.|Andrew|Fuller|10912|1998-02-26
2|Dr.|Andrew|Fuller|10915|1998-02-27
2|Dr.|Andrew|Fuller|10919|1998-03-02
2|Dr.|Andrew|Fuller|10939|1998-03-10
2|Dr.|Andrew|Fuller|10949|1998-03-13
2|Dr.|Andrew|Fuller|10967|1998-03-23
2|Dr.|Andrew|Fuller|10971|1998-03-24
2|Dr.|Andrew|Fuller|10982|1998-03-27
2|Dr.|Andrew|Fuller|10983|1998-03-27
2|Dr.|Andrew|Fuller|10985|1998-03-30
2|Dr.|Andrew|Fuller|10989|1998-03-31
2|Dr.|Andrew|Fuller|10990|1998-04-01
2|Dr.|Andrew|Fuller|10994|1998-04-02
2|Dr.|Andrew|Fuller|11000|1998-04-06
2|Dr.|Andrew|Fuller|11001|1998-04-06
2|Dr.|Andrew|Fuller|11005|1998-04-07
2|Dr.|Andrew|Fuller|11009|1998-04-08
2|Dr.|Andrew|Fuller|11010|1998-04-09
2|Dr.|Andrew|Fuller|11013|1998-04-09
2|Dr.|Andrew|Fuller|11014|1998-04-10
2|Dr.|Andrew|Fuller|11015|1998-04-10
2|Dr.|Andrew|Fuller|11020|1998-04-14
2|Dr.|Andrew|Fuller|11028|1998-04-16
2|Dr.|Andrew|Fuller|11032|1998-04-17
2|Dr.|Andrew|Fuller|11035|1998-04-20
2|Dr.|Andrew|Fuller|11042|1998-04-22
2|Dr.|Andrew|Fuller|11053|1998-04-27
2|Dr.|Andrew|Fuller|11059|1998-04-29
2|Dr.|Andrew|Fuller|11060|1998-04-30
2|Dr.|Andrew|Fuller|11070|1998-05-05
2|Dr.|Andrew|Fuller|11073|1998-05-05
3|Ms.|Janet|Leverling|10251|1996-07-08
3|Ms.|Janet|Leverling|10253|1996-07-10
3|Ms.|Janet|Leverling|10256|1996-07-15
3|Ms.|Janet|Leverling|10266|1996-07-26
3|Ms.|Janet|Leverling|10273|1996-08-05
3|Ms.|Janet|Leverling|10283|1996-08-16
3|Ms.|Janet|Leverling|10309|1996-09-19
3|Ms.|Janet|Leverling|10321|1996-10-03
3|Ms.|Janet|Leverling|10330|1996-10-16
3|Ms.|Janet|Leverling|10332|1996-10-17
3|Ms.|Janet|Leverling|10346|1996-11-05
3|Ms.|Janet|Leverling|10352|1996-11-12
3|Ms.|Janet|Leverling|10362|1996-11-25
3|Ms.|Janet|Leverling|10365|1996-11-27
3|Ms.|Janet|Leverling|10375|1996-12-06
3|Ms.|Janet|Leverling|10381|1996-12-12
3|Ms.|Janet|Leverling|10384|1996-12-16
3|Ms.|Janet|Leverling|10391|1996-12-23
3|Ms.|Janet|Leverling|10409|1997-01-09
3|Ms.|Janet|Leverling|10410|1997-01-10
3|Ms.|Janet|Leverling|10413|1997-01-14
3|Ms.|Janet|Leverling|10415|1997-01-15
3|Ms.|Janet|Leverling|10420|1997-01-21
3|Ms.|Janet|Leverling|10429|1997-01-29
3|Ms.|Janet|Leverling|10432|1997-01-31
3|Ms.|Janet|Leverling|10433|1997-02-03
3|Ms.|Janet|Leverling|10434|1997-02-03
3|Ms.|Janet|Leverling|10436|1997-02-05
3|Ms.|Janet|Leverling|10438|1997-02-06
3|Ms.|Janet|Leverling|10441|1997-02-10
3|Ms.|Janet|Leverling|10442|1997-02-11
3|Ms.|Janet|Leverling|10444|1997-02-12
3|Ms.|Janet|Leverling|10445|1997-02-13
3|Ms.|Janet|Leverling|10449|1997-02-18
3|Ms.|Janet|Leverling|10468|1997-03-07
3|Ms.|Janet|Leverling|10479|1997-03-19
3|Ms.|Janet|Leverling|10484|1997-03-24
3|Ms.|Janet|Leverling|10492|1997-04-01
3|Ms.|Janet|Leverling|10495|1997-04-03
3|Ms.|Janet|Leverling|10505|1997-04-14
3|Ms.|Janet|Leverling|10514|1997-04-22
3|Ms.|Janet|Leverling|10517|1997-04-24
3|Ms.|Janet|Leverling|10530|1997-05-08
3|Ms.|Janet|Leverling|10536|1997-05-14
3|Ms.|Janet|Leverling|10540|1997-05-19
3|Ms.|Janet|Leverling|10547|1997-05-23
3|Ms.|Janet|Leverling|10548|1997-05-26
3|Ms.|Janet|Leverling|10568|1997-06-13
3|Ms.|Janet|Leverling|10570|1997-06-17
3|Ms.|Janet|Leverling|10572|1997-06-18
3|Ms.|Janet|Leverling|10576|1997-06-23
3|Ms.|Janet|Leverling|10581|1997-06-26
3|Ms.|Janet|Leverling|10582|1997-06-27
3|Ms.|Janet|Leverling|10592|1997-07-08
3|Ms.|Janet|Leverling|10594|1997-07-09
3|Ms.|Janet|Leverling|10619|1997-08-04
3|Ms.|Janet|Leverling|10625|1997-08-08
3|Ms.|Janet|Leverling|10638|1997-08-20
3|Ms.|Janet|Leverling|10644|1997-08-25
3|Ms.|Janet|Leverling|10662|1997-09-09
3|Ms.|Janet|Leverling|10681|1997-09-25
3|Ms.|Janet|Leverling|10682|1997-09-25
3|Ms.|Janet|Leverling|10684|1997-09-26
3|Ms.|Janet|Leverling|10693|1997-10-06
3|Ms.|Janet|Leverling|10697|1997-10-08
3|Ms.|Janet|Leverling|10699|1997-10-09
3|Ms.|Janet|Leverling|10700|1997-10-10
3|Ms.|Janet|Leverling|10712|1997-10-21
3|Ms.|Janet|Leverling|10715|1997-10-23
3|Ms.|Janet|Leverling|10723|1997-10-30
3|Ms.|Janet|Leverling|10732|1997-11-06
3|Ms.|Janet|Leverling|10739|1997-11-12
3|Ms.|Janet|Leverling|10742|1997-11-14
3|Ms.|Janet|Leverling|10748|1997-11-20
3|Ms.|Janet|Leverling|10751|1997-11-24
3|Ms.|Janet|Leverling|10753|1997-11-25
3|Ms.|Janet|Leverling|10758|1997-11-28
3|Ms.|Janet|Leverling|10759|1997-11-28
3|Ms.|Janet|Leverling|10762|1997-12-02
3|Ms.|Janet|Leverling|10763|1997-12-03
3|Ms.|Janet|Leverling|10765|1997-12-04
3|Ms.|Janet|Leverling|10768|1997-12-08
3|Ms.|Janet|Leverling|10769|1997-12-08
3|Ms.|Janet|Leverling|10772|1997-12-10
3|Ms.|Janet|Leverling|10778|1997-12-16
3|Ms.|Janet|Leverling|10779|1997-12-16
3|Ms.|Janet|Leverling|10793|1997-12-24
3|Ms.|Janet|Leverling|10796|1997-12-25
3|Ms.|Janet|Leverling|10806|1997-12-31
3|Ms.|Janet|Leverling|10814|1998-01-05
3|Ms.|Janet|Leverling|10817|1998-01-06
3|Ms.|Janet|Leverling|10820|1998-01-07
3|Ms.|Janet|Leverling|10831|1998-01-14
3|Ms.|Janet|Leverling|10838|1998-01-19
3|Ms.|Janet|Leverling|10839|1998-01-19
3|Ms.|Janet|Leverling|10854|1998-01-27
3|Ms.|Janet|Leverling|10855|1998-01-27
3|Ms.|Janet|Leverling|10856|1998-01-28
3|Ms.|Janet|Leverling|10860|1998-01-29
3|Ms.|Janet|Leverling|10879|1998-02-10
3|Ms.|Janet|Leverling|10895|1998-02-18
3|Ms.|Janet|Leverling|10897|1998-02-19
3|Ms.|Janet|Leverling|10903|1998-02-24
3|Ms.|Janet|Leverling|10904|1998-02-24
3|Ms.|Janet|Leverling|10911|1998-02-26
3|Ms.|Janet|Leverling|10918|1998-03-02
3|Ms.|Janet|Leverling|10924|1998-03-04
3|Ms.|Janet|Leverling|10925|1998-03-04
3|Ms.|Janet|Leverling|10934|1998-03-09
3|Ms.|Janet|Leverling|10936|1998-03-09
3|Ms.|Janet|Leverling|10938|1998-03-10
3|Ms.|Janet|Leverling|10947|1998-03-13
3|Ms.|Janet|Leverling|10948|1998-03-13
3|Ms.|Janet|Leverling|10960|1998-03-19
3|Ms.|Janet|Leverling|10964|1998-03-20
3|Ms.|Janet|Leverling|10974|1998-03-25
3|Ms.|Janet|Leverling|10988|1998-03-31
3|Ms.|Janet|Leverling|11003|1998-04-06
3|Ms.|Janet|Leverling|11004|1998-04-07
3|Ms.|Janet|Leverling|11006|1998-04-07
3|Ms.|Janet|Leverling|11011|1998-04-09
3|Ms.|Janet|Leverling|11021|1998-04-14
3|Ms.|Janet|Leverling|11041|1998-04-22
3|Ms.|Janet|Leverling|11049|1998-04-24
3|Ms.|Janet|Leverling|11052|1998-04-27
3|Ms.|Janet|Leverling|11057|1998-04-29
3|Ms.|Janet|Leverling|11063|1998-04-30
4|Mrs.|Margaret|Peacock|10250|1996-07-08
4|Mrs.|Margaret|Peacock|10252|1996-07-09
4|Mrs.|Margaret|Peacock|10257|1996-07-16
4|Mrs.|Margaret|Peacock|10259|1996-07-18
4|Mrs.|Margaret|Peacock|10260|1996-07-19
4|Mrs.|Margaret|Peacock|10261|1996-07-19
4|Mrs.|Margaret|Peacock|10267|1996-07-29
4|Mrs.|Margaret|Peacock|10281|1996-08-14
4|Mrs.|Margaret|Peacock|10282|1996-08-15
4|Mrs.|Margaret|Peacock|10284|1996-08-19
4|Mrs.|Margaret|Peacock|10288|1996-08-23
4|Mrs.|Margaret|Peacock|10294|1996-08-30
4|Mrs.|Margaret|Peacock|10299|1996-09-06
4|Mrs.|Margaret|Peacock|10302|1996-09-10
4|Mrs.|Margaret|Peacock|10315|1996-09-26
4|Mrs.|Margaret|Peacock|10323|1996-10-07
4|Mrs.|Margaret|Peacock|10326|1996-10-10
4|Mrs.|Margaret|Peacock|10328|1996-10-14
4|Mrs.|Margaret|Peacock|10329|1996-10-15
4|Mrs.|Margaret|Peacock|10337|1996-10-24
4|Mrs.|Margaret|Peacock|10338|1996-10-25
4|Mrs.|Margaret|Peacock|10342|1996-10-30
4|Mrs.|Margaret|Peacock|10343|1996-10-31
4|Mrs.|Margaret|Peacock|10344|1996-11-01
4|Mrs.|Margaret|Peacock|10347|1996-11-06
4|Mrs.|Margaret|Peacock|10348|1996-11-07
4|Mrs.|Margaret|Peacock|10360|1996-11-22
4|Mrs.|Margaret|Peacock|10363|1996-11-26
4|Mrs.|Margaret|Peacock|10373|1996-12-05
4|Mrs.|Margaret|Peacock|10382|1996-12-13
4|Mrs.|Margaret|Peacock|10389|1996-12-20
4|Mrs.|Margaret|Peacock|10403|1997-01-03
4|Mrs.|Margaret|Peacock|10417|1997-01-16
4|Mrs.|Margaret|Peacock|10418|1997-01-17
4|Mrs.|Margaret|Peacock|10419|1997-01-20
4|Mrs.|Margaret|Peacock|10426|1997-01-27
4|Mrs.|Margaret|Peacock|10427|1997-01-27
4|Mrs.|Margaret|Peacock|10430|1997-01-30
4|Mrs.|Margaret|Peacock|10431|1997-01-30
4|Mrs.|Margaret|Peacock|10440|1997-02-10
4|Mrs.|Margaret|Peacock|10447|1997-02-14
4|Mrs.|Margaret|Peacock|10448|1997-02-17
4|Mrs.|Margaret|Peacock|10451|1997-02-19
4|Mrs.|Margaret|Peacock|10454|1997-02-21
4|Mrs.|Margaret|Peacock|10459|1997-02-27
4|Mrs.|Margaret|Peacock|10464|1997-03-04
4|Mrs.|Margaret|Peacock|10466|1997-03-06
4|Mrs.|Margaret|Peacock|10470|1997-03-11
4|Mrs.|Margaret|Peacock|10485|1997-03-25
4|Mrs.|Margaret|Peacock|10493|1997-04-02
4|Mrs.|Margaret|Peacock|10494|1997-04-02
4|Mrs.|Margaret|Peacock|10499|1997-04-08
4|Mrs.|Margaret|Peacock|10504|1997-04-11
4|Mrs.|Margaret|Peacock|10509|1997-04-17
4|Mrs.|Margaret|Peacock|10511|1997-04-18
4|Mrs.|Margaret|Peacock|10518|1997-04-25
4|Mrs.|Margaret|Peacock|10522|1997-04-30
4|Mrs.|Margaret|Peacock|10526|1997-05-05
4|Mrs.|Margaret|Peacock|10535|1997-05-13
4|Mrs.|Margaret|Peacock|10544|1997-05-21
4|Mrs.|Margaret|Peacock|10551|1997-05-28
4|Mrs.|Margaret|Peacock|10554|1997-05-30
4|Mrs.|Margaret|Peacock|10564|1997-06-10
4|Mrs.|Margaret|Peacock|10574|1997-06-19
4|Mrs.|Margaret|Peacock|10578|1997-06-24
4|Mrs.|Margaret|Peacock|10580|1997-06-26
4|Mrs.|Margaret|Peacock|10584|1997-06-30
4|Mrs.|Margaret|Peacock|10590|1997-07-07
4|Mrs.|Margaret|Peacock|10600|1997-07-16
4|Mrs.|Margaret|Peacock|10606|1997-07-22
4|Mrs.|Margaret|Peacock|10608|1997-07-23
4|Mrs.|Margaret|Peacock|10613|1997-07-29
4|Mrs.|Margaret|Peacock|10617|1997-07-31
4|Mrs.|Margaret|Peacock|10621|1997-08-05
4|Mrs.|Margaret|Peacock|10622|1997-08-06
4|Mrs.|Margaret|Peacock|10624|1997-08-07
4|Mrs.|Margaret|Peacock|10628|1997-08-12
4|Mrs.|Margaret|Peacock|10629|1997-08-12
4|Mrs.|Margaret|Peacock|10634|1997-08-15
4|Mrs.|Margaret|Peacock|10636|1997-08-19
4|Mrs.|Margaret|Peacock|10640|1997-08-21
4|Mrs.|Margaret|Peacock|10641|1997-08-22
4|Mrs.|Margaret|Peacock|10645|1997-08-26
4|Mrs.|Margaret|Peacock|10647|1997-08-27
4|Mrs.|Margaret|Peacock|10652|1997-09-01
4|Mrs.|Margaret|Peacock|10658|1997-09-05
4|Mrs.|Margaret|Peacock|10670|1997-09-16
4|Mrs.|Margaret|Peacock|10674|1997-09-18
4|Mrs.|Margaret|Peacock|10685|1997-09-29
4|Mrs.|Margaret|Peacock|10688|1997-10-01
4|Mrs.|Margaret|Peacock|10692|1997-10-03
4|Mrs.|Margaret|Peacock|10698|1997-10-09
4|Mrs.|Margaret|Peacock|10702|1997-10-13
4|Mrs.|Margaret|Peacock|10707|1997-10-16
4|Mrs.|Margaret|Peacock|10716|1997-10-24
4|Mrs.|Margaret|Peacock|10725|1997-10-31
4|Mrs.|Margaret|Peacock|10726|1997-11-03
4|Mrs.|Margaret|Peacock|10728|1997-11-04
4|Mrs.|Margaret|Peacock|10740|1997-11-13
4|Mrs.|Margaret|Peacock|10741|1997-11-14
4|Mrs.|Margaret|Peacock|10749|1997-11-20
4|Mrs.|Margaret|Peacock|10755|1997-11-26
4|Mrs.|Margaret|Peacock|10760|1997-12-01
4|Mrs.|Margaret|Peacock|10766|1997-12-05
4|Mrs.|Margaret|Peacock|10767|1997-12-05
4|Mrs.|Margaret|Peacock|10774|1997-12-11
4|Mrs.|Margaret|Peacock|10783|1997-12-18
4|Mrs.|Margaret|Peacock|10784|1997-12-18
4|Mrs.|Margaret|Peacock|10801|1997-12-29
4|Mrs.|Margaret|Peacock|10802|1997-12-29
4|Mrs.|Margaret|Peacock|10803|1997-12-30
4|Mrs.|Margaret|Peacock|10807|1997-12-31
4|Mrs.|Margaret|Peacock|10816|1998-01-06
4|Mrs.|Margaret|Peacock|10830|1998-01-13
4|Mrs.|Margaret|Peacock|10840|1998-01-19
4|Mrs.|Margaret|Peacock|10843|1998-01-21
4|Mrs.|Margaret|Peacock|10847|1998-01-22
4|Mrs.|Margaret|Peacock|10861|1998-01-30
4|Mrs.|Margaret|Peacock|10863|1998-02-02
4|Mrs.|Margaret|Peacock|10864|1998-02-02
4|Mrs.|Margaret|Peacock|10873|1998-02-06
4|Mrs.|Margaret|Peacock|10875|1998-02-06
4|Mrs.|Margaret|Peacock|10878|1998-02-10
4|Mrs.|Margaret|Peacock|10881|1998-02-11
4|Mrs.|Margaret|Peacock|10882|1998-02-11
4|Mrs.|Margaret|Peacock|10884|1998-02-12
4|Mrs.|Margaret|Peacock|10892|1998-02-17
4|Mrs.|Margaret|Peacock|10898|1998-02-20
4|Mrs.|Margaret|Peacock|10901|1998-02-23
4|Mrs.|Margaret|Peacock|10906|1998-02-25
4|Mrs.|Margaret|Peacock|10908|1998-02-26
4|Mrs.|Margaret|Peacock|10913|1998-02-26
4|Mrs.|Margaret|Peacock|10917|1998-03-02
4|Mrs.|Margaret|Peacock|10920|1998-03-03
4|Mrs.|Margaret|Peacock|10926|1998-03-04
4|Mrs.|Margaret|Peacock|10927|1998-03-05
4|Mrs.|Margaret|Peacock|10930|1998-03-06
4|Mrs.|Margaret|Peacock|10931|1998-03-06
4|Mrs.|Margaret|Peacock|10935|1998-03-09
4|Mrs.|Margaret|Peacock|10943|1998-03-11
4|Mrs.|Margaret|Peacock|10945|1998-03-12
4|Mrs.|Margaret|Peacock|10966|1998-03-20
4|Mrs.|Margaret|Peacock|10972|1998-03-24
4|Mrs.|Margaret|Peacock|10980|1998-03-27
4|Mrs.|Margaret|Peacock|10996|1998-04-02
4|Mrs.|Margaret|Peacock|11002|1998-04-06
4|Mrs.|Margaret|Peacock|11018|1998-04-13
4|Mrs.|Margaret|Peacock|11024|1998-04-15
4|Mrs.|Margaret|Peacock|11026|1998-04-15
4|Mrs.|Margaret|Peacock|11029|1998-04-16
4|Mrs.|Margaret|Peacock|11040|1998-04-22
4|Mrs.|Margaret|Peacock|11044|1998-04-23
4|Mrs.|Margaret|Peacock|11061|1998-04-30
4|Mrs.|Margaret|Peacock|11062|1998-04-30
4|Mrs.|Margaret|Peacock|11072|1998-05-05
4|Mrs.|Margaret|Peacock|11076|1998-05-06
5|Mr.|Steven|Buchanan|10248|1996-07-04
5|Mr.|Steven|Buchanan|10254|1996-07-11
5|Mr.|Steven|Buchanan|10269|1996-07-31
5|Mr.|Steven|Buchanan|10297|1996-09-04
5|Mr.|Steven|Buchanan|10320|1996-10-03
5|Mr.|Steven|Buchanan|10333|1996-10-18
5|Mr.|Steven|Buchanan|10358|1996-11-20
5|Mr.|Steven|Buchanan|10359|1996-11-21
5|Mr.|Steven|Buchanan|10372|1996-12-04
5|Mr.|Steven|Buchanan|10378|1996-12-10
5|Mr.|Steven|Buchanan|10397|1996-12-27
5|Mr.|Steven|Buchanan|10463|1997-03-04
5|Mr.|Steven|Buchanan|10474|1997-03-13
5|Mr.|Steven|Buchanan|10477|1997-03-17
5|Mr.|Steven|Buchanan|10529|1997-05-07
5|Mr.|Steven|Buchanan|10549|1997-05-27
5|Mr.|Steven|Buchanan|10569|1997-06-16
5|Mr.|Steven|Buchanan|10575|1997-06-20
5|Mr.|Steven|Buchanan|10607|1997-07-22
5|Mr.|Steven|Buchanan|10648|1997-08-28
5|Mr.|Steven|Buchanan|10649|1997-08-28
5|Mr.|Steven|Buchanan|10650|1997-08-29
5|Mr.|Steven|Buchanan|10654|1997-09-02
5|Mr.|Steven|Buchanan|10675|1997-09-19
5|Mr.|Steven|Buchanan|10711|1997-10-21
5|Mr.|Steven|Buchanan|10714|1997-10-22
5|Mr.|Steven|Buchanan|10721|1997-10-29
5|Mr.|Steven|Buchanan|10730|1997-11-05
5|Mr.|Steven|Buchanan|10761|1997-12-02
5|Mr.|Steven|Buchanan|10812|1998-01-02
5|Mr.|Steven|Buchanan|10823|1998-01-09
5|Mr.|Steven|Buchanan|10841|1998-01-20
5|Mr.|Steven|Buchanan|10851|1998-01-26
5|Mr.|Steven|Buchanan|10866|1998-02-03
5|Mr.|Steven|Buchanan|10869|1998-02-04
5|Mr.|Steven|Buchanan|10870|1998-02-04
5|Mr.|Steven|Buchanan|10872|1998-02-05
5|Mr.|Steven|Buchanan|10874|1998-02-06
5|Mr.|Steven|Buchanan|10899|1998-02-20
5|Mr.|Steven|Buchanan|10922|1998-03-03
5|Mr.|Steven|Buchanan|10954|1998-03-17
5|Mr.|Steven|Buchanan|11043|1998-04-22
6|Mr.|Michael|Suyama|10249|1996-07-05
6|Mr.|Michael|Suyama|10264|1996-07-24
6|Mr.|Michael|Suyama|10271|1996-08-01
6|Mr.|Michael|Suyama|10272|1996-08-02
6|Mr.|Michael|Suyama|10274|1996-08-06
6|Mr.|Michael|Suyama|10291|1996-08-27
6|Mr.|Michael|Suyama|10296|1996-09-03
6|Mr.|Michael|Suyama|10298|1996-09-05
6|Mr.|Michael|Suyama|10317|1996-09-30
6|Mr.|Michael|Suyama|10350|1996-11-11
6|Mr.|Michael|Suyama|10355|1996-11-15
6|Mr.|Michael|Suyama|10356|1996-11-18
6|Mr.|Michael|Suyama|10370|1996-12-03
6|Mr.|Michael|Suyama|10390|1996-12-23
6|Mr.|Michael|Suyama|10395|1996-12-26
6|Mr.|Michael|Suyama|10423|1997-01-23
6|Mr.|Michael|Suyama|10425|1997-01-24
6|Mr.|Michael|Suyama|10439|1997-02-07
6|Mr.|Michael|Suyama|10446|1997-02-14
6|Mr.|Michael|Suyama|10480|1997-03-20
6|Mr.|Michael|Suyama|10489|1997-03-28
6|Mr.|Michael|Suyama|10500|1997-04-09
6|Mr.|Michael|Suyama|10503|1997-04-11
6|Mr.|Michael|Suyama|10510|1997-04-18
6|Mr.|Michael|Suyama|10519|1997-04-28
6|Mr.|Michael|Suyama|10528|1997-05-06
6|Mr.|Michael|Suyama|10539|1997-05-16
6|Mr.|Michael|Suyama|10555|1997-06-02
6|Mr.|Michael|Suyama|10559|1997-06-05
6|Mr.|Michael|Suyama|10599|1997-07-15
6|Mr.|Michael|Suyama|10611|1997-07-25
6|Mr.|Michael|Suyama|10637|1997-08-19
6|Mr.|Michael|Suyama|10643|1997-08-25
6|Mr.|Michael|Suyama|10656|1997-09-04
6|Mr.|Michael|Suyama|10701|1997-10-13
6|Mr.|Michael|Suyama|10703|1997-10-14
6|Mr.|Michael|Suyama|10704|1997-10-14
6|Mr.|Michael|Suyama|10708|1997-10-17
6|Mr.|Michael|Suyama|10735|1997-11-10
6|Mr.|Michael|Suyama|10744|1997-11-17
6|Mr.|Michael|Suyama|10747|1997-11-19
6|Mr.|Michael|Suyama|10754|1997-11-25
6|Mr.|Michael|Suyama|10757|1997-11-27
6|Mr.|Michael|Suyama|10764|1997-12-03
6|Mr.|Michael|Suyama|10790|1997-12-22
6|Mr.|Michael|Suyama|10791|1997-12-23
6|Mr.|Michael|Suyama|10794|1997-12-24
6|Mr.|Michael|Suyama|10804|1997-12-30
6|Mr.|Michael|Suyama|10822|1998-01-08
6|Mr.|Michael|Suyama|10826|1998-01-12
6|Mr.|Michael|Suyama|10833|1998-01-15
6|Mr.|Michael|Suyama|10867|1998-02-03
6|Mr.|Michael|Suyama|10885|1998-02-12
6|Mr.|Michael|Suyama|10907|1998-02-25
6|Mr.|Michael|Suyama|10914|1998-02-27
6|Mr.|Michael|Suyama|10929|1998-03-05
6|Mr.|Michael|Suyama|10933|1998-03-06
6|Mr.|Michael|Suyama|10944|1998-03-12
6|Mr.|Michael|Suyama|10956|1998-03-17
6|Mr.|Michael|Suyama|10959|1998-03-18
6|Mr.|Michael|Suyama|10965|1998-03-20
6|Mr.|Michael|Suyama|10973|1998-03-24
6|Mr.|Michael|Suyama|10999|1998-04-03
6|Mr.|Michael|Suyama|11019|1998-04-13
6|Mr.|Michael|Suyama|11025|1998-04-15
6|Mr.|Michael|Suyama|11031|1998-04-17
6|Mr.|Michael|Suyama|11045|1998-04-23
7|Mr.|Robert|King|10289|1996-08-26
7|Mr.|Robert|King|10303|1996-09-11
7|Mr.|Robert|King|10308|1996-09-18
7|Mr.|Robert|King|10319|1996-10-02
7|Mr.|Robert|King|10322|1996-10-04
7|Mr.|Robert|King|10335|1996-10-22
7|Mr.|Robert|King|10336|1996-10-23
7|Mr.|Robert|King|10341|1996-10-29
7|Mr.|Robert|King|10349|1996-11-08
7|Mr.|Robert|King|10353|1996-11-13
7|Mr.|Robert|King|10367|1996-11-28
7|Mr.|Robert|King|10406|1997-01-07
7|Mr.|Robert|King|10424|1997-01-23
7|Mr.|Robert|King|10428|1997-01-28
7|Mr.|Robert|King|10458|1997-02-26
7|Mr.|Robert|King|10483|1997-03-24
7|Mr.|Robert|King|10490|1997-03-31
7|Mr.|Robert|King|10496|1997-04-04
7|Mr.|Robert|King|10497|1997-04-04
7|Mr.|Robert|King|10507|1997-04-15
7|Mr.|Robert|King|10512|1997-04-21
7|Mr.|Robert|King|10513|1997-04-22
7|Mr.|Robert|King|10520|1997-04-29
7|Mr.|Robert|King|10523|1997-05-01
7|Mr.|Robert|King|10527|1997-05-05
7|Mr.|Robert|King|10531|1997-05-08
7|Mr.|Robert|King|10532|1997-05-09
7|Mr.|Robert|King|10550|1997-05-28
7|Mr.|Robert|King|10573|1997-06-19
7|Mr.|Robert|King|10585|1997-07-01
7|Mr.|Robert|King|10593|1997-07-09
7|Mr.|Robert|King|10597|1997-07-11
7|Mr.|Robert|King|10601|1997-07-16
7|Mr.|Robert|King|10609|1997-07-24
7|Mr.|Robert|King|10633|1997-08-15
7|Mr.|Robert|King|10639|1997-08-20
7|Mr.|Robert|King|10642|1997-08-22
7|Mr.|Robert|King|10659|1997-09-05
7|Mr.|Robert|King|10661|1997-09-09
7|Mr.|Robert|King|10666|1997-09-12
7|Mr.|Robert|King|10667|1997-09-12
7|Mr.|Robert|King|10678|1997-09-23
7|Mr.|Robert|King|10695|1997-10-07
7|Mr.|Robert|King|10731|1997-11-06
7|Mr.|Robert|King|10775|1997-12-12
7|Mr.|Robert|King|10777|1997-12-15
7|Mr.|Robert|King|10797|1997-12-25
7|Mr.|Robert|King|10809|1998-01-01
7|Mr.|Robert|King|10818|1998-01-07
7|Mr.|Robert|King|10836|1998-01-16
7|Mr.|Robert|King|10848|1998-01-23
7|Mr.|Robert|King|10868|1998-02-04
7|Mr.|Robert|King|10876|1998-02-09
7|Mr.|Robert|King|10880|1998-02-10
7|Mr.|Robert|King|10890|1998-02-16
7|Mr.|Robert|King|10891|1998-02-17
7|Mr.|Robert|King|10896|1998-02-19
7|Mr.|Robert|King|10923|1998-03-03
7|Mr.|Robert|King|10937|1998-03-10
7|Mr.|Robert|King|10941|1998-03-11
7|Mr.|Robert|King|10958|1998-03-18
7|Mr.|Robert|King|10993|1998-04-01
7|Mr.|Robert|King|11008|1998-04-08
7|Mr.|Robert|King|11030|1998-04-17
7|Mr.|Robert|King|11033|1998-04-17
7|Mr.|Robert|King|11037|1998-04-21
7|Mr.|Robert|King|11047|1998-04-24
7|Mr.|Robert|King|11048|1998-04-24
7|Mr.|Robert|King|11051|1998-04-27
7|Mr.|Robert|King|11055|1998-04-28
7|Mr.|Robert|King|11066|1998-05-01
7|Mr.|Robert|King|11074|1998-05-06
8|Ms.|Laura|Callahan|10262|1996-07-22
8|Ms.|Laura|Callahan|10268|1996-07-30
8|Ms.|Laura|Callahan|10276|1996-08-08
8|Ms.|Laura|Callahan|10278|1996-08-12
8|Ms.|Laura|Callahan|10279|1996-08-13
8|Ms.|Laura|Callahan|10286|1996-08-21
8|Ms.|Laura|Callahan|10287|1996-08-22
8|Ms.|Laura|Callahan|10290|1996-08-27
8|Ms.|Laura|Callahan|10301|1996-09-09
8|Ms.|Laura|Callahan|10305|1996-09-13
8|Ms.|Laura|Callahan|10310|1996-09-20
8|Ms.|Laura|Callahan|10318|1996-10-01
8|Ms.|Laura|Callahan|10334|1996-10-21
8|Ms.|Laura|Callahan|10354|1996-11-14
8|Ms.|Laura|Callahan|10366|1996-11-28
8|Ms.|Laura|Callahan|10369|1996-12-02
8|Ms.|Laura|Callahan|10380|1996-12-12
8|Ms.|Laura|Callahan|10383|1996-12-16
8|Ms.|Laura|Callahan|10399|1996-12-31
8|Ms.|Laura|Callahan|10402|1997-01-02
8|Ms.|Laura|Callahan|10408|1997-01-08
8|Ms.|Laura|Callahan|10412|1997-01-13
8|Ms.|Laura|Callahan|10416|1997-01-16
8|Ms.|Laura|Callahan|10421|1997-01-21
8|Ms.|Laura|Callahan|10435|1997-02-04
8|Ms.|Laura|Callahan|10437|1997-02-05
8|Ms.|Laura|Callahan|10443|1997-02-12
8|Ms.|Laura|Callahan|10450|1997-02-19
8|Ms.|Laura|Callahan|10452|1997-02-20
8|Ms.|Laura|Callahan|10455|1997-02-24
8|Ms.|Laura|Callahan|10456|1997-02-25
8|Ms.|Laura|Callahan|10460|1997-02-28
8|Ms.|Laura|Callahan|10467|1997-03-06
8|Ms.|Laura|Callahan|10472|1997-03-12
8|Ms.|Laura|Callahan|10476|1997-03-17
8|Ms.|Laura|Callahan|10481|1997-03-20
8|Ms.|Laura|Callahan|10488|1997-03-27
8|Ms.|Laura|Callahan|10491|1997-03-31
8|Ms.|Laura|Callahan|10498|1997-04-07
8|Ms.|Laura|Callahan|10521|1997-04-29
8|Ms.|Laura|Callahan|10533|1997-05-12
8|Ms.|Laura|Callahan|10534|1997-05-12
8|Ms.|Laura|Callahan|10543|1997-05-21
8|Ms.|Laura|Callahan|10545|1997-05-22
8|Ms.|Laura|Callahan|10560|1997-06-06
8|Ms.|Laura|Callahan|10565|1997-06-11
8|Ms.|Laura|Callahan|10571|1997-06-17
8|Ms.|Laura|Callahan|10589|1997-07-04
8|Ms.|Laura|Callahan|10596|1997-07-11
8|Ms.|Laura|Callahan|10602|1997-07-17
8|Ms.|Laura|Callahan|10603|1997-07-18
8|Ms.|Laura|Callahan|10610|1997-07-25
8|Ms.|Laura|Callahan|10614|1997-07-29
8|Ms.|Laura|Callahan|10623|1997-08-07
8|Ms.|Laura|Callahan|10627|1997-08-11
8|Ms.|Laura|Callahan|10631|1997-08-14
8|Ms.|Laura|Callahan|10632|1997-08-14
8|Ms.|Laura|Callahan|10635|1997-08-18
8|Ms.|Laura|Callahan|10651|1997-09-01
8|Ms.|Laura|Callahan|10660|1997-09-08
8|Ms.|Laura|Callahan|10679|1997-09-23
8|Ms.|Laura|Callahan|10694|1997-10-06
8|Ms.|Laura|Callahan|10696|1997-10-08
8|Ms.|Laura|Callahan|10706|1997-10-16
8|Ms.|Laura|Callahan|10719|1997-10-27
8|Ms.|Laura|Callahan|10720|1997-10-28
8|Ms.|Laura|Callahan|10722|1997-10-29
8|Ms.|Laura|Callahan|10724|1997-10-30
8|Ms.|Laura|Callahan|10729|1997-11-04
8|Ms.|Laura|Callahan|10756|1997-11-27
8|Ms.|Laura|Callahan|10770|1997-12-09
8|Ms.|Laura|Callahan|10786|1997-12-19
8|Ms.|Laura|Callahan|10795|1997-12-24
8|Ms.|Laura|Callahan|10811|1998-01-02
8|Ms.|Laura|Callahan|10824|1998-01-09
8|Ms.|Laura|Callahan|10844|1998-01-21
8|Ms.|Laura|Callahan|10845|1998-01-21
8|Ms.|Laura|Callahan|10852|1998-01-26
8|Ms.|Laura|Callahan|10857|1998-01-28
8|Ms.|Laura|Callahan|10862|1998-01-30
8|Ms.|Laura|Callahan|10883|1998-02-12
8|Ms.|Laura|Callahan|10887|1998-02-13
8|Ms.|Laura|Callahan|10932|1998-03-06
8|Ms.|Laura|Callahan|10940|1998-03-11
8|Ms.|Laura|Callahan|10955|1998-03-17
8|Ms.|Laura|Callahan|10957|1998-03-18
8|Ms.|Laura|Callahan|10961|1998-03-19
8|Ms.|Laura|Callahan|10962|1998-03-19
8|Ms.|Laura|Callahan|10977|1998-03-26
8|Ms.|Laura|Callahan|10979|1998-03-26
8|Ms.|Laura|Callahan|10986|1998-03-30
8|Ms.|Laura|Callahan|10987|1998-03-31
8|Ms.|Laura|Callahan|10997|1998-04-03
8|Ms.|Laura|Callahan|10998|1998-04-03
8|Ms.|Laura|Callahan|11007|1998-04-08
8|Ms.|Laura|Callahan|11034|1998-04-20
8|Ms.|Laura|Callahan|11036|1998-04-20
8|Ms.|Laura|Callahan|11046|1998-04-23
8|Ms.|Laura|Callahan|11050|1998-04-27
8|Ms.|Laura|Callahan|11054|1998-04-28
8|Ms.|Laura|Callahan|11056|1998-04-28
8|Ms.|Laura|Callahan|11065|1998-05-01
8|Ms.|Laura|Callahan|11068|1998-05-04
8|Ms.|Laura|Callahan|11075|1998-05-06
9|Ms.|Anne|Dodsworth|10255|1996-07-12
9|Ms.|Anne|Dodsworth|10263|1996-07-23
9|Ms.|Anne|Dodsworth|10324|1996-10-08
9|Ms.|Anne|Dodsworth|10331|1996-10-16
9|Ms.|Anne|Dodsworth|10386|1996-12-18
9|Ms.|Anne|Dodsworth|10411|1997-01-10
9|Ms.|Anne|Dodsworth|10475|1997-03-14
9|Ms.|Anne|Dodsworth|10501|1997-04-09
9|Ms.|Anne|Dodsworth|10506|1997-04-15
9|Ms.|Anne|Dodsworth|10538|1997-05-15
9|Ms.|Anne|Dodsworth|10557|1997-06-03
9|Ms.|Anne|Dodsworth|10566|1997-06-12
9|Ms.|Anne|Dodsworth|10577|1997-06-23
9|Ms.|Anne|Dodsworth|10586|1997-07-02
9|Ms.|Anne|Dodsworth|10646|1997-08-27
9|Ms.|Anne|Dodsworth|10672|1997-09-17
9|Ms.|Anne|Dodsworth|10687|1997-09-30
9|Ms.|Anne|Dodsworth|10705|1997-10-15
9|Ms.|Anne|Dodsworth|10736|1997-11-11
9|Ms.|Anne|Dodsworth|10745|1997-11-18
9|Ms.|Anne|Dodsworth|10750|1997-11-21
9|Ms.|Anne|Dodsworth|10771|1997-12-10
9|Ms.|Anne|Dodsworth|10782|1997-12-17
9|Ms.|Anne|Dodsworth|10799|1997-12-26
9|Ms.|Anne|Dodsworth|10828|1998-01-13
9|Ms.|Anne|Dodsworth|10829|1998-01-13
9|Ms.|Anne|Dodsworth|10837|1998-01-16
9|Ms.|Anne|Dodsworth|10849|1998-01-23
9|Ms.|Anne|Dodsworth|10853|1998-01-27
9|Ms.|Anne|Dodsworth|10871|1998-02-05
9|Ms.|Anne|Dodsworth|10889|1998-02-16
9|Ms.|Anne|Dodsworth|10893|1998-02-18
9|Ms.|Anne|Dodsworth|10905|1998-02-24
9|Ms.|Anne|Dodsworth|10942|1998-03-11
9|Ms.|Anne|Dodsworth|10951|1998-03-16
9|Ms.|Anne|Dodsworth|10953|1998-03-16
9|Ms.|Anne|Dodsworth|10963|1998-03-19
9|Ms.|Anne|Dodsworth|10970|1998-03-24
9|Ms.|Anne|Dodsworth|10978|1998-03-26
9|Ms.|Anne|Dodsworth|11016|1998-04-10
9|Ms.|Anne|Dodsworth|11017|1998-04-13
9|Ms.|Anne|Dodsworth|11022|1998-04-14
9|Ms.|Anne|Dodsworth|11058|1998-04-29

-- 2. List each territory by region.
select t.territoryid, t.territorydescription, r.regionid, r.regiondescription from territories t inner join region r on t.regionid = r.regionid order by r.regiondescription;
TerritoryID|TerritoryDescription|RegionID|RegionDescription
01581|Westboro|1|Eastern                                           
01730|Bedford|1|Eastern                                           
01833|Georgetow|1|Eastern                                           
02116|Boston|1|Eastern                                           
02139|Cambridge|1|Eastern                                           
02184|Braintree|1|Eastern                                           
02903|Providence|1|Eastern                                           
06897|Wilton|1|Eastern                                           
07960|Morristown|1|Eastern                                           
08837|Edison|1|Eastern                                           
10019|NewYork|1|Eastern                                           
10038|NewYork|1|Eastern                                           
11747|Mellvile|1|Eastern                                           
14450|Fairport|1|Eastern                                           
19713|Neward|1|Eastern                                           
20852|Rockville|1|Eastern                                           
27403|Greensboro|1|Eastern                                           
27511|Cary|1|Eastern                                           
40222|Louisville|1|Eastern                                           
03049|Hollis|3|Northern                                          
03801|Portsmouth|3|Northern                                          
19428|Philadelphia|3|Northern                                          
44122|Beachwood|3|Northern                                          
45839|Findlay|3|Northern                                          
48075|Southfield|3|Northern                                          
48084|Troy|3|Northern                                          
48304|BloomfieldHills|3|Northern                                          
53404|Racine|3|Northern                                          
55113|Roseville|3|Northern                                          
55439|Minneapolis|3|Northern                                          
29202|Columbia|4|Southern
30346|Atlanta|4|Southern
31406|Savannah|4|Southern
32859|Orlando|4|Southern
33607|Tampa|4|Southern
72716|Bentonville|4|Southern
75234|Dallas|4|Southern
78759|Austin|4|Southern
60179|HoffmanEstates|2|Western                                           
60601|Chicago|2|Western                                           
80202|Denver|2|Western                                           
80909|ColoradoSprings|2|Western                                           
85014|Phoenix|2|Western                                           
85251|Scottsdale|2|Western                                           
90405|SantaMonica|2|Western                                           
94025|MenloPark|2|Western                                           
94105|SanFrancisco|2|Western                                           
95008|Campbell|2|Western                                           
95054|SantaClara|2|Western                                           
95060|SantaCruz|2|Western                                           
98004|Bellevue|2|Western                                           
98052|Redmond|2|Western                                           
98104|Seattle|2|Western                                           

-- 3. What is the supplier name for each product alphabetically by supplier?
select s.supplierid, s.companyname, s.contacttitle, s.contactname, p.productid, p.productname from suppliers s join products p on s.supplierid = p.supplierid order by s.companyname asc;
SupplierID|CompanyName|ContactTitle|ContactName|ProductID|ProductName
18|Aux joyeux ecclésiastiques|Sales Manager|Guylène Nodier|38|Côte de Blaye
18|Aux joyeux ecclésiastiques|Sales Manager|Guylène Nodier|39|Chartreuse verte
16|Bigfoot Breweries|Regional Account Rep.|Cheryl Saylor|34|Sasquatch Ale
16|Bigfoot Breweries|Regional Account Rep.|Cheryl Saylor|35|Steeleye Stout
16|Bigfoot Breweries|Regional Account Rep.|Cheryl Saylor|67|Laughing Lumberjack Lager
5|Cooperativa de Quesos 'Las Cabras'|Export Administrator|Antonio del Valle Saavedra|11|Queso Cabrales
5|Cooperativa de Quesos 'Las Cabras'|Export Administrator|Antonio del Valle Saavedra|12|Queso Manchego La Pastora
27|Escargots Nouveaux|Sales Manager|Marie Delamare|58|Escargots de Bourgogne
1|Exotic Liquids|Purchasing Manager|Charlotte Cooper|1|Chai
1|Exotic Liquids|Purchasing Manager|Charlotte Cooper|2|Chang
1|Exotic Liquids|Purchasing Manager|Charlotte Cooper|3|Aniseed Syrup
14|Formaggi Fortini s.r.l.|Sales Representative|Elio Rossi|31|Gorgonzola Telino
14|Formaggi Fortini s.r.l.|Sales Representative|Elio Rossi|32|Mascarpone Fabioli
14|Formaggi Fortini s.r.l.|Sales Representative|Elio Rossi|72|Mozzarella di Giovanni
29|Forêts d'érables|Accounting Manager|Chantal Goulet|61|Sirop d'érable
29|Forêts d'érables|Accounting Manager|Chantal Goulet|62|Tarte au sucre
24|G'day, Mate|Sales Representative|Wendy Mackenzie|51|Manjimup Dried Apples
24|G'day, Mate|Sales Representative|Wendy Mackenzie|52|Filo Mix
24|G'day, Mate|Sales Representative|Wendy Mackenzie|53|Perth Pasties
28|Gai pâturage|Sales Representative|Eliane Noz|59|Raclette Courdavault
28|Gai pâturage|Sales Representative|Eliane Noz|60|Camembert Pierrot
3|Grandma Kelly's Homestead|Sales Representative|Regina Murphy|6|Grandma's Boysenberry Spread
3|Grandma Kelly's Homestead|Sales Representative|Regina Murphy|7|Uncle Bob's Organic Dried Pears
3|Grandma Kelly's Homestead|Sales Representative|Regina Murphy|8|Northwoods Cranberry Sauce
11|Heli Süßwaren GmbH & Co. KG|Sales Manager|Petra Winkler|25|NuNuCa Nuß-Nougat-Creme
11|Heli Süßwaren GmbH & Co. KG|Sales Manager|Petra Winkler|26|Gumbär Gummibärchen
11|Heli Süßwaren GmbH & Co. KG|Sales Manager|Petra Winkler|27|Schoggi Schokolade
23|Karkki Oy|Product Manager|Anne Heikkonen|49|Maxilaku
23|Karkki Oy|Product Manager|Anne Heikkonen|50|Valkoinen suklaa
23|Karkki Oy|Product Manager|Anne Heikkonen|76|Lakkalikööri
20|Leka Trading|Owner|Chandra Leka|42|Singaporean Hokkien Fried Mee
20|Leka Trading|Owner|Chandra Leka|43|Ipoh Coffee
20|Leka Trading|Owner|Chandra Leka|44|Gula Malacca
21|Lyngbysild|Sales Manager|Niels Petersen|45|Rogede sild
21|Lyngbysild|Sales Manager|Niels Petersen|46|Spegesild
25|Ma Maison|Marketing Manager|Jean-Guy Lauzon|54|Tourtière
25|Ma Maison|Marketing Manager|Jean-Guy Lauzon|55|Pâté chinois
6|Mayumi's|Marketing Representative|Mayumi Ohno|13|Konbu
6|Mayumi's|Marketing Representative|Mayumi Ohno|14|Tofu
6|Mayumi's|Marketing Representative|Mayumi Ohno|15|Genen Shouyu
19|New England Seafood Cannery|Wholesale Account Agent|Robb Merchant|40|Boston Crab Meat
19|New England Seafood Cannery|Wholesale Account Agent|Robb Merchant|41|Jack's New England Clam Chowder
2|New Orleans Cajun Delights|Order Administrator|Shelley Burke|4|Chef Anton's Cajun Seasoning
2|New Orleans Cajun Delights|Order Administrator|Shelley Burke|5|Chef Anton's Gumbo Mix
2|New Orleans Cajun Delights|Order Administrator|Shelley Burke|65|Louisiana Fiery Hot Pepper Sauce
2|New Orleans Cajun Delights|Order Administrator|Shelley Burke|66|Louisiana Hot Spiced Okra
13|Nord-Ost-Fisch Handelsgesellschaft mbH|Coordinator Foreign Markets|Sven Petersen|30|Nord-Ost Matjeshering
15|Norske Meierier|Marketing Manager|Beate Vileid|33|Geitost
15|Norske Meierier|Marketing Manager|Beate Vileid|69|Gudbrandsdalsost
15|Norske Meierier|Marketing Manager|Beate Vileid|71|Flotemysost
9|PB Knäckebröd AB|Sales Agent|Lars Peterson|22|Gustaf's Knäckebröd
9|PB Knäckebröd AB|Sales Agent|Lars Peterson|23|Tunnbröd
26|Pasta Buttini s.r.l.|Order Administrator|Giovanni Giudici|56|Gnocchi di nonna Alice
26|Pasta Buttini s.r.l.|Order Administrator|Giovanni Giudici|57|Ravioli Angelo
7|Pavlova, Ltd.|Marketing Manager|Ian Devling|16|Pavlova
7|Pavlova, Ltd.|Marketing Manager|Ian Devling|17|Alice Mutton
7|Pavlova, Ltd.|Marketing Manager|Ian Devling|18|Carnarvon Tigers
7|Pavlova, Ltd.|Marketing Manager|Ian Devling|63|Vegie-spread
7|Pavlova, Ltd.|Marketing Manager|Ian Devling|70|Outback Lager
12|Plutzer Lebensmittelgroßmärkte AG|International Marketing Mgr.|Martin Bein|28|Rössle Sauerkraut
12|Plutzer Lebensmittelgroßmärkte AG|International Marketing Mgr.|Martin Bein|29|Thüringer Rostbratwurst
12|Plutzer Lebensmittelgroßmärkte AG|International Marketing Mgr.|Martin Bein|64|Wimmers gute Semmelknödel
12|Plutzer Lebensmittelgroßmärkte AG|International Marketing Mgr.|Martin Bein|75|Rhönbräu Klosterbier
12|Plutzer Lebensmittelgroßmärkte AG|International Marketing Mgr.|Martin Bein|77|Original Frankfurter grüne Soße
10|Refrescos Americanas LTDA|Marketing Manager|Carlos Diaz|24|Guaraná Fantástica
8|Specialty Biscuits, Ltd.|Sales Representative|Peter Wilson|19|Teatime Chocolate Biscuits
8|Specialty Biscuits, Ltd.|Sales Representative|Peter Wilson|20|Sir Rodney's Marmalade
8|Specialty Biscuits, Ltd.|Sales Representative|Peter Wilson|21|Sir Rodney's Scones
8|Specialty Biscuits, Ltd.|Sales Representative|Peter Wilson|68|Scottish Longbreads
17|Svensk Sjöföda AB|Sales Representative|Michael Björn|36|Inlagd Sill
17|Svensk Sjöföda AB|Sales Representative|Michael Björn|37|Gravad lax
17|Svensk Sjöföda AB|Sales Representative|Michael Björn|73|Röd Kaviar
4|Tokyo Traders|Marketing Manager|Yoshi Nagase|9|Mishi Kobe Niku
4|Tokyo Traders|Marketing Manager|Yoshi Nagase|10|Ikura
4|Tokyo Traders|Marketing Manager|Yoshi Nagase|74|Longlife Tofu
22|Zaanse Snoepfabriek|Accounting Manager|Dirk Luchte|47|Zaanse koeken
22|Zaanse Snoepfabriek|Accounting Manager|Dirk Luchte|48|Chocolade

-- 4. For every order on May 5, 1998, how many of each item was ordered, and what was the price of the
-- item?
select o.orderid, o.orderdate, od.orderid, od.productid, p.productid, p.productname, od.unitprice, od.quantity from orders o join order_details od on o.orderid = od.orderid join products p on od.productid = p.productid where o.orderdate = '1998-05-05';
OrderID|OrderDate|OrderID|ProductID|ProductID|ProductName|UnitPrice|Quantity
11070|1998-05-05|11070|1|1|Chai|18.0|40
11070|1998-05-05|11070|2|2|Chang|19.0|20
11070|1998-05-05|11070|16|16|Pavlova|17.45|30
11070|1998-05-05|11070|31|31|Gorgonzola Telino|12.5|20
11071|1998-05-05|11071|7|7|Uncle Bob's Organic Dried Pears|30.0|15
11071|1998-05-05|11071|13|13|Konbu|6.0|10
11072|1998-05-05|11072|2|2|Chang|19.0|8
11072|1998-05-05|11072|41|41|Jack's New England Clam Chowder|9.65|40
11072|1998-05-05|11072|50|50|Valkoinen suklaa|16.25|22
11072|1998-05-05|11072|64|64|Wimmers gute Semmelknödel|33.25|130
11073|1998-05-05|11073|11|11|Queso Cabrales|21.0|10
11073|1998-05-05|11073|24|24|Guaraná Fantástica|4.5|20

-- 5. For every order on May 5, 1998, how many of each item was ordered giving the name of the item, and
-- what was the price of the item?


-- 6. For every order in May, 1998, what was the customer’s name and the shipper’s name?
select o.orderid, o.orderdate, o.customerid, c.customerid, c.companyname, o.shipperid, s.shipperid, s.companyname from orders o join customers c on o.customerid = c.customerid join shippers s on o.shipperid = s.shipperid where o.orderdate like '1998-05-%';
OrderID|OrderDate|CustomerID|CustomerID|CompanyName|ShipperID|ShipperID|CompanyName
11064|1998-05-01|SAVEA|SAVEA|Save-a-lot Markets|1|1|Speedy Express
11065|1998-05-01|LILAS|LILAS|LILA-Supermercado|1|1|Speedy Express
11066|1998-05-01|WHITC|WHITC|White Clover Markets|2|2|United Package
11067|1998-05-04|DRACD|DRACD|Drachenblut Delikatessen|2|2|United Package
11068|1998-05-04|QUEEN|QUEEN|Queen Cozinha|2|2|United Package
11069|1998-05-04|TORTU|TORTU|Tortuga Restaurante|2|2|United Package
11070|1998-05-05|LEHMS|LEHMS|Lehmanns Marktstand|1|1|Speedy Express
11071|1998-05-05|LILAS|LILAS|LILA-Supermercado|1|1|Speedy Express
11072|1998-05-05|ERNSH|ERNSH|Ernst Handel|2|2|United Package
11073|1998-05-05|PERIC|PERIC|Pericles Comidas clásicas|2|2|United Package
11074|1998-05-06|SIMOB|SIMOB|Simons bistro|2|2|United Package
11075|1998-05-06|RICSU|RICSU|Richter Supermarkt|2|2|United Package
11076|1998-05-06|BONAP|BONAP|Bon app''|2|2|United Package
11077|1998-05-06|RATTC|RATTC|Rattlesnake Canyon Grocery|2|2|United Package

-- 7. What is the customer’s name and the employee’s name for every order shipped to France?
select c.customerid, c.companyname, c.contactname, e.employeeid, e.lastname, e.firstname, o.orderid, o.customerid, o.employeeid, o.shipcountry from customers c join orders o on c.customerid = o.customerid join employees e on e.employeeid = o.employeeid where o.shipcountry like '%France%';
CustomerID|CompanyName|ContactName|EmployeeID|LastName|FirstName|OrderID|CustomerID|EmployeeID|ShipCountry
VINET|Vins et alcools Chevalier|Paul Henriot|5|Buchanan|Steven|10248|VINET|5|France
VICTE|Victuailles en stock|Mary Saveley|3|Leverling|Janet|10251|VICTE|3|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|2|Fuller|Andrew|10265|BLONP|2|France
VINET|Vins et alcools Chevalier|Paul Henriot|6|Suyama|Michael|10274|VINET|6|France
VINET|Vins et alcools Chevalier|Paul Henriot|2|Fuller|Andrew|10295|VINET|2|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|5|Buchanan|Steven|10297|BLONP|5|France
DUMON|Du monde entier|Janine Labrune|1|Davolio|Nancy|10311|DUMON|1|France
BONAP|Bon app''|Laurence Lebihan|9|Dodsworth|Anne|10331|BONAP|9|France
VICTE|Victuailles en stock|Mary Saveley|8|Callahan|Laura|10334|VICTE|8|France
BONAP|Bon app''|Laurence Lebihan|1|Davolio|Nancy|10340|BONAP|1|France
LAMAI|La maison d''Asie|Annette Roulet|6|Suyama|Michael|10350|LAMAI|6|France
LAMAI|La maison d''Asie|Annette Roulet|5|Buchanan|Steven|10358|LAMAI|5|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|4|Peacock|Margaret|10360|BLONP|4|France
BONAP|Bon app''|Laurence Lebihan|3|Leverling|Janet|10362|BONAP|3|France
LAMAI|La maison d''Asie|Annette Roulet|1|Davolio|Nancy|10371|LAMAI|1|France
FOLIG|Folies gourmandes|Martine Rancé|8|Callahan|Laura|10408|FOLIG|8|France
LAMAI|La maison d''Asie|Annette Roulet|3|Leverling|Janet|10413|LAMAI|3|France
LAMAI|La maison d''Asie|Annette Roulet|6|Suyama|Michael|10425|LAMAI|6|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|3|Leverling|Janet|10436|BLONP|3|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|3|Leverling|Janet|10449|BLONP|3|France
VICTE|Victuailles en stock|Mary Saveley|8|Callahan|Laura|10450|VICTE|8|France
LAMAI|La maison d''Asie|Annette Roulet|4|Peacock|Margaret|10454|LAMAI|4|France
VICTE|Victuailles en stock|Mary Saveley|4|Peacock|Margaret|10459|VICTE|4|France
BONAP|Bon app''|Laurence Lebihan|4|Peacock|Margaret|10470|BONAP|4|France
VICTE|Victuailles en stock|Mary Saveley|2|Fuller|Andrew|10478|VICTE|2|France
FOLIG|Folies gourmandes|Martine Rancé|6|Suyama|Michael|10480|FOLIG|6|France
LAMAI|La maison d''Asie|Annette Roulet|4|Peacock|Margaret|10493|LAMAI|4|France
LAMAI|La maison d''Asie|Annette Roulet|6|Suyama|Michael|10500|LAMAI|6|France
BONAP|Bon app''|Laurence Lebihan|4|Peacock|Margaret|10511|BONAP|4|France
BONAP|Bon app''|Laurence Lebihan|1|Davolio|Nancy|10525|BONAP|1|France
VICTE|Victuailles en stock|Mary Saveley|1|Davolio|Nancy|10546|VICTE|1|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|6|Suyama|Michael|10559|BLONP|6|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|9|Dodsworth|Anne|10566|BLONP|9|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|4|Peacock|Margaret|10584|BLONP|4|France
DUMON|Du monde entier|Janine Labrune|7|King|Robert|10609|DUMON|7|France
LAMAI|La maison d''Asie|Annette Roulet|8|Callahan|Laura|10610|LAMAI|8|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|4|Peacock|Margaret|10628|BLONP|4|France
LAMAI|La maison d''Asie|Annette Roulet|8|Callahan|Laura|10631|LAMAI|8|France
FOLIG|Folies gourmandes|Martine Rancé|4|Peacock|Margaret|10634|FOLIG|4|France
BONAP|Bon app''|Laurence Lebihan|2|Fuller|Andrew|10663|BONAP|2|France
FRANR|France restauration|Carine Schmitt|1|Davolio|Nancy|10671|FRANR|1|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|8|Callahan|Laura|10679|BLONP|8|France
DUMON|Du monde entier|Janine Labrune|2|Fuller|Andrew|10683|DUMON|2|France
BONAP|Bon app''|Laurence Lebihan|3|Leverling|Janet|10715|BONAP|3|France
BONAP|Bon app''|Laurence Lebihan|5|Buchanan|Steven|10730|BONAP|5|France
BONAP|Bon app''|Laurence Lebihan|3|Leverling|Janet|10732|BONAP|3|France
VINET|Vins et alcools Chevalier|Paul Henriot|2|Fuller|Andrew|10737|VINET|2|France
SPECD|Spécialités du monde|Dominique Perrier|2|Fuller|Andrew|10738|SPECD|2|France
VINET|Vins et alcools Chevalier|Paul Henriot|3|Leverling|Janet|10739|VINET|3|France
BONAP|Bon app''|Laurence Lebihan|4|Peacock|Margaret|10755|BONAP|4|France
FOLIG|Folies gourmandes|Martine Rancé|3|Leverling|Janet|10763|FOLIG|3|France
LAMAI|La maison d''Asie|Annette Roulet|2|Fuller|Andrew|10787|LAMAI|2|France
FOLIG|Folies gourmandes|Martine Rancé|1|Davolio|Nancy|10789|FOLIG|1|France
VICTE|Victuailles en stock|Mary Saveley|3|Leverling|Janet|10806|VICTE|3|France
VICTE|Victuailles en stock|Mary Saveley|3|Leverling|Janet|10814|VICTE|3|France
BLONP|Blondesddsl père et fils|Frédérique Citeaux|6|Suyama|Michael|10826|BLONP|6|France
BONAP|Bon app''|Laurence Lebihan|1|Davolio|Nancy|10827|BONAP|1|France
LAMAI|La maison d''Asie|Annette Roulet|2|Fuller|Andrew|10832|LAMAI|2|France
VICTE|Victuailles en stock|Mary Saveley|4|Peacock|Margaret|10843|VICTE|4|France
VICTE|Victuailles en stock|Mary Saveley|1|Davolio|Nancy|10850|VICTE|1|France
LACOR|La corne d''abondance|Daniel Tonini|2|Fuller|Andrew|10858|LACOR|2|France
FRANR|France restauration|Carine Schmitt|3|Leverling|Janet|10860|FRANR|3|France
BONAP|Bon app''|Laurence Lebihan|9|Dodsworth|Anne|10871|BONAP|9|France
BONAP|Bon app''|Laurence Lebihan|7|King|Robert|10876|BONAP|7|France
DUMON|Du monde entier|Janine Labrune|7|King|Robert|10890|DUMON|7|France
SPECD|Spécialités du monde|Dominique Perrier|6|Suyama|Michael|10907|SPECD|6|France
LAMAI|La maison d''Asie|Annette Roulet|7|King|Robert|10923|LAMAI|7|France
LACOR|La corne d''abondance|Daniel Tonini|4|Peacock|Margaret|10927|LACOR|4|France
BONAP|Bon app''|Laurence Lebihan|8|Callahan|Laura|10932|BONAP|8|France
BONAP|Bon app''|Laurence Lebihan|8|Callahan|Laura|10940|BONAP|8|France
SPECD|Spécialités du monde|Dominique Perrier|3|Leverling|Janet|10964|SPECD|3|France
FRANR|France restauration|Carine Schmitt|2|Fuller|Andrew|10971|FRANR|2|France
LACOR|La corne d''abondance|Daniel Tonini|4|Peacock|Margaret|10972|LACOR|4|France
LACOR|La corne d''abondance|Daniel Tonini|6|Suyama|Michael|10973|LACOR|6|France
SPECD|Spécialités du monde|Dominique Perrier|5|Buchanan|Steven|11043|SPECD|5|France
LAMAI|La maison d''Asie|Annette Roulet|7|King|Robert|11051|LAMAI|7|France
BONAP|Bon app''|Laurence Lebihan|4|Peacock|Margaret|11076|BONAP|4|France

-- 8. List the products by name that were shipped to Germany.

