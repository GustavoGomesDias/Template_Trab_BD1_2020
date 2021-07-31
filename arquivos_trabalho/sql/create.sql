CREATE TABLE pessoa(
	codigo integer NOT NULL,
	nome varchar(100),
	telefone varchar(16),
	estado varchar(2),
	cidade varchar(100),
	bairro varchar(100),
	rua varchar(100),
	numero_end integer,
	PRIMARY KEY (codigo)
);

CREATE TABLE PESSOA_FISICA(
	codigo integer NOT NULL,
	cpf varchar(11),
	FOREIGN KEY(codigo) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PESSOA_JURIDICA(
	codigo integer NOT NULL,
	cnpj varchar(14),
	FOREIGN KEY(codigo) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ENTREGADOR(
	codigo integer NOT NULL,
	cnh varchar(14),
	FOREIGN KEY(codigo) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ENTREGA(
	codigo integer NOT NULL,
	tipo_entrega varchar(30),
	peso_entrega float,
	alt_entrega float,
	larg_entrega float,
	profun_entrega float,
	qtd_entrega integer,
	data_envio date,
	data_recebimento date,
	cliente_envio integer NOT NULL,
	cliente_recebe integer NOT NULL,
	entregador integer NOT NULL,
	PRIMARY KEY (codigo),
	FOREIGN KEY (cliente_envio) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (cliente_recebe) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (entregador) REFERENCES pessoa(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);