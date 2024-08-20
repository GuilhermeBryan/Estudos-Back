CREATE TABLE produto  (
	numeroidproduto integer not null,
	nomeproduto varchar (50) not null,
	cpfdocomprador char (11) not null,
	nomedocomprador varchar (50) not null,
	numero_de_compra integer not null,
	complementos varchar,

	--chave primária
	constraint pk_pdt_id primary key (numeroidproduto)
)


insert into	produto  (numeroidproduto, nomeproduto, cpfdocomprador, nomedocomprador, numero_de_compra, complementos)
values
	(2342, 'Action Figure', '98247292012', 'João Pedro Carvalho', 23043, null),
	(6457, 'Gabinete New X PC', '39430120592', 'Gustavo Almeida', 32421, null);

