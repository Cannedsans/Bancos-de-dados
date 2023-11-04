create database empresa;
use empresa;

CREATE TABLE funcionario (
Fmatricula CHAR (6) NOT NULL,
Fnome VARCHAR (24) NOT NULL,
PRIMARY KEY(Fmatricula)
);

CREATE TABLE departamento (
Dcodigo CHAR (6) NOT NULL ,
Fnome VARCHAR (24) NOT NULL,
PRIMARY KEY (Dcodigo)
);

CREATE TABLE projetos(
Pcodigo CHAR(6) NOT NULL,
Pnome VARCHAR(24) NOT NULL,
Dcodigo CHAR (3) NOT NULL,
resp CHAR (6) NOT NULL, 
dataIni DATE,
datafim DATE,
psuper CHAR (6),
foreign KEY (resp)
references funcionario(Fmatricula),
foreign KEY (psuper)
references projetos(Pcodigo),
PRIMARY KEY (Pcodigo) 
);
