CREATE DATABASE consecionaria;
USE consecionaria;

CREATE TABLE marca(
CodMarca INTEGER  PRIMARY KEY AUTO_INCREMENT,
vome VARCHAR(40) NOT NULL,
PaisOrigem VARCHAR(20)NOT NULL
);

CREATE TABLE modelo(
Cod INTEGER PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40) NOT NULL,
marca VARCHAR (20) NOT NULL,
cor VARCHAR (15) NOT NULL,
cidade VARCHAR(20) NOT NULL,
codMarca INTEGER NOT NULL,
FOREIGN KEY (codMarca) REFERENCES marca(CodMarca)
);

CREATE TABLE filial(
cod INTEGER PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40) NOT NULL,
cidade VARCHAR(30) NOT NULL 
);

CREATE TABLE disponiveis(
Codmodelo INTEGER,
CodFilial INTEGER, 
DATA DATE NOT NULL,
PRIMARY KEY (Codmodelo,CodFilial),
FOREIGN KEY (CodFilial) REFERENCES filial(cod),
FOREIGN KEY (Codmodelo) REFERENCES modelo(Cod)
);
