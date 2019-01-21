CREATE TABLE "Director" (
"ID_Dir" int4 NOT NULL,
"First_name" varchar(255) COLLATE "default" NOT NULL,
"Last_name" varchar(255) COLLATE "default" NOT NULL,
"Born" date NOT NULL,
"Died" date,
"Nationality" varchar(255) COLLATE "default" NOT NULL,
CONSTRAINT "Director_pkey" PRIMARY KEY ("ID_Dir") 
)
WITHOUT OIDS;
ALTER TABLE "Director" OWNER TO "postgres";

CREATE TABLE "Film_genres" (
"ID FG" int4 NOT NULL,
"Films_ genres" varchar(255) COLLATE "default" NOT NULL,
CONSTRAINT "Film genres_pkey" PRIMARY KEY ("ID FG") 
)
WITHOUT OIDS;
ALTER TABLE "Film_genres" OWNER TO "postgres";

CREATE TABLE "FilmDirectorID" (
"FID" int4 NOT NULL,
"DID" int4 NOT NULL
)
WITHOUT OIDS;
ALTER TABLE "FilmDirectorID" OWNER TO "postgres";

CREATE TABLE "FilmGenresID" (
"FID" int4 NOT NULL,
"GID" int4 NOT NULL
)
WITHOUT OIDS;
ALTER TABLE "FilmGenresID" OWNER TO "postgres";

CREATE TABLE "Films" (
"ID_F" int4 NOT NULL,
"Films" varchar(100) COLLATE "default" NOT NULL,
"Running_time" int4 NOT NULL,
"Release_date" date NOT NULL,
"Date_add" date NOT NULL,
"Budget" int4 NOT NULL,
CONSTRAINT "Films_pkey" PRIMARY KEY ("ID_F") 
)
WITHOUT OIDS;
ALTER TABLE "Films" OWNER TO "postgres";

CREATE TABLE "FilmStudioID" (
"FID" int4 NOT NULL,
"SID" int4 NOT NULL
)
WITHOUT OIDS;
ALTER TABLE "FilmStudioID" OWNER TO "postgres";

CREATE TABLE "Production_company" (
"ID_PC" int4 NOT NULL,
"Production_company" varchar(255) COLLATE "default" NOT NULL,
"Contact_person" char(255) COLLATE "default" NOT NULL,
"Address" varchar(255) COLLATE "default",
CONSTRAINT "Production company_pkey" PRIMARY KEY ("ID_PC") 
)
WITHOUT OIDS;
ALTER TABLE "Production_company" OWNER TO "postgres";


ALTER TABLE "Director" ADD CONSTRAINT "Director" FOREIGN KEY ("ID_Dir") REFERENCES "FilmDirectorID" ("DID");
ALTER TABLE "FilmDirectorID" ADD CONSTRAINT "FilmDirectorID" FOREIGN KEY ("FID") REFERENCES "Films" ("ID_F");
ALTER TABLE "Production_company" ADD CONSTRAINT "Production_company" FOREIGN KEY ("ID_PC") REFERENCES "FilmStudioID" ("SID");
ALTER TABLE "FilmStudioID" ADD CONSTRAINT "FilmStudioID" FOREIGN KEY ("FID") REFERENCES "Films" ("ID_F");
ALTER TABLE "Film_genres" ADD CONSTRAINT "Films_ genres" FOREIGN KEY ("ID FG") REFERENCES "FilmGenresID" ("GID");
ALTER TABLE "FilmGenresID" ADD CONSTRAINT "FilmGenresID" FOREIGN KEY ("FID") REFERENCES "Films" ("ID_F");

