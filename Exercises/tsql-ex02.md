.headers on

-- Name: Brandon Scott
-- File: tsql-ex02.sql
-- Date: January 21, 2021

-- 1. List the company name, the contact name and the country of all customers in Poland.
select companyname, contactname, country from customers where country like '%Poland%';
CompanyName|ContactName|Country
Wolski  Zajazd|Zbyszek Piestrzeniewicz|Poland

-- 2. List the order ID, the order date, and the desitnation city of all orders shipped to Berlin.
select orderid, orderdate, shipcity from orders where shipcity like '%Berlin%';
OrderID|OrderDate|ShipCity
10643|1997-08-25|Berlin
10692|1997-10-03|Berlin
10702|1997-10-13|Berlin
10835|1998-01-15|Berlin
10952|1998-03-16|Berlin
11011|1998-04-09|Berlin

-- 3. How many boxes of Filo Mix do we have in stock?
select productid, productname, quantityperunit * unitsinstock as total_boxes from products where productname like '%Filo Mix%';
ProductID|ProductName|total_boxes
52|Filo Mix|608

-- 4. List the telephone numbers of all of our shippers.
select * from shippers;
ShipperID|CompanyName|Phone
1|Speedy Express|(503) 555-9831
2|United Package|(503) 555-3199
3|Federal Shipping|(503) 555-9931

-- 5. Who is our oldest employee? Whos is our youngest employee?
select employeeid, lastname, firstname, min(birthdate) from employees;
EmployeeID|LastName|FirstName|min(birthdate)
4|Peacock|Margaret|1937-09-19 00:00:00.000
select employeeid, lastname, firstname, max(birthdate) from employees;
EmployeeID|LastName|FirstName|max(birthdate)
9|Dodsworth|Anne|1966-01-27 00:00:00.000

-- 6. List the suppliers where the owner of the supplier is also the sales contact.
select supplierid, contactname, contacttitle from suppliers where contacttitle like '%owner%';
SupplierID|ContactName|ContactTitle
20|Chandra Leka|Owner

-- 7. Mailing Labels:
select contacttitle, contactname ||'
   '|| companyname ||'
   '|| address ||'
   '|| city, postalcode, country ||'
   '|| ' ' ||'
   '|| ' ' from customers;
ContactTitle|contactname ||'
   '|| companyname ||'
   '|| address ||'
   '|| city|PostalCode|country ||'
   '|| ' ' ||'
   '|| ' '
ContactTitle|ContactName
   CompanyName
   Address
   City|PostalCode|Country
    
    
Sales Representative|Maria Anders
   Alfreds Futterkiste
   Obere Str. 57
   Berlin|12209|Germany
    
    
Owner|Ana Trujillo
   Ana Trujillo Emparedados y helados
   Avda. de la Constitución 2222
   México D.F.|05021|Mexico
    
    
Owner|Antonio Moreno
   Antonio Moreno Taquería
   Mataderos  2312
   México D.F.|05023|Mexico
    
    
Sales Representative|Thomas Hardy
   Around the Horn
   120 Hanover Sq.
   London|WA1 1DP|UK
    
    
Order Administrator|Christina Berglund
   Berglunds snabbköp
   Berguvsvägen  8
   Luleå|S-958 22|Sweden
    
    
Sales Representative|Hanna Moos
   Blauer See Delikatessen
   Forsterstr. 57
   Mannheim|68306|Germany
    
    
Marketing Manager|Frédérique Citeaux
   Blondesddsl père et fils
   24, place Kléber
   Strasbourg|67000|France
    
    
Owner|Martín Sommer
   Bólido Comidas preparadas
   C/ Araquil, 67
   Madrid|28023|Spain
    
    
Owner|Laurence Lebihan
   Bon app''
   12, rue des Bouchers
   Marseille|13008|France
    
    
Accounting Manager|Elizabeth Lincoln
   Bottom-Dollar Markets
   23 Tsawassen Blvd.
   Tsawassen|T2F 8M4|Canada
    
    
Sales Representative|Victoria Ashworth
   B''s Beverages
   Fauntleroy Circus
   London|EC2 5NT|UK
    
    
Sales Agent|Patricio Simpson
   Cactus Comidas para llevar
   Cerrito 333
   Buenos Aires|1010|Argentina
    
    
Marketing Manager|Francisco Chang
   Centro comercial Moctezuma
   Sierras de Granada 9993
   México D.F.|05022|Mexico
    
    
Owner|Yang Wang
   Chop-suey Chinese
   Hauptstr. 29
   Bern|3012|Switzerland
    
    
Sales Associate|Pedro Afonso
   Comércio Mineiro
   Av. dos Lusíadas, 23
   Sao Paulo|05432-043|Brazil
    
    
Sales Representative|Elizabeth Brown
   Consolidated Holdings
   Berkeley Gardens 12  Brewery
   London|WX1 6LT|UK
    
    
Order Administrator|Sven Ottlieb
   Drachenblut Delikatessen
   Walserweg 21
   Aachen|52066|Germany
    
    
Owner|Janine Labrune
   Du monde entier
   67, rue des Cinquante Otages
   Nantes|44000|France
    
    
Sales Agent|Ann Devon
   Eastern Connection
   35 King George
   London|WX3 6FW|UK
    
    
Sales Manager|Roland Mendel
   Ernst Handel
   Kirchgasse 6
   Graz|8010|Austria
    
    
Marketing Assistant|Aria Cruz
   Familia Arquibaldo
   Rua Orós, 92
   Sao Paulo|05442-030|Brazil
    
    
Accounting Manager|Diego Roel
   FISSA Fabrica Inter. Salchichas S.A.
   C/ Moralzarzal, 86
   Madrid|28034|Spain
    
    
Assistant Sales Agent|Martine Rancé
   Folies gourmandes
   184, chaussée de Tournai
   Lille|59000|France
    
    
Owner|Maria Larsson
   Folk och fä HB
   Åkergatan 24
   Bräcke|S-844 67|Sweden
    
    
Marketing Manager|Peter Franken
   Frankenversand
   Berliner Platz 43
   München|80805|Germany
    
    
Marketing Manager|Carine Schmitt
   France restauration
   54, rue Royale
   Nantes|44000|France
    
    
Sales Representative|Paolo Accorti
   Franchi S.p.A.
   Via Monte Bianco 34
   Torino|10100|Italy
    
    
Sales Manager|Lino Rodriguez
   Furia Bacalhau e Frutos do Mar
   Jardim das rosas n. 32
   Lisboa|1675|Portugal
    
    
Marketing Manager|Eduardo Saavedra
   Galería del gastrónomo
   Rambla de Cataluña, 23
   Barcelona|08022|Spain
    
    
Sales Manager|José Pedro Freyre
   Godos Cocina Típica
   C/ Romero, 33
   Sevilla|41101|Spain
    
    
Sales Associate|André Fonseca
   Gourmet Lanchonetes
   Av. Brasil, 442
   Campinas|04876-786|Brazil
    
    
Marketing Manager|Howard Snyder
   Great Lakes Food Market
   2732 Baker Blvd.
   Eugene|97403|USA
    
    
Owner|Manuel Pereira
   GROSELLA-Restaurante
   5ª Ave. Los Palos Grandes
   Caracas|1081|Venezuela
    
    
Accounting Manager|Mario Pontes
   Hanari Carnes
   Rua do Paço, 67
   Rio de Janeiro|05454-876|Brazil
    
    
Sales Representative|Carlos Hernández
   HILARION-Abastos
   Carrera 22 con Ave. Carlos Soublette #8-35
   San Cristóbal|5022|Venezuela
    
    
Sales Representative|Yoshi Latimer
   Hungry Coyote Import Store
   City Center Plaza 516 Main St.
   Elgin|97827|USA
    
    
Sales Associate|Patricia McKenna
   Hungry Owl All-Night Grocers
   8 Johnstown Road
   Cork||Ireland
    
    
Marketing Manager|Helen Bennett
   Island Trading
   Garden House Crowther Way
   Cowes|PO31 7PJ|UK
    
    
Sales Associate|Philip Cramer
   Königlich Essen
   Maubelstr. 90
   Brandenburg|14776|Germany
    
    
Sales Representative|Daniel Tonini
   La corne d''abondance
   67, avenue de l''Europe
   Versailles|78000|France
    
    
Sales Manager|Annette Roulet
   La maison d''Asie
   1 rue Alsace-Lorraine
   Toulouse|31000|France
    
    
Marketing Assistant|Yoshi Tannamuri
   Laughing Bacchus Wine Cellars
   1900 Oak St.
   Vancouver|V3F 2K1|Canada
    
    
Marketing Manager|John Steel
   Lazy K Kountry Store
   12 Orchestra Terrace
   Walla Walla|99362|USA
    
    
Sales Representative|Renate Messner
   Lehmanns Marktstand
   Magazinweg 7
   Frankfurt a.M.|60528|Germany
    
    
Owner|Jaime Yorres
   Let''s Stop N Shop
   87 Polk St. Suite 5
   San Francisco|94117|USA
    
    
Accounting Manager|Carlos González
   LILA-Supermercado
   Carrera 52 con Ave. Bolívar #65-98 Llano Largo
   Barquisimeto|3508|Venezuela
    
    
Owner|Felipe Izquierdo
   LINO-Delicateses
   Ave. 5 de Mayo Porlamar
   I. de Margarita|4980|Venezuela
    
    
Sales Manager|Fran Wilson
   Lonesome Pine Restaurant
   89 Chiaroscuro Rd.
   Portland|97219|USA
    
    
Marketing Manager|Giovanni Rovelli
   Magazzini Alimentari Riuniti
   Via Ludovico il Moro 22
   Bergamo|24100|Italy
    
    
Sales Agent|Catherine Dewey
   Maison Dewey
   Rue Joseph-Bens 532
   Bruxelles|B-1180|Belgium
    
    
Marketing Assistant|Jean Fresnière
   Mère Paillarde
   43 rue St. Laurent
   Montréal|H1J 1C3|Canada
    
    
Marketing Assistant|Alexander Feuer
   Morgenstern Gesundkost
   Heerstr. 22
   Leipzig|04179|Germany
    
    
Sales Associate|Simon Crowther
   North/South
   South House 300 Queensbridge
   London|SW7 1RZ|UK
    
    
Sales Agent|Yvonne Moncada
   Océano Atlántico Ltda.
   Ing. Gustavo Moncada 8585 Piso 20-A
   Buenos Aires|1010|Argentina
    
    
Sales Representative|Rene Phillips
   Old World Delicatessen
   2743 Bering St.
   Anchorage|99508|USA
    
    
Owner|Henriette Pfalzheim
   Ottilies Käseladen
   Mehrheimerstr. 369
   Köln|50739|Germany
    
    
Owner|Marie Bertrand
   Paris spécialités
   265, boulevard Charonne
   Paris|75012|France
    
    
Sales Representative|Guillermo Fernández
   Pericles Comidas clásicas
   Calle Dr. Jorge Cash 321
   México D.F.|05033|Mexico
    
    
Sales Manager|Georg Pipps
   Piccolo und mehr
   Geislweg 14
   Salzburg|5020|Austria
    
    
Sales Representative|Isabel de Castro
   Princesa Isabel Vinhos
   Estrada da saúde n. 58
   Lisboa|1756|Portugal
    
    
Accounting Manager|Bernardo Batista
   Que Delícia
   Rua da Panificadora, 12
   Rio de Janeiro|02389-673|Brazil
    
    
Marketing Assistant|Lúcia Carvalho
   Queen Cozinha
   Alameda dos Canàrios, 891
   Sao Paulo|05487-020|Brazil
    
    
Accounting Manager|Horst Kloss
   QUICK-Stop
   Taucherstraße 10
   Cunewalde|01307|Germany
    
    
Sales Representative|Sergio Gutiérrez
   Rancho grande
   Av. del Libertador 900
   Buenos Aires|1010|Argentina
    
    
Assistant Sales Representative|Paula Wilson
   Rattlesnake Canyon Grocery
   2817 Milton Dr.
   Albuquerque|87110|USA
    
    
Sales Associate|Maurizio Moroni
   Reggiani Caseifici
   Strada Provinciale 124
   Reggio Emilia|42100|Italy
    
    
Assistant Sales Agent|Janete Limeira
   Ricardo Adocicados
   Av. Copacabana, 267
   Rio de Janeiro|02389-890|Brazil
    
    
Sales Manager|Michael Holz
   Richter Supermarkt
   Grenzacherweg 237
   Genève|1203|Switzerland
    
    
Accounting Manager|Alejandra Camino
   Romero y tomillo
   Gran Vía, 1
   Madrid|28001|Spain
    
    
Owner|Jonas Bergulfsen
   Santé Gourmet
   Erling Skakkes gate 78
   Stavern|4110|Norway
    
    
Sales Representative|Jose Pavarotti
   Save-a-lot Markets
   187 Suffolk Ln.
   Boise|83720|USA
    
    
Sales Manager|Hari Kumar
   Seven Seas Imports
   90 Wadhurst Rd.
   London|OX15 4NB|UK
    
    
Owner|Jytte Petersen
   Simons bistro
   Vinbæltet 34
   Kobenhavn|1734|Denmark
    
    
Marketing Manager|Dominique Perrier
   Spécialités du monde
   25, rue Lauriston
   Paris|75016|France
    
    
Sales Manager|Art Braunschweiger
   Split Rail Beer & Ale
   P.O. Box 555
   Lander|82520|USA
    
    
Accounting Manager|Pascale Cartrain
   Suprêmes délices
   Boulevard Tirou, 255
   Charleroi|B-6000|Belgium
    
    
Marketing Manager|Liz Nixon
   The Big Cheese
   89 Jefferson Way Suite 2
   Portland|97201|USA
    
    
Marketing Assistant|Liu Wong
   The Cracker Box
   55 Grizzly Peak Rd.
   Butte|59801|USA
    
    
Marketing Manager|Karin Josephs
   Toms Spezialitäten
   Luisenstr. 48
   Münster|44087|Germany
    
    
Owner|Miguel Angel Paolino
   Tortuga Restaurante
   Avda. Azteca 123
   México D.F.|05033|Mexico
    
    
Sales Representative|Anabela Domingues
   Tradição Hipermercados
   Av. Inês de Castro, 414
   Sao Paulo|05634-030|Brazil
    
    
Sales Associate|Helvetius Nagy
   Trail''s Head Gourmet Provisioners
   722 DaVinci Blvd.
   Kirkland|98034|USA
    
    
Sales Manager|Palle Ibsen
   Vaffeljernet
   Smagsloget 45
   Århus|8200|Denmark
    
    
Sales Agent|Mary Saveley
   Victuailles en stock
   2, rue du Commerce
   Lyon|69004|France
    
    
Accounting Manager|Paul Henriot
   Vins et alcools Chevalier
   59 rue de l''Abbaye
   Reims|51100|France
    
    
Sales Representative|Rita Müller
   Die Wandernde Kuh
   Adenauerallee 900
   Stuttgart|70563|Germany
    
    
Accounting Manager|Pirkko Koskitalo
   Wartian Herkku
   Torikatu 38
   Oulu|90110|Finland
    
    
Sales Manager|Paula Parente
   Wellington Importadora
   Rua do Mercado, 12
   Resende|08737-363|Brazil
    
    
Owner|Karl Jablonski
   White Clover Markets
   305 - 14th Ave. S. Suite 3B
   Seattle|98128|USA
    
    
Owner/Marketing Assistant|Matti Karttunen
   Wilman Kala
   Keskuskatu 45
   Helsinki|21240|Finland
    
    
Owner|Zbyszek Piestrzeniewicz
   Wolski  Zajazd
   ul. Filtrowa 68
   Warszawa|01-012|Poland
    
    

-- 8. Telephone Book:
select substr(contactname, instr(contactname, ' ')) || ',' || ' ' || substr(contactname, instr(contactname, 1), (instr(contactname, ' ')-1)) || '     ' || companyname || '   ' || phone from customers;
substr(contactname, instr(contactname, ' ')) || ',' || ' ' || substr(contactname, instr(contactname, 1), (instr(contactname, ' ')-1)) || '     ' || companyname || '   ' || phone
ContactName,      CompanyName   Phone
 Anders, Mari     Alfreds Futterkiste   030-0074321
 Trujillo, An     Ana Trujillo Emparedados y helados   (5) 555-4729
 Moreno, Antoni     Antonio Moreno Taquería   (5) 555-3932
 Hardy, Thoma     Around the Horn   (171) 555-7788
 Berglund, Christin     Berglunds snabbköp   0921-12 34 65
 Moos, Hann     Blauer See Delikatessen   0621-08460
 Citeaux, Frédériqu     Blondesddsl père et fils   88.60.15.31
 Sommer, Martí     Bólido Comidas preparadas   (91) 555 22 82
 Lebihan, Laurenc     Bon app''   91.24.45.40
 Lincoln, Elizabet     Bottom-Dollar Markets   (604) 555-4729
 Ashworth, Victori     B''s Beverages   (171) 555-1212
 Simpson, Patrici     Cactus Comidas para llevar   (1) 135-5555
 Chang, Francisc     Centro comercial Moctezuma   (5) 555-3392
 Wang, Yan     Chop-suey Chinese   0452-076545
 Afonso, Pedr     Comércio Mineiro   (11) 555-7647
 Brown, Elizabet     Consolidated Holdings   (171) 555-2282
 Ottlieb, Sve     Drachenblut Delikatessen   0241-039123
 Labrune, Janin     Du monde entier   40.67.88.88
 Devon, An     Eastern Connection   (171) 555-0297
 Mendel, Rolan     Ernst Handel   7675-3425
 Cruz, Ari     Familia Arquibaldo   (11) 555-9857
 Roel, Dieg     FISSA Fabrica Inter. Salchichas S.A.   (91) 555 94 44
 Rancé, Martin     Folies gourmandes   20.16.10.16
 Larsson, Mari     Folk och fä HB   0695-34 67 21
 Franken, Pete     Frankenversand   089-0877310
 Schmitt, Carin     France restauration   40.32.21.21
 Accorti, Paol     Franchi S.p.A.   011-4988260
 Rodriguez, Lin     Furia Bacalhau e Frutos do Mar   (1) 354-2534
 Saavedra, Eduard     Galería del gastrónomo   (93) 203 4560
 Pedro Freyre, Jos     Godos Cocina Típica   (95) 555 82 82
 Fonseca, Andr     Gourmet Lanchonetes   (11) 555-9482
 Snyder, Howar     Great Lakes Food Market   (503) 555-7555
 Pereira, Manue     GROSELLA-Restaurante   (2) 283-2951
 Pontes, Mari     Hanari Carnes   (21) 555-0091
 Hernández, Carlo     HILARION-Abastos   (5) 555-1340
 Latimer, Yosh     Hungry Coyote Import Store   (503) 555-6874
 McKenna, Patrici     Hungry Owl All-Night Grocers   2967 542
 Bennett, Hele     Island Trading   (198) 555-8888
 Cramer, Phili     Königlich Essen   0555-09876
 Tonini, Danie     La corne d''abondance   30.59.84.10
 Roulet, Annett     La maison d''Asie   61.77.61.10
 Tannamuri, Yosh     Laughing Bacchus Wine Cellars   (604) 555-3392
 Steel, Joh     Lazy K Kountry Store   (509) 555-7969
 Messner, Renat     Lehmanns Marktstand   069-0245984
 Yorres, Jaim     Let''s Stop N Shop   (415) 555-5938
 González, Carlo     LILA-Supermercado   (9) 331-6954
 Izquierdo, Felip     LINO-Delicateses   (8) 34-56-12
 Wilson, Fra     Lonesome Pine Restaurant   (503) 555-9573
 Rovelli, Giovann     Magazzini Alimentari Riuniti   035-640230
 Dewey, Catherin     Maison Dewey   (02) 201 24 67
 Fresnière, Jea     Mère Paillarde   (514) 555-8054
 Feuer, Alexande     Morgenstern Gesundkost   0342-023176
 Crowther, Simo     North/South   (171) 555-7733
 Moncada, Yvonn     Océano Atlántico Ltda.   (1) 135-5333
 Phillips, Ren     Old World Delicatessen   (907) 555-7584
 Pfalzheim, Henriett     Ottilies Käseladen   0221-0644327
 Bertrand, Mari     Paris spécialités   (1) 42.34.22.66
 Fernández, Guillerm     Pericles Comidas clásicas   (5) 552-3745
 Pipps, Geor     Piccolo und mehr   6562-9722
 de Castro, Isabe     Princesa Isabel Vinhos   (1) 356-5634
 Batista, Bernard     Que Delícia   (21) 555-4252
 Carvalho, Lúci     Queen Cozinha   (11) 555-1189
 Kloss, Hors     QUICK-Stop   0372-035188
 Gutiérrez, Sergi     Rancho grande   (1) 123-5555
 Wilson, Paul     Rattlesnake Canyon Grocery   (505) 555-5939
 Moroni, Maurizi     Reggiani Caseifici   0522-556721
 Limeira, Janet     Ricardo Adocicados   (21) 555-3412
 Holz, Michae     Richter Supermarkt   0897-034214
 Camino, Alejandr     Romero y tomillo   (91) 745 6200
 Bergulfsen, Jona     Santé Gourmet   07-98 92 35
 Pavarotti, Jos     Save-a-lot Markets   (208) 555-8097
 Kumar, Har     Seven Seas Imports   (171) 555-1717
 Petersen, Jytt     Simons bistro   31 12 34 56
 Perrier, Dominiqu     Spécialités du monde   (1) 47.55.60.10
 Braunschweiger, Ar     Split Rail Beer & Ale   (307) 555-4680
 Cartrain, Pascal     Suprêmes délices   (071) 23 67 22 20
 Nixon, Li     The Big Cheese   (503) 555-3612
 Wong, Li     The Cracker Box   (406) 555-5834
 Josephs, Kari     Toms Spezialitäten   0251-031259
 Angel Paolino, Migue     Tortuga Restaurante   (5) 555-2933
 Domingues, Anabel     Tradição Hipermercados   (11) 555-2167
 Nagy, Helvetiu     Trail''s Head Gourmet Provisioners   (206) 555-8257
 Ibsen, Pall     Vaffeljernet   86 21 32 43
 Saveley, Mar     Victuailles en stock   78.32.54.86
 Henriot, Pau     Vins et alcools Chevalier   26.47.15.10
 Müller, Rit     Die Wandernde Kuh   0711-020361
 Koskitalo, Pirkk     Wartian Herkku   981-443655
 Parente, Paul     Wellington Importadora   (14) 555-8122
 Jablonski, Kar     White Clover Markets   (206) 555-4112
 Karttunen, Matt     Wilman Kala   90-224 8858
 Piestrzeniewicz, Zbysze     Wolski  Zajazd   (26) 642-7012
