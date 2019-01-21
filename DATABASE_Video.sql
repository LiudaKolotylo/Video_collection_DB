/*
 Navicat PostgreSQL Data Transfer

 Source Server         : 1
 Source Server Type    : PostgreSQL
 Source Server Version : 100006
 Source Host           : localhost:5432
 Source Catalog        : video_collection
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100000
 File Encoding         : 65001

 Date: 21/01/2019 21:24:04
*/


-- ----------------------------
-- Table structure for Director
-- ----------------------------
DROP TABLE IF EXISTS "Director";
CREATE TABLE "Director" (
  "ID_Dir" int4 NOT NULL,
  "First_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "Last_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "Born" date NOT NULL,
  "Died" date,
  "Nationality" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of Director
-- ----------------------------
BEGIN;
INSERT INTO "Director" VALUES (1, 'James Francis ', 'Cameron', '1954-08-16', NULL, 'Canada');
INSERT INTO "Director" VALUES (2, 'Luc ', 'Besson', '1959-03-18', NULL, 'France');
INSERT INTO "Director" VALUES (3, 'Scott ', 'Derrickson', '1966-08-16', NULL, 'U.S.A.');
INSERT INTO "Director" VALUES (4, 'Pat', 'O''Connor', '1943-11-12', NULL, 'Ireland');
INSERT INTO "Director" VALUES (5, 'Gore', 'Verbinski', '1964-03-16', NULL, 'U.S.A.');
INSERT INTO "Director" VALUES (6, 'Andres', 'Muschietti', '1973-08-26', NULL, 'Argentina');
INSERT INTO "Director" VALUES (7, 'Charles Martin', 'Smith', '1953-10-30', NULL, 'U.S.A.');
INSERT INTO "Director" VALUES (8, 'James', 'Wan', '1977-02-26', NULL, 'U.S.A.');
INSERT INTO "Director" VALUES (9, 'Lana', 'Wachowski', '1965-08-21', NULL, 'U.S.A.');
INSERT INTO "Director" VALUES (10, 'Lilly', 'Wachowski', '1967-12-29', NULL, 'U.S.A.');
INSERT INTO "Director" VALUES (11, 'Tom', 'Tykwer', '1965-05-23', NULL, 'Germany');
COMMIT;

-- ----------------------------
-- Table structure for FilmDirectorID
-- ----------------------------
DROP TABLE IF EXISTS "FilmDirectorID";
CREATE TABLE "FilmDirectorID" (
  "FID" int4 NOT NULL,
  "DID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of FilmDirectorID
-- ----------------------------
BEGIN;
INSERT INTO "FilmDirectorID" VALUES (1, 1);
INSERT INTO "FilmDirectorID" VALUES (2, 2);
INSERT INTO "FilmDirectorID" VALUES (3, 3);
INSERT INTO "FilmDirectorID" VALUES (4, 4);
INSERT INTO "FilmDirectorID" VALUES (5, 5);
INSERT INTO "FilmDirectorID" VALUES (6, 6);
INSERT INTO "FilmDirectorID" VALUES (7, 7);
INSERT INTO "FilmDirectorID" VALUES (8, 8);
INSERT INTO "FilmDirectorID" VALUES (9, 9);
INSERT INTO "FilmDirectorID" VALUES (9, 10);
INSERT INTO "FilmDirectorID" VALUES (9, 11);
COMMIT;

-- ----------------------------
-- Table structure for FilmGenresID
-- ----------------------------
DROP TABLE IF EXISTS "FilmGenresID";
CREATE TABLE "FilmGenresID" (
  "FID" int4 NOT NULL,
  "GID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of FilmGenresID
-- ----------------------------
BEGIN;
INSERT INTO "FilmGenresID" VALUES (1, 1);
INSERT INTO "FilmGenresID" VALUES (1, 9);
INSERT INTO "FilmGenresID" VALUES (2, 14);
INSERT INTO "FilmGenresID" VALUES (2, 13);
INSERT INTO "FilmGenresID" VALUES (2, 1);
INSERT INTO "FilmGenresID" VALUES (2, 9);
INSERT INTO "FilmGenresID" VALUES (3, 1);
INSERT INTO "FilmGenresID" VALUES (3, 9);
INSERT INTO "FilmGenresID" VALUES (3, 14);
INSERT INTO "FilmGenresID" VALUES (4, 8);
INSERT INTO "FilmGenresID" VALUES (4, 10);
INSERT INTO "FilmGenresID" VALUES (4, 2);
INSERT INTO "FilmGenresID" VALUES (5, 12);
INSERT INTO "FilmGenresID" VALUES (5, 4);
INSERT INTO "FilmGenresID" VALUES (5, 10);
INSERT INTO "FilmGenresID" VALUES (1, 11);
INSERT INTO "FilmGenresID" VALUES (6, 12);
INSERT INTO "FilmGenresID" VALUES (6, 14);
INSERT INTO "FilmGenresID" VALUES (6, 10);
INSERT INTO "FilmGenresID" VALUES (7, 1);
INSERT INTO "FilmGenresID" VALUES (7, 2);
INSERT INTO "FilmGenresID" VALUES (7, 8);
INSERT INTO "FilmGenresID" VALUES (7, 10);
INSERT INTO "FilmGenresID" VALUES (7, 13);
INSERT INTO "FilmGenresID" VALUES (8, 1);
INSERT INTO "FilmGenresID" VALUES (8, 14);
INSERT INTO "FilmGenresID" VALUES (8, 4);
INSERT INTO "FilmGenresID" VALUES (8, 8);
INSERT INTO "FilmGenresID" VALUES (9, 11);
INSERT INTO "FilmGenresID" VALUES (9, 1);
INSERT INTO "FilmGenresID" VALUES (9, 9);
COMMIT;

-- ----------------------------
-- Table structure for FilmStudioID
-- ----------------------------
DROP TABLE IF EXISTS "FilmStudioID";
CREATE TABLE "FilmStudioID" (
  "FID" int4 NOT NULL,
  "SID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of FilmStudioID
-- ----------------------------
BEGIN;
INSERT INTO "FilmStudioID" VALUES (1, 1);
INSERT INTO "FilmStudioID" VALUES (1, 2);
INSERT INTO "FilmStudioID" VALUES (1, 3);
INSERT INTO "FilmStudioID" VALUES (2, 4);
INSERT INTO "FilmStudioID" VALUES (3, 5);
INSERT INTO "FilmStudioID" VALUES (4, 6);
INSERT INTO "FilmStudioID" VALUES (5, 7);
INSERT INTO "FilmStudioID" VALUES (6, 8);
INSERT INTO "FilmStudioID" VALUES (6, 9);
INSERT INTO "FilmStudioID" VALUES (6, 10);
INSERT INTO "FilmStudioID" VALUES (6, 11);
INSERT INTO "FilmStudioID" VALUES (7, 12);
INSERT INTO "FilmStudioID" VALUES (7, 13);
INSERT INTO "FilmStudioID" VALUES (8, 14);
INSERT INTO "FilmStudioID" VALUES (8, 15);
INSERT INTO "FilmStudioID" VALUES (8, 16);
INSERT INTO "FilmStudioID" VALUES (8, 17);
INSERT INTO "FilmStudioID" VALUES (9, 18);
INSERT INTO "FilmStudioID" VALUES (9, 19);
COMMIT;

-- ----------------------------
-- Table structure for Film_genres
-- ----------------------------
DROP TABLE IF EXISTS "Film_genres";
CREATE TABLE "Film_genres" (
  "ID FG" int4 NOT NULL,
  "Films_ genres" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of Film_genres
-- ----------------------------
BEGIN;
INSERT INTO "Film_genres" VALUES (1, 'Action ');
INSERT INTO "Film_genres" VALUES (2, 'Modern');
INSERT INTO "Film_genres" VALUES (3, 'Historical');
INSERT INTO "Film_genres" VALUES (4, 'Fictional');
INSERT INTO "Film_genres" VALUES (5, 'Crime');
INSERT INTO "Film_genres" VALUES (6, 'Gangster ');
INSERT INTO "Film_genres" VALUES (7, 'Courtroom Dramas');
INSERT INTO "Film_genres" VALUES (8, 'Romance ');
INSERT INTO "Film_genres" VALUES (9, 'Epics');
INSERT INTO "Film_genres" VALUES (10, 'Drama');
INSERT INTO "Film_genres" VALUES (11, 'Science Fiction');
INSERT INTO "Film_genres" VALUES (12, 'Horror ');
INSERT INTO "Film_genres" VALUES (13, 'Comedy');
INSERT INTO "Film_genres" VALUES (14, 'Fantasy');
INSERT INTO "Film_genres" VALUES (15, 'Disaster');
COMMIT;

-- ----------------------------
-- Table structure for Films
-- ----------------------------
DROP TABLE IF EXISTS "Films";
CREATE TABLE "Films" (
  "ID_F" int4 NOT NULL,
  "Films" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "Running_time" int4 NOT NULL,
  "Release_date" date NOT NULL,
  "Date_add" date NOT NULL,
  "Budget" int4 NOT NULL
)
;

-- ----------------------------
-- Records of Films
-- ----------------------------
BEGIN;
INSERT INTO "Films" VALUES (1, 'Avatar', 161, '2009-12-10', '2010-03-02', 237000000);
INSERT INTO "Films" VALUES (2, 'The Fifth Element', 126, '1997-05-07', '2010-03-06', 90000000);
INSERT INTO "Films" VALUES (3, 'Doctor Strange', 115, '2016-10-13', '2017-02-08', 165000000);
INSERT INTO "Films" VALUES (4, 'Sweet November', 120, '2001-02-16', '2010-03-01', 40000000);
INSERT INTO "Films" VALUES (5, 'The Ring', 115, '2002-10-18', '2011-02-02', 48000000);
INSERT INTO "Films" VALUES (6, 'It', 135, '2017-09-08', '2018-03-20', 35000000);
INSERT INTO "Films" VALUES (7, 'A Dog''s Way Home', 96, '2019-01-11', '2019-01-18', 18000000);
INSERT INTO "Films" VALUES (8, 'Aquaman', 143, '2018-12-21', '2019-01-15', 160000000);
INSERT INTO "Films" VALUES (9, 'Cloud Atlas ', 171, '2012-09-08', '2012-10-26', 128500000);
COMMIT;

-- ----------------------------
-- Table structure for Production_company
-- ----------------------------
DROP TABLE IF EXISTS "Production_company";
CREATE TABLE "Production_company" (
  "ID_PC" int4 NOT NULL,
  "Production_company" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "Contact_person" char(255) COLLATE "pg_catalog"."default" NOT NULL,
  "Address" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Production_company
-- ----------------------------
BEGIN;
INSERT INTO "Production_company" VALUES (1, 'Lightstorm Entertainment', 'Rae Sanchini                                                                                                                                                                                                                                                   ', 'Los Angeles, California, United States');
INSERT INTO "Production_company" VALUES (2, 'Dune Entertainment', 'Brett Ratner                                                                                                                                                                                                                                                   ', 'Los Angeles, California, United States');
INSERT INTO "Production_company" VALUES (3, 'Ingenious Film Partners', 'Patrick McKenna                                                                                                                                                                                                                                                ', 'London, United Kingdom');
INSERT INTO "Production_company" VALUES (4, 'Gaumont', 'Nicolas Seydoux                                                                                                                                                                                                                                                ', 'La Villette, France');
INSERT INTO "Production_company" VALUES (5, 'Marvel Studios', 'Louis D''Esposito                                                                                                                                                                                                                                               ', 'Burbank, California, United States.');
INSERT INTO "Production_company" VALUES (6, 'Bel Air Entertainment', 'Natalie Zimmerman                                                                                                                                                                                                                                              ', 'Burbank, California, United States.');
INSERT INTO "Production_company" VALUES (7, 'DreamWorks Pictures', 'Jeffrey Katzenberg                                                                                                                                                                                                                                             ', 'Universal City, California, United States');
INSERT INTO "Production_company" VALUES (8, 'New Line Cinema', 'Richard Brener                                                                                                                                                                                                                                                 ', 'Burbank, California, United States');
INSERT INTO "Production_company" VALUES (9, 'RatPac-Dune Entertainment', ' Ben Fritz                                                                                                                                                                                                                                                     ', 'Los Angeles, California, United States');
INSERT INTO "Production_company" VALUES (10, 'Vertigo Entertainment', 'Doug Davison                                                                                                                                                                                                                                                   ', 'Los Angeles, California, United States');
INSERT INTO "Production_company" VALUES (11, 'Lin Pictures', 'Eric Serra                                                                                                                                                                                                                                                     ', 'Beijing, China');
INSERT INTO "Production_company" VALUES (12, 'Columbia Pictures', 'Jack Cohn                                                                                                                                                                                                                                                      ', 'Los Angeles, California, United States');
INSERT INTO "Production_company" VALUES (13, 'Bona Film Group', 'Xu Liang                                                                                                                                                                                                                                                       ', 'Beijing, China');
INSERT INTO "Production_company" VALUES (14, 'Warner Bros. Pictures', 'Sam Warner                                                                                                                                                                                                                                                     ', 'Burbank, California, United States.');
INSERT INTO "Production_company" VALUES (15, 'DC Films', 'Zack Snyder                                                                                                                                                                                                                                                    ', 'Burbank, California, United States');
INSERT INTO "Production_company" VALUES (16, 'The Safran Company', 'Peter Safran                                                                                                                                                                                                                                                   ', 'Los Angeles, California, United States');
INSERT INTO "Production_company" VALUES (17, 'Cruel and Unusual Films', 'Wesley Coller                                                                                                                                                                                                                                                  ', 'Pasadena, California, United States');
INSERT INTO "Production_company" VALUES (18, 'X-Filme Creative Pool', 'Dani Levy                                                                                                                                                                                                                                                      ', 'Munich, Germany');
INSERT INTO "Production_company" VALUES (19, 'Anarchos Productions', 'Reinhold Heil                                                                                                                                                                                                                                                  ', 'Chicago, Illinois, U.S.A.');
COMMIT;

-- ----------------------------
-- Primary Key structure for table Director
-- ----------------------------
ALTER TABLE "Director" ADD CONSTRAINT "Director_pkey" PRIMARY KEY ("ID_Dir");

-- ----------------------------
-- Primary Key structure for table Film_genres
-- ----------------------------
ALTER TABLE "Film_genres" ADD CONSTRAINT "Film genres_pkey" PRIMARY KEY ("ID FG");

-- ----------------------------
-- Primary Key structure for table Films
-- ----------------------------
ALTER TABLE "Films" ADD CONSTRAINT "Films_pkey" PRIMARY KEY ("ID_F");

-- ----------------------------
-- Primary Key structure for table Production_company
-- ----------------------------
ALTER TABLE "Production_company" ADD CONSTRAINT "Production company_pkey" PRIMARY KEY ("ID_PC");
