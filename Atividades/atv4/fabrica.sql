CREATE DATABASE fabrica;
USE fabrica;

CREATE TABLE cliente (
id TINYINT PRIMARY KEY, 
nome VARCHAR(30) NOT NULL,
endereco VARCHAR(30) NOT null,
cidade VARCHAR(30) NOT null,
uf CHAR(2) NOT null,
telefone VARCHAR(9)NOT null,
contaro VARCHAR(30));

CREATE TABLE transportadora (
id TINYINT PRIMARY KEY ,
nome VARCHAR(20)NOT NULL,
endereco varchar(30)NOT NULL,
cidade VARCHAR(10) NOT NULL,
uf CHAR(2)NOT NULL);

CREATE TABLE fabrica (
id TINYINT PRIMARY KEY ,
nome VARCHAR(30)NOT NULL,
uf CHAR(2) NOT NULL);

CREATE TABLE pedido (
id TINYINT PRIMARY KEY ,
dataPedido DATE,
valor FLOAT NOT NULL,
idCliente TINYINT,
idvendedor TINYINT,
idTransportadora TINYINT,
foreign KEY (idCliente) REFERENCES cliente (id),
foreign KEY (idTransportadora) REFERENCES transportadora (id)
);

CREATE TABLE produto (
id TINYINT PRIMARY KEY,
referecia varchar(10),
descricao VARCHAR(100),
unidade CHAR(2),
idFabrica TINYINT,
FOREIGN KEY (idFabrica) REFERENCES fabrica (id)
);
