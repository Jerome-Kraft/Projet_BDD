--------------------------------------------------------
--  Fichier créé - samedi-juin-19-2021
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AUTEURS
--------------------------------------------------------

  CREATE TABLE "HR"."AUTEURS"
   (	"ID_AUTEUR" NUMBER(*,0),
	"NOM_AUTEUR" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP",
	"PRENOM_AUTEUR" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------

  CREATE TABLE "HR"."COUNTRIES"
   (	"COUNTRY_ID" CHAR(2 BYTE) COLLATE "USING_NLS_COMP",
	"COUNTRY_NAME" VARCHAR2(40 BYTE) COLLATE "USING_NLS_COMP",
	"REGION_ID" NUMBER,
	 CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID") ENABLE
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  ORGANIZATION INDEX NOCOMPRESS PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"
 PCTTHRESHOLD 50;

   COMMENT ON COLUMN "HR"."COUNTRIES"."COUNTRY_ID" IS 'Primary key of countries table.';
   COMMENT ON COLUMN "HR"."COUNTRIES"."COUNTRY_NAME" IS 'Country name';
   COMMENT ON COLUMN "HR"."COUNTRIES"."REGION_ID" IS 'Region ID for the country. Foreign key to region_id column in the departments table.';
   COMMENT ON TABLE "HR"."COUNTRIES"  IS 'country table. Contains 25 rows. References with locations table.';
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "HR"."DEPARTMENTS"
   (	"DEPARTMENT_ID" NUMBER(4,0),
	"DEPARTMENT_NAME" VARCHAR2(30 BYTE) COLLATE "USING_NLS_COMP",
	"MANAGER_ID" NUMBER(6,0),
	"LOCATION_ID" NUMBER(4,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."DEPARTMENTS"."DEPARTMENT_ID" IS 'Primary key column of departments table.';
   COMMENT ON COLUMN "HR"."DEPARTMENTS"."DEPARTMENT_NAME" IS 'A not null column that shows name of a department. Administration,
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public
Relations, Sales, Finance, and Accounting. ';
   COMMENT ON COLUMN "HR"."DEPARTMENTS"."MANAGER_ID" IS 'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.';
   COMMENT ON COLUMN "HR"."DEPARTMENTS"."LOCATION_ID" IS 'Location id where a department is located. Foreign key to location_id column of locations table.';
   COMMENT ON TABLE "HR"."DEPARTMENTS"  IS 'Departments table that shows details of departments where employees
work. Contains 27 rows; references with locations, employees, and job_history tables.';
--------------------------------------------------------
--  DDL for Table DOMAINES
--------------------------------------------------------

  CREATE TABLE "HR"."DOMAINES"
   (	"ID_DOMAINE" NUMBER(*,0),
	"NOM_DOMAINE" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EDITEURS
--------------------------------------------------------

  CREATE TABLE "HR"."EDITEURS"
   (	"ID_EDITEUR" NUMBER(*,0),
	"NOM_EDITEUR" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "HR"."EMPLOYEES"
   (	"EMPLOYEE_ID" NUMBER(6,0),
	"FIRST_NAME" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP",
	"LAST_NAME" VARCHAR2(25 BYTE) COLLATE "USING_NLS_COMP",
	"EMAIL" VARCHAR2(25 BYTE) COLLATE "USING_NLS_COMP",
	"PHONE_NUMBER" VARCHAR2(20 BYTE) COLLATE "USING_NLS_COMP",
	"HIRE_DATE" DATE,
	"JOB_ID" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP",
	"SALARY" NUMBER(8,2),
	"COMMISSION_PCT" NUMBER(2,2),
	"MANAGER_ID" NUMBER(6,0),
	"DEPARTMENT_ID" NUMBER(4,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."EMPLOYEES"."EMPLOYEE_ID" IS 'Primary key of employees table.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."FIRST_NAME" IS 'First name of the employee. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."LAST_NAME" IS 'Last name of the employee. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."EMAIL" IS 'Email id of the employee';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."PHONE_NUMBER" IS 'Phone number of the employee; includes country code and area code';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."HIRE_DATE" IS 'Date when the employee started on this job. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."JOB_ID" IS 'Current job of the employee; foreign key to job_id column of the
jobs table. A not null column.';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."SALARY" IS 'Monthly salary of the employee. Must be greater
than zero (enforced by constraint emp_salary_min)';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."COMMISSION_PCT" IS 'Commission percentage of the employee; Only employees in sales
department elgible for commission percentage';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."MANAGER_ID" IS 'Manager id of the employee; has same domain as manager_id in
departments table. Foreign key to employee_id column of employees table.
(useful for reflexive joins and CONNECT BY query)';
   COMMENT ON COLUMN "HR"."EMPLOYEES"."DEPARTMENT_ID" IS 'Department id where employee works; foreign key to department_id
column of the departments table';
   COMMENT ON TABLE "HR"."EMPLOYEES"  IS 'employees table. Contains 107 rows. References with departments,
jobs, job_history tables. Contains a self reference.';
--------------------------------------------------------
--  DDL for Table EMPRUNTEURS
--------------------------------------------------------

  CREATE TABLE "HR"."EMPRUNTEURS"
   (	"ID_EMPRUNTEUR" NUMBER(*,0),
	"NOM_EMPRUNTEUR" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP",
	"PRENOM_EMPRUNTEUR" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP",
	"ID_EMPLOYE" NUMBER(*,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPRUNTS
--------------------------------------------------------

  CREATE TABLE "HR"."EMPRUNTS"
   (	"ID_EMPRUNT" NUMBER(*,0),
	"DATE_EMPRUNT" DATE,
	"DATE_RETOUR" DATE,
	"ID_EMPRUNTEUR" NUMBER(*,0),
	"ISBN" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP",
	"NUMERO_EXEMPLAIRE" NUMBER(*,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXEMPLAIRES_LIVRES
--------------------------------------------------------

  CREATE TABLE "HR"."EXEMPLAIRES_LIVRES"
   (	"ISBN" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP",
	"NUMERO_EXEMPLAIRE" NUMBER(*,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JOB_HISTORY
--------------------------------------------------------

  CREATE TABLE "HR"."JOB_HISTORY"
   (	"EMPLOYEE_ID" NUMBER(6,0),
	"START_DATE" DATE,
	"END_DATE" DATE,
	"JOB_ID" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP",
	"DEPARTMENT_ID" NUMBER(4,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."JOB_HISTORY"."EMPLOYEE_ID" IS 'A not null column in the complex primary key employee_id+start_date.
Foreign key to employee_id column of the employee table';
   COMMENT ON COLUMN "HR"."JOB_HISTORY"."START_DATE" IS 'A not null column in the complex primary key employee_id+start_date.
Must be less than the end_date of the job_history table. (enforced by
constraint jhist_date_interval)';
   COMMENT ON COLUMN "HR"."JOB_HISTORY"."END_DATE" IS 'Last day of the employee in this job role. A not null column. Must be
greater than the start_date of the job_history table.
(enforced by constraint jhist_date_interval)';
   COMMENT ON COLUMN "HR"."JOB_HISTORY"."JOB_ID" IS 'Job role in which the employee worked in the past; foreign key to
job_id column in the jobs table. A not null column.';
   COMMENT ON COLUMN "HR"."JOB_HISTORY"."DEPARTMENT_ID" IS 'Department id in which the employee worked in the past; foreign key to deparment_id column in the departments table';
   COMMENT ON TABLE "HR"."JOB_HISTORY"  IS 'Table that stores job history of the employees. If an employee
changes departments within the job or changes jobs within the department,
new rows get inserted into this table with old job information of the
employee. Contains a complex primary key: employee_id+start_date.
Contains 25 rows. References with jobs, employees, and departments tables.';
--------------------------------------------------------
--  DDL for Table JOBS
--------------------------------------------------------

  CREATE TABLE "HR"."JOBS"
   (	"JOB_ID" VARCHAR2(10 BYTE) COLLATE "USING_NLS_COMP",
	"JOB_TITLE" VARCHAR2(35 BYTE) COLLATE "USING_NLS_COMP",
	"MIN_SALARY" NUMBER(6,0),
	"MAX_SALARY" NUMBER(6,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."JOBS"."JOB_ID" IS 'Primary key of jobs table.';
   COMMENT ON COLUMN "HR"."JOBS"."JOB_TITLE" IS 'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';
   COMMENT ON COLUMN "HR"."JOBS"."MIN_SALARY" IS 'Minimum salary for a job title.';
   COMMENT ON COLUMN "HR"."JOBS"."MAX_SALARY" IS 'Maximum salary for a job title';
   COMMENT ON TABLE "HR"."JOBS"  IS 'jobs table with job titles and salary ranges. Contains 19 rows.
References with employees and job_history table.';
--------------------------------------------------------
--  DDL for Table LIVRES
--------------------------------------------------------

  CREATE TABLE "HR"."LIVRES"
   (	"ISBN" VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP",
	"ANNEE_PUBLICATION" NUMBER,
	"ID_AUTEUR1" NUMBER(*,0),
	"ID_AUTEUR2" NUMBER(*,0),
	"ID_AUTEUR3" NUMBER(*,0),
	"TITRE" VARCHAR2(200 BYTE) COLLATE "USING_NLS_COMP",
	"ID_EDITEUR" NUMBER(*,0),
	"ID_SOUS_DOMAINE" NUMBER(*,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------

  CREATE TABLE "HR"."LOCATIONS"
   (	"LOCATION_ID" NUMBER(4,0),
	"STREET_ADDRESS" VARCHAR2(40 BYTE) COLLATE "USING_NLS_COMP",
	"POSTAL_CODE" VARCHAR2(12 BYTE) COLLATE "USING_NLS_COMP",
	"CITY" VARCHAR2(30 BYTE) COLLATE "USING_NLS_COMP",
	"STATE_PROVINCE" VARCHAR2(25 BYTE) COLLATE "USING_NLS_COMP",
	"COUNTRY_ID" CHAR(2 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."LOCATIONS"."LOCATION_ID" IS 'Primary key of locations table';
   COMMENT ON COLUMN "HR"."LOCATIONS"."STREET_ADDRESS" IS 'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';
   COMMENT ON COLUMN "HR"."LOCATIONS"."POSTAL_CODE" IS 'Postal code of the location of an office, warehouse, or production site
of a company. ';
   COMMENT ON COLUMN "HR"."LOCATIONS"."CITY" IS 'A not null column that shows city where an office, warehouse, or
production site of a company is located. ';
   COMMENT ON COLUMN "HR"."LOCATIONS"."STATE_PROVINCE" IS 'State or Province where an office, warehouse, or production site of a
company is located.';
   COMMENT ON COLUMN "HR"."LOCATIONS"."COUNTRY_ID" IS 'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';
   COMMENT ON TABLE "HR"."LOCATIONS"  IS 'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. Contains 23 rows; references with the
departments and countries tables. ';
--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------

  CREATE TABLE "HR"."REGIONS"
   (	"REGION_ID" NUMBER,
	"REGION_NAME" VARCHAR2(25 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."REGIONS"."REGION_ID" IS 'Primary key of regions table.';
   COMMENT ON COLUMN "HR"."REGIONS"."REGION_NAME" IS 'Names of regions. Locations are in the countries of these regions.';
   COMMENT ON TABLE "HR"."REGIONS"  IS 'Regions table that contains region numbers and names. Contains 4 rows; references with the Countries table.';
--------------------------------------------------------
--  DDL for Table SOUS_DOMAINES
--------------------------------------------------------

  CREATE TABLE "HR"."SOUS_DOMAINES"
   (	"ID_SOUS_DOMAINE" NUMBER(*,0),
	"NOM_SOUS_DOMAINE" VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP",
	"ID_DOMAINE" NUMBER(*,0)
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View CONSULTATION
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."CONSULTATION" ("NOM_AUTEUR", "PRENOM_AUTEUR", "TITRE", "NOMBRE_EXEMPLAIRE", "ANNEE_PUBLICATION", "EDITEUR", "NOM_DOMAINE", "NOM_SOUS_DOMAINE") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT a.nom_auteur, a.prenom_auteur, l.titre, l.nombre_exemplaire, ed.annee_publication, ed.editeur,
d.nom_domaine, sd.nom_sous_domaine
FROM auteurs a, livres l, edition_livre ed, domaines d, sous_domaines sd
WHERE l.id_auteur = a.id_auteur AND l.isbn = ed.isbn AND l.id_domaine = d.id_domaine AND l.id_sous_domaine = sd.id_sous_domaine
;
--------------------------------------------------------
--  DDL for View CONSULTATION_ORACLE_ENREGISTRE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."CONSULTATION_ORACLE_ENREGISTRE" ("NOM_AUTEUR", "PRENOM_AUTEUR", "TITRE", "NOMBRE_EXEMPLAIRE", "ANNEE_PUBLICATION", "EDITEUR", "NOM_DOMAINE", "NOM_SOUS_DOMAINE") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT a.nom_auteur, a.prenom_auteur, l.titre, l.nombre_exemplaire, ed.annee_publication, ed.editeur,
d.nom_domaine, sd.nom_sous_domaine
FROM auteurs a, livres l, edition_livre ed, domaines d, sous_domaines sd
WHERE l.id_auteur = a.id_auteur AND l.isbn = ed.isbn AND l.id_domaine = d.id_domaine AND l.id_sous_domaine = sd.id_sous_domaine AND l.id_domaine != 3
;
--------------------------------------------------------
--  DDL for View DETAIL_CATEGORIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."DETAIL_CATEGORIES" ("NOM_AUTEUR", "PRENOM_AUTEUR", "TITRE", "NOMBRE_EXEMPLAIRE", "ISBN", "EDITEUR", "NOM_SOUS_DOMAINE", "NOM_DOMAINE") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT a.nom_auteur, a.prenom_auteur, l.titre, l.nombre_exemplaire, l.isbn, el.editeur, sd.nom_sous_domaine, d.nom_domaine
FROM livres l, auteurs a, edition_livre el, sous_domaines sd, domaines d
WHERE l.isbn = el.isbn AND sd.id_sous_domaine = l.id_sous_domaine AND d.id_domaine = l.id_domaine AND l.id_auteur = a.id_auteur
ORDER BY l.id_livre
;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View LISTE_EMPRUNTS_EN_COURS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."LISTE_EMPRUNTS_EN_COURS" ("ID_EMPRUNTEUR", "NOM_EMPRUNTEUR", "PRENOM_EMPRUNTEUR", "ID_EMPRUNT", "DATE_EMPRUNT", "DATE_RETOUR", "TITRE", "NOM_AUTEUR", "PRENOM_AUTEUR", "ANNEE_PUBLICATION", "ID_SOUS_DOMAINE", "ID_DOMAINE") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT e.id_emprunteur, e.nom_emprunteur, e.prenom_emprunteur, t.id_emprunt, t.date_emprunt, t.date_retour, l.titre, a.nom_auteur,
a.prenom_auteur, el.annee_publication, l.id_sous_domaine, l.id_domaine
FROM livres l, auteurs a, edition_livre el, emprunteurs e, emprunts t
WHERE t.date_retour > sysdate AND l.id_livre = t.id_livre AND l.id_auteur = a.id_auteur AND l.isbn = el.isbn
AND t.id_emprunteur = e.id_emprunteur
;
--------------------------------------------------------
--  DDL for View RETARD_EMPRUNT
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HR"."RETARD_EMPRUNT" ("ID_EMPRUNT", "DATE_EMPRUNT", "DATE_RETOUR", "ID_EMPRUNTEUR", "ID_LIVRE", "NOM_EMPRUNTEUR", "PRENOM_EMPRUNTEUR") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT t."ID_EMPRUNT",t."DATE_EMPRUNT",t."DATE_RETOUR",t."ID_EMPRUNTEUR",t."ID_LIVRE", e.nom_emprunteur, e.prenom_emprunteur
FROM emprunteurs e, emprunts t
WHERE date_retour < SYSDATE AND t.id_emprunteur = e.id_emprunteur
;
REM INSERTING into HR.AUTEURS
SET DEFINE OFF;
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('0','WELLS','Herbert George');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('1','KEROUAC','Jack');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('2','KING','Stephen');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('3','BROOKS','Terry');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('4','GIBSON','William');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('5','DAMASIO','Alain');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('6','DICK','Philip Kindred');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('7','PRATCHETT','Terry');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('8','GAIMAN','Neil');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('9','ASIMOV','Isaac');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('10','HOWEY','Hugh');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('11','LOVECRAFT','Howard Phillips');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('12','MOORCOCK','Michael');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('13','LAMBERT','Christophe');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('14','STEPHENSON','Neal Town');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('15','SIMMONS','Dan');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('16','RICHNER','Antoinette');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('17','SILVERBERG','Robert');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('18','PICHAUD','Christophe');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('19','HONDERMARCK','Olivier');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('20','DELANNOY','Claude');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('21','JELLEY','Craig');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('22','MILTON','Stephanie');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('23','YAMAMORI','Takashi');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('24','ANDRIEU','Olivier');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('25','BAIBOU','Sonia');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('26','HAINAUT','Jean-Luc');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('27','BENAÏCHOU','Saïd');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('28','CERF','Isabelle');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('29','SALERNO','Tony Carmine');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('30','RIOU','Arnaud');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('31','BYRNE','Rhonda');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('32','GALEANO','Jordi');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('33','SPERANDIO','Eric-Pier');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('34','CHEMIN','Henri');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('35','DUVAL','Christian');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('36','TAYLOR','Carole');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('37','TOLLE','Eckhart');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('38','RUIZ','Miguel');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('39','RUIZ','José');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('40','ALSINA','Marie');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('41','LAVEY','Anton-Szandor');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('42','GALLEY','David');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('43','LENOIR','Frédéric');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('44','GIBRAN','Khalil');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('45','DUPONT-ROC','Roselyne');
Insert into HR.AUTEURS (ID_AUTEUR,NOM_AUTEUR,PRENOM_AUTEUR) values ('46','GUGGENHEIM','Antoine');
REM INSERTING into HR.COUNTRIES
SET DEFINE OFF;
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AR','Argentina','2');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AU','Australia','3');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BE','Belgium','1');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BR','Brazil','2');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CA','Canada','2');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CH','Switzerland','1');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CN','China','3');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DE','Germany','1');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DK','Denmark','1');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('EG','Egypt','4');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('FR','France','1');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('HK','HongKong','3');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IL','Israel','4');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IN','India','3');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IT','Italy','1');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('JP','Japan','3');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('KW','Kuwait','4');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('MX','Mexico','2');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NG','Nigeria','4');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NL','Netherlands','1');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('SG','Singapore','3');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('UK','United Kingdom','1');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('US','United States of America','2');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZM','Zambia','4');
Insert into HR.COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZW','Zimbabwe','4');
REM INSERTING into HR.DEPARTMENTS
SET DEFINE OFF;
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('10','Administration','200','1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('20','Marketing','201','1800');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('30','Purchasing','114','1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('40','Human Resources','203','2400');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('50','Shipping','121','1500');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('60','IT','103','1400');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('70','Public Relations','204','2700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('80','Sales','145','2500');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('90','Executive','100','1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('100','Finance','108','1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('110','Accounting','205','1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('120','Treasury',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('130','Corporate Tax',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('140','Control And Credit',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('150','Shareholder Services',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('160','Benefits',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('170','Manufacturing',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('180','Construction',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('190','Contracting',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('200','Operations',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('210','IT Support',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('220','NOC',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('230','IT Helpdesk',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('240','Government Sales',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('250','Retail Sales',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('260','Recruiting',null,'1700');
Insert into HR.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values ('270','Payroll',null,'1700');
REM INSERTING into HR.DOMAINES
SET DEFINE OFF;
Insert into HR.DOMAINES (ID_DOMAINE,NOM_DOMAINE) values ('0','Science-fiction');
Insert into HR.DOMAINES (ID_DOMAINE,NOM_DOMAINE) values ('100','Informatique');
Insert into HR.DOMAINES (ID_DOMAINE,NOM_DOMAINE) values ('200','Finance et gestion');
Insert into HR.DOMAINES (ID_DOMAINE,NOM_DOMAINE) values ('300','Spiritualité');
Insert into HR.DOMAINES (ID_DOMAINE,NOM_DOMAINE) values ('400','Littérature');
Insert into HR.DOMAINES (ID_DOMAINE,NOM_DOMAINE) values ('500','Sciences Humaines et Arts');
Insert into HR.DOMAINES (ID_DOMAINE,NOM_DOMAINE) values ('600','Loisirs et voyages');
REM INSERTING into HR.EDITEURS
SET DEFINE OFF;
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('0','Gallimard');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('1','Pocket');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('2','Robert Laffont');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('3','J_ai Lu');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('4','Livre de Poche');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('5','‎JC Lattès');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('6','Albin Michel');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('7','Au Diable Vauvert');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('8','La Volte');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('9','10/18');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('10','Audiolib');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('11','Harper Voyager');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('12','Bantam Books');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('13','Everyman Guides');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('14','WWW.SNOWBALLPUBLISHING.COM');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('15','Heyne');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('16','HarperCollins');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('17','Actes Sud');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('18','Thélème');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('19','Points');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('20','Bragelonne');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('21','L_Atalante');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('22','Gateway');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('23','Buchet-Chastel');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('24','Dunod');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('25','Eyrolles');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('26','Soleil');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('27','Ellipses');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('28','Exergue');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('29','Editions Véga');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('30','Guy Trédaniel');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('31','Artémis');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('32','Alliance Magique');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('33','Be Light Editions');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('34','First');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('35','Jouvence');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('36','Le Temps Présent');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('37','Camion Blanc');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('38','Editions de l_Opportun');
Insert into HR.EDITEURS (ID_EDITEUR,NOM_EDITEUR) values ('39','Cerf');
REM INSERTING into HR.EMPLOYEES
SET DEFINE OFF;
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('100','Steven','King','SKING','515.123.4567',to_date('17/06/87','DD/MM/RR'),'AD_PRES','24000',null,null,'90');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('101','Neena','Kochhar','NKOCHHAR','515.123.4568',to_date('21/09/89','DD/MM/RR'),'AD_VP','17000',null,'100','90');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('102','Lex','De Haan','LDEHAAN','515.123.4569',to_date('13/01/93','DD/MM/RR'),'AD_VP','17000',null,'100','90');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('103','Alexander','Hunold','AHUNOLD','590.423.4567',to_date('03/01/90','DD/MM/RR'),'IT_PROG','9000',null,'102','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('104','Bruce','Ernst','BERNST','590.423.4568',to_date('21/05/91','DD/MM/RR'),'IT_PROG','6000',null,'103','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('105','David','Austin','DAUSTIN','590.423.4569',to_date('25/06/97','DD/MM/RR'),'IT_PROG','4800',null,'103','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('106','Valli','Pataballa','VPATABAL','590.423.4560',to_date('05/02/98','DD/MM/RR'),'IT_PROG','4800',null,'103','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('107','Diana','Lorentz','DLORENTZ','590.423.5567',to_date('07/02/99','DD/MM/RR'),'IT_PROG','4200',null,'103','60');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('108','Nancy','Greenberg','NGREENBE','515.124.4569',to_date('17/08/94','DD/MM/RR'),'FI_MGR','12000',null,'101','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('109','Daniel','Faviet','DFAVIET','515.124.4169',to_date('16/08/94','DD/MM/RR'),'FI_ACCOUNT','9000',null,'108','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('110','John','Chen','JCHEN','515.124.4269',to_date('28/09/97','DD/MM/RR'),'FI_ACCOUNT','8200',null,'108','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('111','Ismael','Sciarra','ISCIARRA','515.124.4369',to_date('30/09/97','DD/MM/RR'),'FI_ACCOUNT','7700',null,'108','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('112','Jose Manuel','Urman','JMURMAN','515.124.4469',to_date('07/03/98','DD/MM/RR'),'FI_ACCOUNT','7800',null,'108','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('113','Luis','Popp','LPOPP','515.124.4567',to_date('07/12/99','DD/MM/RR'),'FI_ACCOUNT','6900',null,'108','100');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('114','Den','Raphaely','DRAPHEAL','515.127.4561',to_date('07/12/94','DD/MM/RR'),'PU_MAN','11000',null,'100','30');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('115','Alexander','Khoo','AKHOO','515.127.4562',to_date('18/05/95','DD/MM/RR'),'PU_CLERK','3100',null,'114','30');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('116','Shelli','Baida','SBAIDA','515.127.4563',to_date('24/12/97','DD/MM/RR'),'PU_CLERK','2900',null,'114','30');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('117','Sigal','Tobias','STOBIAS','515.127.4564',to_date('24/07/97','DD/MM/RR'),'PU_CLERK','2800',null,'114','30');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('118','Guy','Himuro','GHIMURO','515.127.4565',to_date('15/11/98','DD/MM/RR'),'PU_CLERK','2600',null,'114','30');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('119','Karen','Colmenares','KCOLMENA','515.127.4566',to_date('10/08/99','DD/MM/RR'),'PU_CLERK','2500',null,'114','30');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('120','Matthew','Weiss','MWEISS','650.123.1234',to_date('18/07/96','DD/MM/RR'),'ST_MAN','8000',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('121','Adam','Fripp','AFRIPP','650.123.2234',to_date('10/04/97','DD/MM/RR'),'ST_MAN','8200',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('122','Payam','Kaufling','PKAUFLIN','650.123.3234',to_date('01/05/95','DD/MM/RR'),'ST_MAN','7900',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('123','Shanta','Vollman','SVOLLMAN','650.123.4234',to_date('10/10/97','DD/MM/RR'),'ST_MAN','6500',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('124','Kevin','Mourgos','KMOURGOS','650.123.5234',to_date('16/11/99','DD/MM/RR'),'ST_MAN','5800',null,'100','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('125','Julia','Nayer','JNAYER','650.124.1214',to_date('16/07/97','DD/MM/RR'),'ST_CLERK','3200',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('126','Irene','Mikkilineni','IMIKKILI','650.124.1224',to_date('28/09/98','DD/MM/RR'),'ST_CLERK','2700',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('127','James','Landry','JLANDRY','650.124.1334',to_date('14/01/99','DD/MM/RR'),'ST_CLERK','2400',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('128','Steven','Markle','SMARKLE','650.124.1434',to_date('08/03/00','DD/MM/RR'),'ST_CLERK','2200',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('129','Laura','Bissot','LBISSOT','650.124.5234',to_date('20/08/97','DD/MM/RR'),'ST_CLERK','3300',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('130','Mozhe','Atkinson','MATKINSO','650.124.6234',to_date('30/10/97','DD/MM/RR'),'ST_CLERK','2800',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('131','James','Marlow','JAMRLOW','650.124.7234',to_date('16/02/97','DD/MM/RR'),'ST_CLERK','2500',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('132','TJ','Olson','TJOLSON','650.124.8234',to_date('10/04/99','DD/MM/RR'),'ST_CLERK','2100',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('133','Jason','Mallin','JMALLIN','650.127.1934',to_date('14/06/96','DD/MM/RR'),'ST_CLERK','3300',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('134','Michael','Rogers','MROGERS','650.127.1834',to_date('26/08/98','DD/MM/RR'),'ST_CLERK','2900',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('135','Ki','Gee','KGEE','650.127.1734',to_date('12/12/99','DD/MM/RR'),'ST_CLERK','2400',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('136','Hazel','Philtanker','HPHILTAN','650.127.1634',to_date('06/02/00','DD/MM/RR'),'ST_CLERK','2200',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('137','Renske','Ladwig','RLADWIG','650.121.1234',to_date('14/07/95','DD/MM/RR'),'ST_CLERK','3600',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('138','Stephen','Stiles','SSTILES','650.121.2034',to_date('26/10/97','DD/MM/RR'),'ST_CLERK','3200',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('139','John','Seo','JSEO','650.121.2019',to_date('12/02/98','DD/MM/RR'),'ST_CLERK','2700',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('140','Joshua','Patel','JPATEL','650.121.1834',to_date('06/04/98','DD/MM/RR'),'ST_CLERK','2500',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('141','Trenna','Rajs','TRAJS','650.121.8009',to_date('17/10/95','DD/MM/RR'),'ST_CLERK','3500',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('142','Curtis','Davies','CDAVIES','650.121.2994',to_date('29/01/97','DD/MM/RR'),'ST_CLERK','3100',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('143','Randall','Matos','RMATOS','650.121.2874',to_date('15/03/98','DD/MM/RR'),'ST_CLERK','2600',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('144','Peter','Vargas','PVARGAS','650.121.2004',to_date('09/07/98','DD/MM/RR'),'ST_CLERK','2500',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('145','John','Russell','JRUSSEL','011.44.1344.429268',to_date('01/10/96','DD/MM/RR'),'SA_MAN','14000','0,4','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('146','Karen','Partners','KPARTNER','011.44.1344.467268',to_date('05/01/97','DD/MM/RR'),'SA_MAN','13500','0,3','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('147','Alberto','Errazuriz','AERRAZUR','011.44.1344.429278',to_date('10/03/97','DD/MM/RR'),'SA_MAN','12000','0,3','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('148','Gerald','Cambrault','GCAMBRAU','011.44.1344.619268',to_date('15/10/99','DD/MM/RR'),'SA_MAN','11000','0,3','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('149','Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018',to_date('29/01/00','DD/MM/RR'),'SA_MAN','10500','0,2','100','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('150','Peter','Tucker','PTUCKER','011.44.1344.129268',to_date('30/01/97','DD/MM/RR'),'SA_REP','10000','0,3','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('151','David','Bernstein','DBERNSTE','011.44.1344.345268',to_date('24/03/97','DD/MM/RR'),'SA_REP','9500','0,25','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('152','Peter','Hall','PHALL','011.44.1344.478968',to_date('20/08/97','DD/MM/RR'),'SA_REP','9000','0,25','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('153','Christopher','Olsen','COLSEN','011.44.1344.498718',to_date('30/03/98','DD/MM/RR'),'SA_REP','8000','0,2','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('154','Nanette','Cambrault','NCAMBRAU','011.44.1344.987668',to_date('09/12/98','DD/MM/RR'),'SA_REP','7500','0,2','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('155','Oliver','Tuvault','OTUVAULT','011.44.1344.486508',to_date('23/11/99','DD/MM/RR'),'SA_REP','7000','0,15','145','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('156','Janette','King','JKING','011.44.1345.429268',to_date('30/01/96','DD/MM/RR'),'SA_REP','10000','0,35','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('157','Patrick','Sully','PSULLY','011.44.1345.929268',to_date('04/03/96','DD/MM/RR'),'SA_REP','9500','0,35','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('158','Allan','McEwen','AMCEWEN','011.44.1345.829268',to_date('01/08/96','DD/MM/RR'),'SA_REP','9000','0,35','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('159','Lindsey','Smith','LSMITH','011.44.1345.729268',to_date('10/03/97','DD/MM/RR'),'SA_REP','8000','0,3','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('160','Louise','Doran','LDORAN','011.44.1345.629268',to_date('15/12/97','DD/MM/RR'),'SA_REP','7500','0,3','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('161','Sarath','Sewall','SSEWALL','011.44.1345.529268',to_date('03/11/98','DD/MM/RR'),'SA_REP','7000','0,25','146','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('162','Clara','Vishney','CVISHNEY','011.44.1346.129268',to_date('11/11/97','DD/MM/RR'),'SA_REP','10500','0,25','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('163','Danielle','Greene','DGREENE','011.44.1346.229268',to_date('19/03/99','DD/MM/RR'),'SA_REP','9500','0,15','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('164','Mattea','Marvins','MMARVINS','011.44.1346.329268',to_date('24/01/00','DD/MM/RR'),'SA_REP','7200','0,1','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('165','David','Lee','DLEE','011.44.1346.529268',to_date('23/02/00','DD/MM/RR'),'SA_REP','6800','0,1','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('166','Sundar','Ande','SANDE','011.44.1346.629268',to_date('24/03/00','DD/MM/RR'),'SA_REP','6400','0,1','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('167','Amit','Banda','ABANDA','011.44.1346.729268',to_date('21/04/00','DD/MM/RR'),'SA_REP','6200','0,1','147','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('168','Lisa','Ozer','LOZER','011.44.1343.929268',to_date('11/03/97','DD/MM/RR'),'SA_REP','11500','0,25','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('169','Harrison','Bloom','HBLOOM','011.44.1343.829268',to_date('23/03/98','DD/MM/RR'),'SA_REP','10000','0,2','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('170','Tayler','Fox','TFOX','011.44.1343.729268',to_date('24/01/98','DD/MM/RR'),'SA_REP','9600','0,2','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('171','William','Smith','WSMITH','011.44.1343.629268',to_date('23/02/99','DD/MM/RR'),'SA_REP','7400','0,15','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('172','Elizabeth','Bates','EBATES','011.44.1343.529268',to_date('24/03/99','DD/MM/RR'),'SA_REP','7300','0,15','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('173','Sundita','Kumar','SKUMAR','011.44.1343.329268',to_date('21/04/00','DD/MM/RR'),'SA_REP','6100','0,1','148','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('174','Ellen','Abel','EABEL','011.44.1644.429267',to_date('11/05/96','DD/MM/RR'),'SA_REP','11000','0,3','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('175','Alyssa','Hutton','AHUTTON','011.44.1644.429266',to_date('19/03/97','DD/MM/RR'),'SA_REP','8800','0,25','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('176','Jonathon','Taylor','JTAYLOR','011.44.1644.429265',to_date('24/03/98','DD/MM/RR'),'SA_REP','8600','0,2','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('177','Jack','Livingston','JLIVINGS','011.44.1644.429264',to_date('23/04/98','DD/MM/RR'),'SA_REP','8400','0,2','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('178','Kimberely','Grant','KGRANT','011.44.1644.429263',to_date('24/05/99','DD/MM/RR'),'SA_REP','7000','0,15','149',null);
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('179','Charles','Johnson','CJOHNSON','011.44.1644.429262',to_date('04/01/00','DD/MM/RR'),'SA_REP','6200','0,1','149','80');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('180','Winston','Taylor','WTAYLOR','650.507.9876',to_date('24/01/98','DD/MM/RR'),'SH_CLERK','3200',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('181','Jean','Fleaur','JFLEAUR','650.507.9877',to_date('23/02/98','DD/MM/RR'),'SH_CLERK','3100',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('182','Martha','Sullivan','MSULLIVA','650.507.9878',to_date('21/06/99','DD/MM/RR'),'SH_CLERK','2500',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('183','Girard','Geoni','GGEONI','650.507.9879',to_date('03/02/00','DD/MM/RR'),'SH_CLERK','2800',null,'120','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('184','Nandita','Sarchand','NSARCHAN','650.509.1876',to_date('27/01/96','DD/MM/RR'),'SH_CLERK','4200',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('185','Alexis','Bull','ABULL','650.509.2876',to_date('20/02/97','DD/MM/RR'),'SH_CLERK','4100',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('186','Julia','Dellinger','JDELLING','650.509.3876',to_date('24/06/98','DD/MM/RR'),'SH_CLERK','3400',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('187','Anthony','Cabrio','ACABRIO','650.509.4876',to_date('07/02/99','DD/MM/RR'),'SH_CLERK','3000',null,'121','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('188','Kelly','Chung','KCHUNG','650.505.1876',to_date('14/06/97','DD/MM/RR'),'SH_CLERK','3800',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('189','Jennifer','Dilly','JDILLY','650.505.2876',to_date('13/08/97','DD/MM/RR'),'SH_CLERK','3600',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('190','Timothy','Gates','TGATES','650.505.3876',to_date('11/07/98','DD/MM/RR'),'SH_CLERK','2900',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('191','Randall','Perkins','RPERKINS','650.505.4876',to_date('19/12/99','DD/MM/RR'),'SH_CLERK','2500',null,'122','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('192','Sarah','Bell','SBELL','650.501.1876',to_date('04/02/96','DD/MM/RR'),'SH_CLERK','4000',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('193','Britney','Everett','BEVERETT','650.501.2876',to_date('03/03/97','DD/MM/RR'),'SH_CLERK','3900',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('194','Samuel','McCain','SMCCAIN','650.501.3876',to_date('01/07/98','DD/MM/RR'),'SH_CLERK','3200',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('195','Vance','Jones','VJONES','650.501.4876',to_date('17/03/99','DD/MM/RR'),'SH_CLERK','2800',null,'123','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('196','Alana','Walsh','AWALSH','650.507.9811',to_date('24/04/98','DD/MM/RR'),'SH_CLERK','3100',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('197','Kevin','Feeney','KFEENEY','650.507.9822',to_date('23/05/98','DD/MM/RR'),'SH_CLERK','3000',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('198','Donald','OConnell','DOCONNEL','650.507.9833',to_date('21/06/99','DD/MM/RR'),'SH_CLERK','2600',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('199','Douglas','Grant','DGRANT','650.507.9844',to_date('13/01/00','DD/MM/RR'),'SH_CLERK','2600',null,'124','50');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('200','Jennifer','Whalen','JWHALEN','515.123.4444',to_date('17/09/87','DD/MM/RR'),'AD_ASST','4400',null,'101','10');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('201','Michael','Hartstein','MHARTSTE','515.123.5555',to_date('17/02/96','DD/MM/RR'),'MK_MAN','13000',null,'100','20');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('202','Pat','Fay','PFAY','603.123.6666',to_date('17/08/97','DD/MM/RR'),'MK_REP','6000',null,'201','20');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('203','Susan','Mavris','SMAVRIS','515.123.7777',to_date('07/06/94','DD/MM/RR'),'HR_REP','6500',null,'101','40');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('204','Hermann','Baer','HBAER','515.123.8888',to_date('07/06/94','DD/MM/RR'),'PR_REP','10000',null,'101','70');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('205','Shelley','Higgins','SHIGGINS','515.123.8080',to_date('07/06/94','DD/MM/RR'),'AC_MGR','12000',null,'101','110');
Insert into HR.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ('206','William','Gietz','WGIETZ','515.123.8181',to_date('07/06/94','DD/MM/RR'),'AC_ACCOUNT','8300',null,'205','110');
REM INSERTING into HR.EMPRUNTEURS
SET DEFINE OFF;
Insert into HR.EMPRUNTEURS (ID_EMPRUNTEUR,NOM_EMPRUNTEUR,PRENOM_EMPRUNTEUR,ID_EMPLOYE) values ('0','MKIBANGU','Vital',null);
Insert into HR.EMPRUNTEURS (ID_EMPRUNTEUR,NOM_EMPRUNTEUR,PRENOM_EMPRUNTEUR,ID_EMPLOYE) values ('1','KEFI','Kalil',null);
Insert into HR.EMPRUNTEURS (ID_EMPRUNTEUR,NOM_EMPRUNTEUR,PRENOM_EMPRUNTEUR,ID_EMPLOYE) values ('2','AMALANATHAN','Elvis',null);
Insert into HR.EMPRUNTEURS (ID_EMPRUNTEUR,NOM_EMPRUNTEUR,PRENOM_EMPRUNTEUR,ID_EMPLOYE) values ('3','KRAFT','Jérôme',null);
Insert into HR.EMPRUNTEURS (ID_EMPRUNTEUR,NOM_EMPRUNTEUR,PRENOM_EMPRUNTEUR,ID_EMPLOYE) values ('4','KING','Steven','100');
Insert into HR.EMPRUNTEURS (ID_EMPRUNTEUR,NOM_EMPRUNTEUR,PRENOM_EMPRUNTEUR,ID_EMPLOYE) values ('5','AUSTIN','David','105');
Insert into HR.EMPRUNTEURS (ID_EMPRUNTEUR,NOM_EMPRUNTEUR,PRENOM_EMPRUNTEUR,ID_EMPLOYE) values ('6','PATABALLA','Valli','106');
Insert into HR.EMPRUNTEURS (ID_EMPRUNTEUR,NOM_EMPRUNTEUR,PRENOM_EMPRUNTEUR,ID_EMPLOYE) values ('7','POPP','Luis','113');
Insert into HR.EMPRUNTEURS (ID_EMPRUNTEUR,NOM_EMPRUNTEUR,PRENOM_EMPRUNTEUR,ID_EMPLOYE) values ('8','OSMANI','Aomar',null);
REM INSERTING into HR.EMPRUNTS
SET DEFINE OFF;
Insert into HR.EMPRUNTS (ID_EMPRUNT,DATE_EMPRUNT,DATE_RETOUR,ID_EMPRUNTEUR,ISBN,NUMERO_EXEMPLAIRE) values ('0',to_date('19/06/21','DD/MM/RR'),null,'7','-22794','1');
REM INSERTING into HR.EXEMPLAIRES_LIVRES
SET DEFINE OFF;
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-10045','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-10045','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-1151','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-11569','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-11569','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-11569','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-11746','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-12267','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-12267','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-12426','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-12426','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-12426','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-1337','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-15026','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-15313','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-15396','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-15396','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-15401','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-15412','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-16597','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17632','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17870','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17870','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17870','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17877','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17877','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17877','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17882','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17882','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-17882','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-18808','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-18849','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-18849','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-18849','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-19140','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2035','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2035','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-21119','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-22046','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-22046','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-22046','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-22048','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2253151545','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2266154029','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-22794','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-23251','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-23364','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-24996','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2640','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2681','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2709645070','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2709645070','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2710','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2721','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-2721','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-286221','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-29075','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-291789','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-29892','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-30435','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-30446','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-31220','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-3148','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-32112','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-33568','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-33587','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-33699','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-33963','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-34461','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-35086','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-35090','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-35092','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-35099','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-35568','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-35802','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-35836','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36630','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36630','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36630','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36634','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36634','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36634','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36636','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36638','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36638','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-36638','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-37005','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-37306','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-41982','0');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-44286','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-45399','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-45401','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-4857','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-506871','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-512940','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-52282','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-5551','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-60093','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-6662','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-67147','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-67210','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-6792','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-72303','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-72303','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-72303','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-7238','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-7466','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-7550','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-7599','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-7653','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-7690','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-77711','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-77711','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-78107','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-79402','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-79402','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-79402','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-79749','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-80469','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-80675','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-80675','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-80675','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-80939','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-80939','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-80939','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-810779','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-8155','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-83520','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-84347','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-85575','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-8573','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-87653','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-87653','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-88352','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-88386','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-910261','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-910261','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-910261','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-916200','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-93726','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-9470','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-9601','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-9601','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-9608','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-9608','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('-9682','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('273','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('289','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('364','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('364','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('364','3');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('364','4');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('364','5');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('364','6');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('364','7');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('372','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('534','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('7491514','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('83','1');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('83','2');
Insert into HR.EXEMPLAIRES_LIVRES (ISBN,NUMERO_EXEMPLAIRE) values ('83','3');
REM INSERTING into HR.JOB_HISTORY
SET DEFINE OFF;
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('102',to_date('13/01/93','DD/MM/RR'),to_date('24/07/98','DD/MM/RR'),'IT_PROG','60');
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('101',to_date('21/09/89','DD/MM/RR'),to_date('27/10/93','DD/MM/RR'),'AC_ACCOUNT','110');
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('101',to_date('28/10/93','DD/MM/RR'),to_date('15/03/97','DD/MM/RR'),'AC_MGR','110');
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('201',to_date('17/02/96','DD/MM/RR'),to_date('19/12/99','DD/MM/RR'),'MK_REP','20');
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('114',to_date('24/03/98','DD/MM/RR'),to_date('31/12/99','DD/MM/RR'),'ST_CLERK','50');
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('122',to_date('01/01/99','DD/MM/RR'),to_date('31/12/99','DD/MM/RR'),'ST_CLERK','50');
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('200',to_date('17/09/87','DD/MM/RR'),to_date('17/06/93','DD/MM/RR'),'AD_ASST','90');
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('176',to_date('24/03/98','DD/MM/RR'),to_date('31/12/98','DD/MM/RR'),'SA_REP','80');
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('176',to_date('01/01/99','DD/MM/RR'),to_date('31/12/99','DD/MM/RR'),'SA_MAN','80');
Insert into HR.JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('200',to_date('01/07/94','DD/MM/RR'),to_date('31/12/98','DD/MM/RR'),'AC_ACCOUNT','90');
REM INSERTING into HR.JOBS
SET DEFINE OFF;
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AD_PRES','President','20000','40000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AD_VP','Administration Vice President','15000','30000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AD_ASST','Administration Assistant','3000','6000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('FI_MGR','Finance Manager','8200','16000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('FI_ACCOUNT','Accountant','4200','9000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AC_MGR','Accounting Manager','8200','16000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('AC_ACCOUNT','Public Accountant','4200','9000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('SA_MAN','Sales Manager','10000','20000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('SA_REP','Sales Representative','6000','12000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('PU_MAN','Purchasing Manager','8000','15000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('PU_CLERK','Purchasing Clerk','2500','5500');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('ST_MAN','Stock Manager','5500','8500');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('ST_CLERK','Stock Clerk','2000','5000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('SH_CLERK','Shipping Clerk','2500','5500');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('IT_PROG','Programmer','4000','10000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('MK_MAN','Marketing Manager','9000','15000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('MK_REP','Marketing Representative','4000','9000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('HR_REP','Human Resources Representative','4000','9000');
Insert into HR.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values ('PR_REP','Public Relations Representative','4500','10500');
REM INSERTING into HR.LIVRES
SET DEFINE OFF;
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-286221','2019','0',null,null,'La Machine à explorer le temps','0','10');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-35802','2007','1',null,null,'Sur la route','0','580');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-22794','2014','2',null,null,'Le Talisman des territoires Intégrale','1','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-10045','2002','2',null,null,'Le Talisman des territoires Tome 1','2','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-9608','2002','2',null,null,'Le Talisman des territoires Tome 2','2','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-2253150645','2007','2',null,null,'Shining L_Enfant lumière','4','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-2709645070','2013','2',null,null,'Shining','5','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-11569','2008','2',null,null,'La Ligne Verte','4','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-15412','2006','2',null,null,'Rêves et Cauchemars','4','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-7238','1994','2',null,null,'Rêves et Cauchemars','6','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-18808','2014','2',null,null,'Nuit noire, étoiles mortes','4','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-23251','2012','2',null,null,'Nuit noire, étoiles mortes','6','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-15396','2003','2',null,null,'Simetierre','4','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-2710','1985','2',null,null,'Simetierre','6','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-15401','2004','2',null,null,'Différentes saisons','4','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-16597','2019','3',null,null,'Royaume magique à vendre','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('289','2020','4',null,null,'Neuromancien','7','30');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-291789','2021','5',null,null,'Aucun souvenir assez solide','0','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-916200','2012','5',null,null,'Aucun souvenir assez solide','8','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-2681','2015','6',null,null,'Brèche dans l_espace','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-5551','1990','6',null,null,'Brèche dans l_espace','4','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-3148','1999','6',null,null,'Ubik','9','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-9682','2001','6',null,null,'Ubik','2','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-6792','2019','6',null,null,'Ubik','9','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('372','2019','7','8',null,'De bons présages','7','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-8155','2014','7','8',null,'De bons présages','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('364','2020','7','8',null,'Good Omens','10','430');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-41982','2002','9',null,null,'Les Dieux eux-mêmes','0','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-22048','2020','9',null,null,'Le cycle des robots (Tome 1) Les robots','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-22046','2020','9',null,null,'Le cycle des robots (Tome 1) Les robots','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-30446','2016','9',null,null,'Le cycle des robots (Tome 2) Un défilé de robots','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-17870','2018','9',null,null,'Le cycle des robots (Tome 2) Un défilé de robots','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-31220','2020','9',null,null,'Le cycle des robots (Tome 3) Les cavernes d_acier','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-18849','2001','9',null,null,'Le cycle des robots (Tome 3) Les cavernes d_acier','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-32112','2020','9',null,null,'Le cycle des robots (Tome 4) Face aux feux du soleil','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-17882','2018','9',null,null,'Le cycle des robots (Tome 4) Face aux feux du soleil','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-33568','2005','9',null,null,'Le cycle des robots (Tome 5) Les robots de l_aube','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-17877','2018','9',null,null,'Le cycle des robots (Tome 5) Les robots de l_aube','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-30435','2007','9',null,null,'Le cycle des robots (Tome 6) Les robots et l_empire','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-12426','2001','9',null,null,'Le cycle des robots (Tome 6) Les robots et l_empire','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-36630','2019','9',null,null,'Fondation : Le cycle de Fondation (Tome 1)','10','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-35090','2009','9',null,null,'Fondation : Le cycle de Fondation (Tome 1)','0','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-35086','2009','9',null,null,'Fondation et Empire : Le cycle de Fondation (Tome 2)','0','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-36638','2019','9',null,null,'Fondation et Empire : Le cycle de Fondation (Tome 2)','10','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-35092','2009','9',null,null,'Seconde Fondation: Le cycle de Fondation (Tome 3)','0','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-36636','2019','9',null,null,'Seconde Fondation: Le cycle de Fondation (Tome 3)','10','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-35099','2009','9',null,null,'Fondation foudroyée: Le cycle de Fondation (Tome 4)','0','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-36634','2009','9',null,null,'Fondation foudroyée: Le cycle de Fondation (Tome 4)','10','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-37005','2009','9',null,null,'Terre et Fondation: Le cycle de Fondation (Tome 5)','0','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('83','2021','9',null,null,'Terre et Fondation: Le cycle de Fondation (Tome 5)','10','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-24996','2014','9',null,null,'Prélude à Fondation : Le cycle de Fondation (Tome 6)','1','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-15026','2014','9',null,null,'L_Aube de Fondation : Le cycle de Fondation (Tome 7)','1','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-810779','2016','9',null,null,'Foundation','11','430');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-29892','2004','9',null,null,'Foundation','12','430');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-83520','2015','9',null,null,'Foundation Trilogy','13','430');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-60093','2010','9',null,null,'Foundation Trilogy','14','430');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-52282','2012','9',null,null,'Die Foundation-Trilogie','15','440');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-19140','2001','9',null,null,'Die frühe Foundation-Trilogie','15','440');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-45401','2015','9',null,null,'Le cycle de Fondation Intégrale Tome 1','0','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-45399','2015','9',null,null,'Le cycle de Fondation Intégrale Tome 2','0','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('7491514','2013','9',null,null,'I, Robot','16','430');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-17632','2016','10',null,null,'Silo','4','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-2035','2013','10',null,null,'Silo','17','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-87653','2014','10',null,null,'Silo','18','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-11746','2015','11',null,null,'Dans l_abîme du temps','19','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-15313','2020','11',null,null,'Dans l_abîme du temps','19','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-33587','2003','11',null,null,'Dagon','3','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('273','2019','11',null,null,'Dagon','20','50');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-84347','2001','12',null,null,'Voici l_homme','21','10');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-2266154029','2007','13',null,null,'La brèche','1','20');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-7550','2013','6',null,null,'Le Maître du Haut Château','3','20');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-7599','2017','14',null,null,'Le Samouraï virtuel','4','30');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-33699','2006','14',null,null,'Zodiac','0','30');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-29075','2020','15',null,null,'L_Abominable','1','40');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-21119','2019','15',null,null,'L_Abominable','2','40');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-9601','2010','15',null,null,'Hyperion','22','430');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-2640','2020','16',null,null,'Après le monde','23','60');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-2721','2020','16',null,null,'Après le monde','23','60');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-7466','1999','17',null,null,'Ciel brûlant de minuit','4','60');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-12267','2014','17',null,null,'Ciel brûlant de minuit','2','60');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-79749','2020','18',null,null,'C++','24','110');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-80675','2020','18',null,null,'C++','24','110');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-80469','2020','19',null,null,'Tout JavaScript','24','120');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-80939','2020','19',null,null,'Tout JavaScript','24','120');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('534','2020','20',null,null,'Programmer en Java - Couvre Java 10 à 14','25','110');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-79402','2020','20',null,null,'Programmer en Java - Couvre Java 10 à 14','25','110');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-67147','2020','24',null,null,'Réussir son référencement web - Stratégie et techniques SEO','25','120');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-72303','2020','24',null,null,'Réussir son référencement web - Stratégie et techniques SEO','25','120');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-67210','2020','25',null,null,'Oh my code ! - Je crée mon premier site web','25','120');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-78107','2018','26',null,null,'Bases de données - Concepts, utilisation et développement','24','130');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-77711','2018','26',null,null,'Bases de données - Concepts, utilisation et développement','24','130');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-1151','2017','27',null,null,'Bases de données et systèmes d_information - Modèle relationnel, SQL, modélisation des données','27','130');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-506871','2017','21',null,null,'Minecraft, le guide création','0','160');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-512940','2020','22',null,null,'Minecraft - Le guide survie officiel','0','160');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-7690','2020','23',null,null,'The Legend of Zelda : Breath of the Wild - La création d_un prodige','26','160');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-35568','2020','28',null,null,'Le guide du lightworker. Tout part de toi ! - Avec 3 oracles à découper et + de 50 tests et exercices','28','310');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-85575','2012','29',null,null,'Oracle de Gaïa','29','310');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-9470','2020','30',null,null,'L_Oracle du peuple végétal','30','310');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-7653','2012','31',null,null,'La magie','30','330');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-8573','2018','32',null,null,'Magie blanche - Grimoire des sorts et enchantements bénéfiques','31','330');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-33963','2004','33',null,null,'Le guide de la magie blanche - Recettes de sorcières','3','330');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-35836','2020','34',null,null,'La haute magie d_Isis - Eset et les mystères de l_Egypte antique','32','330');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-93726','2018','35',null,null,'L_Alchimie Zodiacale et l_Ascension Vibratoire','33','340');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-4857','2020','36',null,null,'Astrologie','34','340');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-1337','2010','37',null,null,'Le pouvoir du moment présent. Guide d_éveil spirituel','3','350');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-88352','2020','38','39',null,'Le 5e accord toltèque - La voie de la maîtrise de soi','35','350');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-88386','2020','38','39',null,'Le 5e accord toltèque - La voie de la maîtrise de soi','35','350');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-34461','2017','40',null,null,'Dossiers Warren - Les plus célèbres affaires des enquêteurs du paranormal Ed et Lorraine Warren','36','360');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-910261','2006','41',null,null,'La Bible satanique','37','360');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-37306','2021','42',null,null,'Le paranormal en question(s)','38','360');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-23364','2014','43',null,null,'L_âme du monde','1','380');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-6662','1993','44',null,null,'Le prophète','4','380');
Insert into HR.LIVRES (ISBN,ANNEE_PUBLICATION,ID_AUTEUR1,ID_AUTEUR2,ID_AUTEUR3,TITRE,ID_EDITEUR,ID_SOUS_DOMAINE) values ('-44286','2020','45','46',null,'Après Jésus - L_invention du christianisme','6','380');
REM INSERTING into HR.LOCATIONS
SET DEFINE OFF;
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1000','1297 Via Cola di Rie','00989','Roma',null,'IT');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1100','93091 Calle della Testa','10934','Venice',null,'IT');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1200','2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1300','9450 Kamiya-cho','6823','Hiroshima',null,'JP');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1400','2014 Jabberwocky Rd','26192','Southlake','Texas','US');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1500','2011 Interiors Blvd','99236','South San Francisco','California','US');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1600','2007 Zagora St','50090','South Brunswick','New Jersey','US');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1700','2004 Charade Rd','98199','Seattle','Washington','US');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1800','147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('1900','6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2000','40-5-12 Laogianggen','190518','Beijing',null,'CN');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2100','1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2200','12-98 Victoria Street','2901','Sydney','New South Wales','AU');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2300','198 Clementi North','540198','Singapore',null,'SG');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2400','8204 Arthur St',null,'London',null,'UK');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2500','Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2600','9702 Chester Road','09629850293','Stretford','Manchester','UK');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2700','Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2800','Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('2900','20 Rue des Corps-Saints','1730','Geneva','Geneve','CH');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('3000','Murtenstrasse 921','3095','Bern','BE','CH');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('3100','Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL');
Insert into HR.LOCATIONS (LOCATION_ID,STREET_ADDRESS,POSTAL_CODE,CITY,STATE_PROVINCE,COUNTRY_ID) values ('3200','Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');
REM INSERTING into HR.REGIONS
SET DEFINE OFF;
Insert into HR.REGIONS (REGION_ID,REGION_NAME) values ('1','Europe');
Insert into HR.REGIONS (REGION_ID,REGION_NAME) values ('2','Americas');
Insert into HR.REGIONS (REGION_ID,REGION_NAME) values ('3','Asia');
Insert into HR.REGIONS (REGION_ID,REGION_NAME) values ('4','Middle East and Africa');
REM INSERTING into HR.SOUS_DOMAINES
SET DEFINE OFF;
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('10','Voyages dans le temps','0');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('20','Uchronie','0');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('30','Cyberpunk','0');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('40','Space Opera','0');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('50','Science-fiction','0');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('60','Science-fiction post-apocalyptique','0');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('110','Programmation','100');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('120','Développement web','100');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('130','Base de données','100');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('140','Algorithmique','100');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('150','Cryptologie','100');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('160','Logiciels','100');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('170','Systèmes d_information','100');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('180','Matériel informatique','100');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('210','Finance publique','200');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('220','Finance privée','200');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('230','Finance d_entreprise','200');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('240','Finance de marchés','200');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('250','Systèmes financiers','200');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('260','Economie','200');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('310','Arts divinatoires','300');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('320','Lithothérapie','300');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('330','Magie et sorcellerie','300');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('340','Astrologie','300');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('350','Esotérisme','300');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('360','Occultisme','300');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('370','Magnétisme','300');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('380','Religions','300');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('410','Littérature française','400');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('420','Littérature scandinave','400');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('430','Littérature anglo-saxonne','400');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('440','Littérature européenne','400');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('450','Littérature slave','400');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('460','Littératures africaine','400');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('470','Littérature sud-américaine','400');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('480','Littérature orientale','400');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('510','Histoire de France','500');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('520','Histoire européenne','500');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('530','Reste du monde','500');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('540','Philosophie, sociologie et ethnologie','500');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('550','Politique','500');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('560','Histoire de l_Art','500');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('570','Architecture et sculpture','500');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('580','Cinéma et photographie','500');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('590','Musique et danse','500');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('610','Récits de voyage','600');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('620','Guides de voyage','600');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('630','Beaux livres','600');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('640','Sports','600');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('650','Jeux','600');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('660','Brico-déco','600');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('670','Jardins','600');
Insert into HR.SOUS_DOMAINES (ID_SOUS_DOMAINE,NOM_SOUS_DOMAINE,ID_DOMAINE) values ('680','Nature et animaux','600');
--------------------------------------------------------
--  DDL for Index LOC_COUNTRY_IX
--------------------------------------------------------

  CREATE INDEX "HR"."LOC_COUNTRY_IX" ON "HR"."LOCATIONS" ("COUNTRY_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DOMAINE
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_DOMAINE" ON "HR"."DOMAINES" ("ID_DOMAINE")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_EMP_ID_ST_DATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JHIST_EMP_ID_ST_DATE_PK" ON "HR"."JOB_HISTORY" ("EMPLOYEE_ID", "START_DATE")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOC_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LOC_ID_PK" ON "HR"."LOCATIONS" ("LOCATION_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JOB_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JOB_ID_PK" ON "HR"."JOBS" ("JOB_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DEPT_LOCATION_IX
--------------------------------------------------------

  CREATE INDEX "HR"."DEPT_LOCATION_IX" ON "HR"."DEPARTMENTS" ("LOCATION_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_DEPARTMENT_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_DEPARTMENT_IX" ON "HR"."EMPLOYEES" ("DEPARTMENT_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_JOB_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_JOB_IX" ON "HR"."EMPLOYEES" ("JOB_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EMPRUNTEURS
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_EMPRUNTEURS" ON "HR"."EMPRUNTEURS" ("ID_EMPRUNTEUR")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_MANAGER_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_MANAGER_IX" ON "HR"."EMPLOYEES" ("MANAGER_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_AUTEUR
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_AUTEUR" ON "HR"."AUTEURS" ("ID_AUTEUR")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DEPT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DEPT_ID_PK" ON "HR"."DEPARTMENTS" ("DEPARTMENT_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOC_STATE_PROVINCE_IX
--------------------------------------------------------

  CREATE INDEX "HR"."LOC_STATE_PROVINCE_IX" ON "HR"."LOCATIONS" ("STATE_PROVINCE")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_EMPLOYEE_IX
--------------------------------------------------------

  CREATE INDEX "HR"."JHIST_EMPLOYEE_IX" ON "HR"."JOB_HISTORY" ("EMPLOYEE_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EDITEUR
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_EDITEUR" ON "HR"."EDITEURS" ("ID_EDITEUR")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REG_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."REG_ID_PK" ON "HR"."REGIONS" ("REGION_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOC_CITY_IX
--------------------------------------------------------

  CREATE INDEX "HR"."LOC_CITY_IX" ON "HR"."LOCATIONS" ("CITY")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_DEPARTMENT_IX
--------------------------------------------------------

  CREATE INDEX "HR"."JHIST_DEPARTMENT_IX" ON "HR"."JOB_HISTORY" ("DEPARTMENT_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_EMP_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."EMP_EMP_ID_PK" ON "HR"."EMPLOYEES" ("EMPLOYEE_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SOUS_DOMAINE
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_SOUS_DOMAINE" ON "HR"."SOUS_DOMAINES" ("ID_SOUS_DOMAINE")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."EMP_EMAIL_UK" ON "HR"."EMPLOYEES" ("EMAIL")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_LIVRES
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_LIVRES" ON "HR"."LIVRES" ("ISBN")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COUNTRY_C_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."COUNTRY_C_ID_PK" ON "HR"."COUNTRIES" ("COUNTRY_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_NAME_IX
--------------------------------------------------------

  CREATE INDEX "HR"."EMP_NAME_IX" ON "HR"."EMPLOYEES" ("LAST_NAME", "FIRST_NAME")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EXEMPLAIRES_LIVRES
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_EXEMPLAIRES_LIVRES" ON "HR"."EXEMPLAIRES_LIVRES" ("ISBN", "NUMERO_EXEMPLAIRE")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EMPRUNT
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_EMPRUNT" ON "HR"."EMPRUNTS" ("ID_EMPRUNT")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_JOB_IX
--------------------------------------------------------

  CREATE INDEX "HR"."JHIST_JOB_IX" ON "HR"."JOB_HISTORY" ("JOB_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger EMPLOYEES_EMPLOYEE_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."EMPLOYEES_EMPLOYEE_ID_TRG"
before insert on employees
for each row
begin
  if :new.employee_id is null then
    select employees_seq.nextval into :new.employee_id from sys.dual;
  end if;
end;

/
ALTER TRIGGER "HR"."EMPLOYEES_EMPLOYEE_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SECURE_EMPLOYEES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."SECURE_EMPLOYEES"
  BEFORE INSERT OR UPDATE OR DELETE ON employees
BEGIN
  secure_dml;
END secure_employees;

/
ALTER TRIGGER "HR"."SECURE_EMPLOYEES" DISABLE;
--------------------------------------------------------
--  DDL for Trigger UPDATE_JOB_HISTORY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "HR"."UPDATE_JOB_HISTORY"
  AFTER UPDATE OF job_id, department_id ON employees
  FOR EACH ROW
BEGIN
  add_job_history(:old.employee_id, :old.hire_date, sysdate,
                  :old.job_id, :old.department_id);
END;

/
ALTER TRIGGER "HR"."UPDATE_JOB_HISTORY" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."ADD_JOB_HISTORY"
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;


/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HR"."SECURE_DML"
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;


/
--------------------------------------------------------
--  Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "HR"."LOCATIONS" MODIFY ("CITY" CONSTRAINT "LOC_CITY_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."LOCATIONS" ADD CONSTRAINT "LOC_ID_PK" PRIMARY KEY ("LOCATION_ID")
  USING INDEX "HR"."LOC_ID_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "HR"."COUNTRIES" MODIFY ("COUNTRY_ID" CONSTRAINT "COUNTRY_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."COUNTRIES" ADD CONSTRAINT "COUNTRY_C_ID_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "HR"."DEPARTMENTS" MODIFY ("DEPARTMENT_NAME" CONSTRAINT "DEPT_NAME_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."DEPARTMENTS" ADD CONSTRAINT "DEPT_ID_PK" PRIMARY KEY ("DEPARTMENT_ID")
  USING INDEX "HR"."DEPT_ID_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EDITEURS
--------------------------------------------------------

  ALTER TABLE "HR"."EDITEURS" MODIFY ("NOM_EDITEUR" NOT NULL ENABLE);
  ALTER TABLE "HR"."EDITEURS" ADD CONSTRAINT "PK_EDITEUR" PRIMARY KEY ("ID_EDITEUR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOMAINES
--------------------------------------------------------

  ALTER TABLE "HR"."DOMAINES" MODIFY ("NOM_DOMAINE" NOT NULL ENABLE);
  ALTER TABLE "HR"."DOMAINES" ADD CONSTRAINT "PK_DOMAINE" PRIMARY KEY ("ID_DOMAINE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPRUNTEURS
--------------------------------------------------------

  ALTER TABLE "HR"."EMPRUNTEURS" MODIFY ("NOM_EMPRUNTEUR" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPRUNTEURS" MODIFY ("PRENOM_EMPRUNTEUR" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPRUNTEURS" ADD CONSTRAINT "PK_EMPRUNTEURS" PRIMARY KEY ("ID_EMPRUNTEUR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "HR"."JOB_HISTORY" MODIFY ("EMPLOYEE_ID" CONSTRAINT "JHIST_EMPLOYEE_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_HISTORY" MODIFY ("START_DATE" CONSTRAINT "JHIST_START_DATE_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_HISTORY" MODIFY ("END_DATE" CONSTRAINT "JHIST_END_DATE_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_HISTORY" MODIFY ("JOB_ID" CONSTRAINT "JHIST_JOB_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_DATE_INTERVAL" CHECK (end_date > start_date) ENABLE;
  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_EMP_ID_ST_DATE_PK" PRIMARY KEY ("EMPLOYEE_ID", "START_DATE")
  USING INDEX "HR"."JHIST_EMP_ID_ST_DATE_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LIVRES
--------------------------------------------------------

  ALTER TABLE "HR"."LIVRES" MODIFY ("ANNEE_PUBLICATION" NOT NULL ENABLE);
  ALTER TABLE "HR"."LIVRES" MODIFY ("ID_AUTEUR1" NOT NULL ENABLE);
  ALTER TABLE "HR"."LIVRES" MODIFY ("TITRE" NOT NULL ENABLE);
  ALTER TABLE "HR"."LIVRES" MODIFY ("ID_EDITEUR" NOT NULL ENABLE);
  ALTER TABLE "HR"."LIVRES" MODIFY ("ID_SOUS_DOMAINE" NOT NULL ENABLE);
  ALTER TABLE "HR"."LIVRES" ADD CONSTRAINT "PK_LIVRES" PRIMARY KEY ("ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPRUNTS
--------------------------------------------------------

  ALTER TABLE "HR"."EMPRUNTS" MODIFY ("DATE_EMPRUNT" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPRUNTS" MODIFY ("ID_EMPRUNTEUR" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPRUNTS" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPRUNTS" MODIFY ("NUMERO_EXEMPLAIRE" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPRUNTS" ADD CONSTRAINT "PK_EMPRUNT" PRIMARY KEY ("ID_EMPRUNT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXEMPLAIRES_LIVRES
--------------------------------------------------------

  ALTER TABLE "HR"."EXEMPLAIRES_LIVRES" ADD CONSTRAINT "PK_EXEMPLAIRES_LIVRES" PRIMARY KEY ("ISBN", "NUMERO_EXEMPLAIRE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("LAST_NAME" CONSTRAINT "EMP_LAST_NAME_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("EMAIL" CONSTRAINT "EMP_EMAIL_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("HIRE_DATE" CONSTRAINT "EMP_HIRE_DATE_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPLOYEES" MODIFY ("JOB_ID" CONSTRAINT "EMP_JOB_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_SALARY_MIN" CHECK (salary > 0) ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMP_ID_PK" PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX "HR"."EMP_EMP_ID_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOBS
--------------------------------------------------------

  ALTER TABLE "HR"."JOBS" MODIFY ("JOB_TITLE" CONSTRAINT "JOB_TITLE_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."JOBS" ADD CONSTRAINT "JOB_ID_PK" PRIMARY KEY ("JOB_ID")
  USING INDEX "HR"."JOB_ID_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTEURS
--------------------------------------------------------

  ALTER TABLE "HR"."AUTEURS" MODIFY ("NOM_AUTEUR" NOT NULL ENABLE);
  ALTER TABLE "HR"."AUTEURS" MODIFY ("PRENOM_AUTEUR" NOT NULL ENABLE);
  ALTER TABLE "HR"."AUTEURS" ADD CONSTRAINT "PK_AUTEUR" PRIMARY KEY ("ID_AUTEUR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REGIONS
--------------------------------------------------------

  ALTER TABLE "HR"."REGIONS" MODIFY ("REGION_ID" CONSTRAINT "REGION_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "HR"."REGIONS" ADD CONSTRAINT "REG_ID_PK" PRIMARY KEY ("REGION_ID")
  USING INDEX "HR"."REG_ID_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SOUS_DOMAINES
--------------------------------------------------------

  ALTER TABLE "HR"."SOUS_DOMAINES" MODIFY ("NOM_SOUS_DOMAINE" NOT NULL ENABLE);
  ALTER TABLE "HR"."SOUS_DOMAINES" MODIFY ("ID_DOMAINE" NOT NULL ENABLE);
  ALTER TABLE "HR"."SOUS_DOMAINES" ADD CONSTRAINT "PK_SOUS_DOMAINE" PRIMARY KEY ("ID_SOUS_DOMAINE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "HR"."COUNTRIES" ADD CONSTRAINT "COUNTR_REG_FK" FOREIGN KEY ("REGION_ID")
	  REFERENCES "HR"."REGIONS" ("REGION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "HR"."DEPARTMENTS" ADD CONSTRAINT "DEPT_LOC_FK" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "HR"."LOCATIONS" ("LOCATION_ID") ENABLE;
  ALTER TABLE "HR"."DEPARTMENTS" ADD CONSTRAINT "DEPT_MGR_FK" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_DEPT_FK" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_JOB_FK" FOREIGN KEY ("JOB_ID")
	  REFERENCES "HR"."JOBS" ("JOB_ID") ENABLE;
  ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_MANAGER_FK" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPRUNTEURS
--------------------------------------------------------

  ALTER TABLE "HR"."EMPRUNTEURS" ADD CONSTRAINT "FK_EMPLOYEE" FOREIGN KEY ("ID_EMPLOYE")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPRUNTS
--------------------------------------------------------

  ALTER TABLE "HR"."EMPRUNTS" ADD CONSTRAINT "FK_EMPRUNTEUR" FOREIGN KEY ("ID_EMPRUNTEUR")
	  REFERENCES "HR"."EMPRUNTEURS" ("ID_EMPRUNTEUR") ENABLE;
  ALTER TABLE "HR"."EMPRUNTS" ADD CONSTRAINT "FK_EXEMPLAIRES_LIVRES1" FOREIGN KEY ("ISBN", "NUMERO_EXEMPLAIRE")
	  REFERENCES "HR"."EXEMPLAIRES_LIVRES" ("ISBN", "NUMERO_EXEMPLAIRE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_JOB_FK" FOREIGN KEY ("JOB_ID")
	  REFERENCES "HR"."JOBS" ("JOB_ID") ENABLE;
  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_EMP_FK" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "HR"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "HR"."JOB_HISTORY" ADD CONSTRAINT "JHIST_DEPT_FK" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "HR"."DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIVRES
--------------------------------------------------------

  ALTER TABLE "HR"."LIVRES" ADD CONSTRAINT "FK_AUTEURS1" FOREIGN KEY ("ID_AUTEUR1")
	  REFERENCES "HR"."AUTEURS" ("ID_AUTEUR") ENABLE;
  ALTER TABLE "HR"."LIVRES" ADD CONSTRAINT "FK_AUTEURS2" FOREIGN KEY ("ID_AUTEUR2")
	  REFERENCES "HR"."AUTEURS" ("ID_AUTEUR") ENABLE;
  ALTER TABLE "HR"."LIVRES" ADD CONSTRAINT "FK_AUTEURS3" FOREIGN KEY ("ID_AUTEUR3")
	  REFERENCES "HR"."AUTEURS" ("ID_AUTEUR") ENABLE;
  ALTER TABLE "HR"."LIVRES" ADD CONSTRAINT "FK_EDITEURS1" FOREIGN KEY ("ID_EDITEUR")
	  REFERENCES "HR"."EDITEURS" ("ID_EDITEUR") ENABLE;
  ALTER TABLE "HR"."LIVRES" ADD CONSTRAINT "FK_SOUS_DOMAINES1" FOREIGN KEY ("ID_SOUS_DOMAINE")
	  REFERENCES "HR"."SOUS_DOMAINES" ("ID_SOUS_DOMAINE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "HR"."LOCATIONS" ADD CONSTRAINT "LOC_C_ID_FK" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "HR"."COUNTRIES" ("COUNTRY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SOUS_DOMAINES
--------------------------------------------------------

  ALTER TABLE "HR"."SOUS_DOMAINES" ADD CONSTRAINT "FK_SOUS_DOMAINE" FOREIGN KEY ("ID_DOMAINE")
	  REFERENCES "HR"."DOMAINES" ("ID_DOMAINE") ENABLE;
