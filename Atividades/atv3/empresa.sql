CREATE DATABASE EMPRESA;

USE EMPRESA;

CREATE TABLE Carro (
    placa VARCHAR(20) PRIMARY KEY,
    codigo INT NOT NULL,
    tipo_do_carro VARCHAR(50) NOT NULL,
    chassi VARCHAR(17) 
);

ALTER TABLE Carro
MODIFY COLUMN chassi VARCHAR(17) NOT NULL,
ADD COLUMN cod VARCHAR(10);

CREATE TABLE Cargo (
    codigo INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Departamento (
    codigo INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Dependente (
    codigo INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    codigo_do_funcionario INT NOT NULL
);

CREATE TABLE Funcionarios (
    codigo INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    endereco VARCHAR(100),
    cidade VARCHAR(50),
    telefone1 VARCHAR(15),
    telefone2 VARCHAR(15),
    codigo_do_cargo INT,
    codigo_do_departamento INT,
    dependente1 INT,
    dependente2 INT,
    dependente3 INT,
    codigo_do_carro INT UNIQUE
);

ALTER TABLE Funcionarios
ADD CONSTRAINT fk_cargo FOREIGN KEY (codigo_do_cargo) REFERENCES Cargo(codigo),
ADD CONSTRAINT fk_departamento FOREIGN KEY (codigo_do_departamento) REFERENCES Departamento(codigo),
ADD CONSTRAINT fk_dependente1 FOREIGN KEY (dependente1) REFERENCES Dependente(codigo),
ADD CONSTRAINT fk_dependente2 FOREIGN KEY (dependente2) REFERENCES Dependente(codigo),
ADD CONSTRAINT fk_dependente3 FOREIGN KEY (dependente3) REFERENCES Dependente(codigo);

DESCRIBE Carro;
