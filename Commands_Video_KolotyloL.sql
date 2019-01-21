
INSERT INTO "Films"("ID_F", "Films", "Running_time", "Release_date", "Date_add", "Budget")	
VALUES (10, 'Home Alone', 103, '12-12-1993', '25-09-1999', '18000000');

INSERT INTO "Director"("ID_Dir", "First_name", "Last_name", "Born", "Nationality")
VALUES ('12', 'Chris Joseph', 'Columbus', '10-09-1958', 'U.S.A');

INSERT INTO "Production_company"("ID_PC", "Production_company", "Contact_person", "Address")
VALUES (20, 'Hughes Entertainment', 'John Wilden Hughes', 'New York City, U.S.');

DELETE FROM "Films" where "ID_F"=10;

DELETE  FROM "Director" where "ID_Dir"=12;

DELETE  FROM "Production_company" where "ID_PC"=20;

SELECT "Films" from "Films";

SELECT "First_name", "Last_name" FROM "Director";

SELECT "Production_company" FROM "Production_company";

SELECT "Films" from "Films" WHERE "Films" LIKE 'Av%';

SELECT "Films", "First_name", "Last_name" FROM "Films"
INNER JOIN "FilmDirectorID" ON "ID_F" = "FID" INNER JOIN "Director"
ON "DID" = "ID_Dir";

SELECT "Films", "Production_company" FROM "Films"
INNER JOIN "FilmStudioID" ON "ID_F" = "FID" INNER JOIN "Production_company"
ON "SID" = "ID_PC";

SELECT "Films", "First_name", "Last_name" FROM "Films"
INNER JOIN "FilmDirectorID" ON "ID_F" = "FID" INNER JOIN "Director" ON "DID" = "ID_Dir" 
ORDER BY "Films" DESC;

SELECT * FROM "Films" ORDER BY "Budget" ASC;





