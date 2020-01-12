
DROP TABLE IF EXISTS  CAR_ENGINE;
DROP TABLE IF EXISTS CAR_WHEEL;
DROP TABLE IF EXISTS CAR_MODEL;
DROP TABLE IF EXISTS CAR_SUB_MODEL;

CREATE TABLE  CAR_ENGINE(
	 ID INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
	POWER INT NOT NULL,
	TYPE_CAR VARCHAR(100) NOT NULL
);

CREATE TABLE  CAR_WHEEL(
	 ID INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
	SIZE VARCHAR(50) NOT NULL,
	TYPE_CAR VARCHAR(100) NOT NULL
);

CREATE TABLE  CAR_MODEL(
	 ID INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(50) NOT NULL,
	FROM_DATE INT NOT NULL,
	TO_DATE INT,
	TYPE_CAR VARCHAR(100) NOT NULL,
	LINE_CAR VARCHAR(100),
	ENGINE_ID INT NOT NULL,
	WHEEL_ID INT	NOT NULL,
	BRAND VARCHAR(50) NULL
);

CREATE TABLE  CAR_SUB_MODEL(
	 ID INT unsigned NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(50) NOT NULL,
	FROM_DATE INT,
	TO_DATE INT,
	TYPE_CAR VARCHAR(100),
	LINE_CAR VARCHAR(100),
	ENGINE_ID INT NOT NULL,
	WHEEL_ID INT NOT NULL,
	ID_MODEL INT unsigned NOT NULL,
	BRAND VARCHAR(50) NULL
);

ALTER TABLE CAR_SUB_MODEL
ADD CONSTRAINT CAR_SUB_MODEL_PK PRIMARY KEY
(
	ID
);

ALTER TABLE CAR_SUB_MODEL
ADD CONSTRAINT CAR_SUB_MODEL_K KEY
(
	ID
);

ALTER TABLE CAR_SUB_MODEL
ADD CONSTRAINT CAR_SUB_MODEL_FK_MODEL FOREIGN KEY
(
  ID_MODEL 
)
REFERENCES CAR_MODEL
(
  ID
);


--insert into CAR_WHEEL (SIZE,TYPE_CAR) VALUES('R15','GAS');
--insert into CAR_ENGINE (POWER,TYPE_CAR) VALUES(1500,'GAS');
--insert into CAR_MODEL (NAME,FROM_DATE,TO_DATE,TYPE_CAR,LINE_CAR,ENGINE_ID,WHEEL_ID) VALUES('TOYOTA',2015,2019,'SUB','LINE',1,1);
--insert into CAR_SUB_MODEL (NAME,FROM_DATE,TO_DATE,TYPE_CAR,LINE_CAR,ENGINE_ID,WHEEL_ID,ID_MODEL) VALUES('SUBTOYOTA',2011,2011,'SUB1','LINE1',1,1,1);
