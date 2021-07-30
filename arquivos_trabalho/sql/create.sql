CREATE TABLE CLIENTE(
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
	FOREIGN KEY(codigo) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PESSOA_JURIDICA(
	codigo integer NOT NULL,
	cnpj varchar(14),
	FOREIGN KEY(codigo) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ENTREGADOR(
	cpf varchar(11) NOT NULL,
	nome varchar(100),
	telefone varchar(16),
	PRIMARY KEY (cpf)
);

CREATE TABLE ENTREGA(
    codigo integer NOT NULL,
    cliente_envio integer NOT NULL,
    cliente_recebe integer NOT NULL,
    entregador_cpf varchar(11) NOT NULL,
    data_envio date,
    data_recebimento date,
    PRIMARY KEY (codigo),
    FOREIGN KEY (cliente_envio) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (cliente_recebe) REFERENCES cliente(codigo) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (entregador_cpf) REFERENCES entregador(cpf) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);