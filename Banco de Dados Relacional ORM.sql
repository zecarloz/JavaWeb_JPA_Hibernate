create database teste;
create table clientes(
codigo BIGINT NOT NULL auto_increment,
nome varchar(100) not null,
idade integer,
sexo varchar(1) not null,
profissao varchar(30),
PRIMARY KEY (codigo)
);
insert into clientes(nome,idade,sexo,profissao)
values('Jucelia',46,'F','Cozinheira')

select * from clientes

CREATE TABLE conta_corrente(
	codigo BIGINT NOT NULL auto_increment,
    numero VARCHAR(12) NOT NULL, 
    saldo DECIMAL ,
    codigo_cliente BIGINT NOT NULL,
    PRIMARY KEY(codigo),
    FOREIGN KEY(codigo_cliente) REFERENCES clientes (codigo)
);
insert into conta_corrente(numero,saldo,codigo_cliente)
value (222222 , 5000.00 , 2)

select * from conta_corrente

select cli.nome
,cc.saldo
from clientes cli
,conta_corrente cc
where cli.codigo = cc.codigo_cliente
