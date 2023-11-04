CREATE TABLE cliente (
	Ccliente INT(8) PRIMARY KEY,
	Ncliente VARCHAR(50) NOT NULL,
	endrecoCliente VARCHAR(40) NOT NULL, 
	cidadeCliente VARCHAR(30) NOT NULL,
	cep INT(8) NOT NULL CHECK (cep >= 1000)
);

CREATE TABLE produtos(
	Cproduto INT(8) PRIMARY KEY,
	descriProduto VARCHAR(50) NOT NULL,
	perecivel BOOL NOT NULL DEFAULT FALSE,
	validade DATE DEFAULT CURRENT_DATE,
	detalhes VARCHAR(1000),
	foto BIN 
);

CREATE TABLE vendas(
	Cvenda INT(8),
	Ccliente INT (8),
	PRIMARY KEY (Cvenda, Ccliente),
	foreign KEY (CCliente) references cliente(Ccliente)
);

CREATE TABLE produtos_vendas(
	Cvendas INT(8),
	Ccliente INT(8),
	Cproduto INT (8),
	QuantVendidas NUMERIC (10,3) NOT NULL CHECK (QuantVendidas > 0),
	FOREIGN KEY (Cvendas) REFERENCES vendas(Cvendas),
	FOREIGN KEY (Cproduto) REFERENCES produtos(Cproduto),
	PRIMARY KEY (Cvendas,CCliente,Cproduto) 
);
