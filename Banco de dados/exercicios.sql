CREATE TABLE tabelafinal (
	idcliente integer NOT NULL,
	nome varchar (50) NOT NULL,
	cpf char (11),
	rg varchar (30),
	data_de_nascimento date,
	sexo varchar (1) NOT NULL,
	profissao varchar (30),
	nacionalidade varchar (50),
	logradouro varchar,
	numero integer,
	complemento varchar (50),
	bairro varchar (50),
	municipio varchar (50),
	uf varchar (50),

	--chave primaria
	constraint pk_tabfin_idcliente primary key (idcliente)
	);
	
	insert into tabelafinal (idcliente, nome, cpf, rg, data_de_nascimento, sexo, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
	values
		(1,'Manoel', '88828383821','3232','10/10/2001','M','Estudante','Brasileira','Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto União','SC'),
		(2,'Geraldo', '12343299291','56565','04/01/1987','M','Engenheiro','Brasileira','Rua das Limas','200','Ap.','Centro','P.União','SC'),
		(3,'Carlos', '87732323227', '55463', '01/10/1967', 'M', 'Pedreiro', 'Brasileira' , 'Rua das Laranjeiras', '300', 'Apart.', 'Centro', 'Canoinhas', 'SC'),
		(4,'Adriana', '12321222122','98777','10/09/1989','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','Porto Vitória','PR'),
		(5,'Amanda', '99982838828','28382','04/03/1991','F','Jorn.','Italiana','AV. Central','100','Apartamento','São Pedro','General Carneiro','PR'),--checkpoint
		(6,'Ângelo', '99982828181','12323','01/01/2000','M','Professor','Brasileiro','Av. Beira Mar','300',null,'Ctr','São Paulo','SP'),
		(7,'Anderson', null,null,null,'M','Prof','Italiano','Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP'),
		(8,'Camila', '9998282828',null,'10/10/2001','F','Professora','Norte Americana','Rua Central','4333',null,'Centro','Uberlância','MG'),
		(9,'Cristiano', null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS'),
		(10,'Fábricio', '8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null,null,'PU','SC'),
		(11,'Fernanda', null,null,null,'M',null,'Brasileira',null,null,null,null,'Porto União','SC'),
		(12,'Gilmar', '88881818181','888','10/02/2000','M','Estud.',null,'Rua das Laranjeiras','200',null,'C. Nova','Canoinhas','SC'),
		(13,'Diego', '1010191919','111939',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP'),
		(14,'Jeferson', null,null,'01/07/1983','M',null,'Brasileiro',null,null,null,null,'União da Vitória','PR'),
		(15,'Jessica', null,null,null,'F','Estudante',null,null,null,null,null,'União da Vitória','PR');

	--primeiro seleção de tudo

	select * from tabelafinal
		
	--consulte o nome, genero, profissao de todos clientes ordenado por forma decrescente

	select nome, sexo, profissao as "clientes decrescentes" from tabelafinal order by nome, sexo, profissao desc;

	--os clientes que tenham letra "R" no nome

	select nome as "clientes que tenham letra r no nome" from tabelafinal where nome like '%r%';

	--Nome dos clientes que inicia com a letra C

	select nome as "clientes que iniciam com a letra C" from tabelafinal where nome like 'C%';

	--Os clientes que o nome termina com a letra A

	select nome as "clientes que terminam com A" from tabelafinal where nome like '%a'

	--Clientes que moram no bairro centro

	select nome, bairro as "Clientes que moram no centro" from tabelafinal where bairro  like 'Centro';

	--Clientes que moram em complementos que iniciam com a letra A

	select nome, complemento as "Clientes que moram em complementos com a letra A" from tabelafinal where complemento like 'A%';

	--Somente clientes do sexo feminino

	select nome, sexo as "garotas" from tabelafinal where sexo like 'F' or 'f'; 

	--os clientes que não informaram o cpf

	select nome as "clientes sem cpf" from tabelafinal where cpf is null ;

	--nome, profissao dos clientes, ordenado de forma crescente pelo nome da profissao

	select nome, profissao as "profissoes crescentes" from tabelafinal order by profissao asc;

	--Os clientes da nacionalidade Brasileira

	select nome, nacionalidade as "clientes brasileiros" from tabelafinal where nacionalidade like 'Brasileir%';

	--Clientes que informaram o numero da residencia

	select nome, numero as "informantes de numero da residencia" from tabelafinal where numero is not null;

	--Clientes que moram em Santa Catarina

	select nome, uf as "clientes de santa catarina" from tabelafinal where uf like 'SC';

	--clientes que nasceram entre 01/01/2000 & 01/01/2002 

	select nome, data_de_nascimento as "clientes entre 2001 e 2002" from tabelafinal where data_de_nascimento between '01/01/2000' and '01/01/2002';

	--nome do cliente, logradouro, numero, complemento, bairro, municipio e uf concatenado de todos clientes

	select  'concatenados: ' || nome ||'\' || logradouro || '\'|| numero || '\' || complemento || '\' || bairro || '\' || municipio || '\' || uf as "concatenação" from tabelafinal

	--update e delete

	update tabelafinal set nome = 'Cabral' where idcliente = '10'
	delete from tabelafinal where idcliente = '10';

	update tabelafinal set idcliente = '10' where idcliente = '11';
	update tabelafinal set idcliente = '11' where idcliente = '12';
	update tabelafinal set idcliente = '12' where idcliente = '13';
	update tabelafinal set idcliente = '13' where idcliente = '14';

	delete from tabelafinal where nome = 'Jessica';

	--exercicios
	--inserindo clientes
	insert into tabelafinal (idcliente, nome, cpf, rg, data_de_nascimento, sexo, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
	values 
		(14, 'Maicon', '12349596421', '1234','10/10/1965','F','Empresario', null, null, null, null, null, 'Florianopolis', 'PR'),
		(15, 'Getulio', null, '4631', null, 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC'),
		(16, 'Sandra', null, null, null,'F','Professor', 'Italiana', null, '12', 'Bloco A', null, null, null);

	--fazendo updates do maicon

	update tabelafinal set cpf = '45390569432', sexo = 'M', nacionalidade = 'Brasileira', uf = 'SC' where idcliente = '14';

	--alterando dados do getulio

	update tabelafinal set data_de_nascimento = '01/04/1978', sexo = 'M' where idcliente = '15';

	--alterando dados da Sandra

	update tabelafinal set sexo = 'F', profissao = 'Professora', numero = '123' where idcliente = '16';

	--fazendo o delete

	delete from tabelafinal where idcliente in (14, 16);
	
	-- nova tabela para profissao

create table profissoes (
	idprofissao integer not null,
	nomedaprofissao varchar (50) not null,

	constraint pk_prof_idprof primary key (idprofissao),
	
	constraint unq_prof_ unique (nomedaprofissao)
)

select * from profissoes

insert into profissoes (idprofissao, nomedaprofissao)
	values
		(1, 'Pedreiro'),
		(2, 'Estudante'),
		(3, 'Jornalista'),
		(4, 'professor');
		
select profissao from tabelafinal

--tabela para nacionalidade

create table nacionalidades(
	idnacionalidade integer not null,
	nomenacional varchar (50) not null,

constraint pk_nac_idnacionalidade primary key (idnacionalidade),

constraint unq_nac_nomenacional unique (nomenacional)

)

select nacionalidade from tabelafinal

insert into nacionalidades (idnacionalidade, nomenacional)
values 
	(1, 'Brasileira'),
	(2, 'Alemã'),
	(3, 'Italiana'),
	(4, 'Norte-Ameriacana');

select * from nacionalidades

--tabela de complemento

create table complemento(
	idcomplemento integer not null,
	nomecomplemento varchar (50) not null,

	constraint pk_compl_idcomplemento primary key (idcomplemento),
	
	constraint uniq_compl_nomecompl unique (nomecomplemento)

	
	
)

insert into complemento (idcomplemento, nomecomplemento)
	values
		(1, 'Casa'),
		(2, 'Apartamento');
	
select complemento from tabelafinal 
select * from complemento


--criando a tabela do bairro

CREATE TABLE bairro (
	idbairro integer not null,
	nomebairro varchar (50) not null,

	constraint pk_idbairro_bairrotab primary key (idbairro)
	constraint unq_nome_tabbairro unique (nomebairro)
)

insert into bairro (idbairro, nomebairro)
	values
		(1, 'Cidade Nova'),
		(2, 'Centro'),
		(3, 'São Pedro'),
		(4, 'Santa Rosa');


select bairro from tabelafinal

select * from tabelafinal

select * from profissoes

--anotação de profissões
--1 pedreiro, 3
--2 estudante, 1 9 11 14
--3 jornalista 4 5
--4 professor 6 7 8 9
-- NULL 

alter table tabelafinal drop profissao 
alter table tabelafinal add profissao integer 
alter table tabelafinal add constraint fk_tabfinal_profissao foreign key (profissao) references profissoes (idprofissao)


update tabelafinal set profissao =  1 where idcliente = 3;
update tabelafinal set profissao =  2 where idcliente in (1, 9, 11, 14);
update tabelafinal set profissao =  3 where idcliente in (4, 5);
update tabelafinal set profissao =  4 where idcliente in (6, 7, 8, 9);

select * from nacionalidades

select * from tabelafinal

--anotação de nacionalidades
--1 Brasil, 1 2 4 5 6 7 9 11
--2 Alemanha 3, 14 
--3 Italia 10, 12
--4 America do norte, 13

alter table tabelafinal drop nacionalidade
alter table tabelafinal add nacionalidade integer
alter table tabelafinal add constraint fk_tabfinal_nacionalidade foreign key (nacionalidade) references nacionalidades (idnacionalidade)

update tabelafinal set nacionalidade = 1 where idcliente in (1, 2, 4, 5, 6, 7, 9, 11);
update tabelafinal set nacionalidade = 2 where idcliente in (3, 14);
update tabelafinal set nacionalidade = 3 where idcliente in (10, 12);
update tabelafinal set nacionalidade = 4 where idcliente = 3;

select * from tabelafinal

--anotação de complemento 
--1 Casa, 
--2 Apartamento, 

select * from tabelafinal 
select * from complemento

alter table tabelafinal drop complemento
alter table tabelafinal add complemento integer
alter table tabelafinal add constraint pk_tabfinal_idcomplemento foreign key (complemento) references complemento (idcomplemento)

update tabelafinal set complemento = 1 where idcliente in (5, 7, 11, 13);
update tabelafinal set complemento = 2 where idcliente in (2, 9, 8, 10, 14);

--anotação de bairro 
select * from bairro 
--1 Cidade Nova, 
--2 Centro, 
--3 São Pedro,
--4 Santa Rosa,

alter table tabelafinal drop bairro
alter table tabelafinal add bairro integer
alter table tabelafinal add constraint pk_tabfinal_idbairro foreign key (bairro) references bairro (idbairro)

update tabelafinal set bairro = 1 where idcliente in (2, 5, 8);
update tabelafinal set bairro = 2 where idcliente in (1, 4, 6, 11, 12, 13);
update tabelafinal set bairro = 3 where idcliente in (3, 9);
update tabelafinal set bairro = 4 where idcliente = 10;

CREATE TABLE uf (
	iduf integer not null,
	nomeuf varchar (30) not null,
	sigla varchar (2) not null,
	
	constraint pk_iduf_uftab primary key (iduf),
	constraint unq_ufnome_tabuf unique (nomeuf),
	constraint unq_sigla_tabuf unique (sigla)
)

insert into uf (iduf, nomeuf, sigla)
	values (1, 'Santa Catarina', 'SC'),
	 	   (2, 'Parana', 'PR'),
		   (3, 'São Paulo', 'SP'),
		   (4, 'Rio de Janeiro', 'RJ'),
		   (5, 'Minas Gerais', 'MG'),
		   (6, 'Rio Grande do Sul', 'RS');


select * from uf
select uf from tabelafinal
select * from tabelafinal

	CREATE TABLE municipio (
	idmunicipio integer not null,
	nomemunicipio varchar (30) not null,
	iduf integer not null,

	constraint pk_idmun primary key (idmunicipio),
	constraint unq_nomemun unique (nomemunicipio),
	constraint fk_iduf foreign key (iduf) references uf (iduf)
	)

	insert into municipio (idmunicipio, nomemunicipio, iduf)
		values
			(1, 'Curitiba', 2),
			(2, 'General Carneiro', 2),
			(3, 'Uberlância', 5 ),
			(4, 'Porto União', 1),
			(5, 'Porto Vitória', 2),
			(6, 'São Paulo', 3),
			(7, 'União da Vitória', 2 ),
			(8, 'Canoinhas', 6 ),
			(9, 'Rio de Janeiro', 4 ),
		insert into municipio (idmunicipio, nomemunicipio, iduf)
			values
				(10, 'Porto Alegre', 6);

select municipio from tabelafinal
select uf from tabelafinal

select * from tabelafinal

select * from municipio

alter table tabelafinal drop municipio 
alter table tabelafinal add municipio integer
alter table tabelafinal add constraint fk_tabfinal_mun foreign key (municipio) references municipio (idmunicipio)

update tabelafinal set municipio = 1 where idcliente = 15;
update tabelafinal set municipio = 2 where idcliente = 5;
update tabelafinal set municipio = 3 where idcliente = 8;
update tabelafinal set municipio = 4 where idcliente in (1, 10, 2);
update tabelafinal set municipio = 5 where idcliente = 4;
update tabelafinal set municipio = 6 where idcliente in (6, 12);
update tabelafinal set municipio = 7 where idcliente = 13;
update tabelafinal set municipio = 8 where idcliente in (11, 3);
update tabelafinal set municipio = 9 where idcliente = 7;
update tabelafinal set municipio = 10 where idcliente = 9;

select * tabelafinal

--criação de tabela de fornecedor
CREATE TABLE fornecedor (
	idfornecedor integer not null,
	nomefornecedor varchar (50) not null,

	constraint pk_fortab_idforn primary key (idfornecedor),
	constraint unq_fortab_nomforn unique (nomefornecedor)
)
--inserção tabela do fornecedor
Insert into fornecedor (idfornecedor, nomefornecedor)
	values
		(1, 'Cap.Computadores'),
		(2, 'AA.Computadores'),
		(3, 'BB.Maquinas');

--criando tabela do vendedor
CREATE TABLE vendedor (
	idVendedor integer not null,
	nomevendedor varchar (50) not null,

	constraint pk_vendtab_idvend primary key (idVendedor),
	constraint unq_vendtab_idvend unique (nomevendedor)
)

--inserção da tabela do vendedor

INSERT INTO vendedor (idVendedor, nomevendedor)
	VALUES
		(1, 'André'),
		(2, 'Alisson'),
		(3, 'José'),
		(4, 'Aliton'),
		(5, 'Maria'),
		(6, 'Suelem'),
		(7, 'Aline'),
		(8, 'Silvana');

--criação tabela transportadora

CREATE TABLE transportadora (
	idTransportadora integer not null,
	IDmunicipio integer not null,
	nometransportadora varchar (50) not null,
	Logradouro varchar (50),
	Numero varchar (10),

	constraint pk_transtap_idtrans primary key (idTransportadora),
	constraint fk_transtap_idmunicipio foreign key (IDmunicipio) references municipio (idmunicipio),
	constraint unq_transtap_nometrasnportadora unique (nometransportadora)
)
		
--inserção da tabela da transportadora
INSERT INTO transportadora (idTransportadora, IDmunicipio, nometransportadora, Logradouro, Numero)
	VALUES
		(1, 7, 'BS. Transportes', 'Rua das Limas', '01'),
		(2, 6, 'União Transportes', null, null)

		
select idmunicipio, nomemunicipio from municipio

--criação da tabela de produtos 

CREATE TABLE produtos (
	idproduto integer not null,
	idFornecedor integer not null,
	nomeprodutos varchar (50) not null, 
	valor numeric (10, 2) not null, 

	constraint pk_prodtab_idprod primary key (idproduto),
	constraint fk_prodtab_idforn foreign key (idFornecedor) references fornecedor (idfornecedor)
	
)

--inserção da tabela de produtos

INSERT INTO produtos (idproduto, idFornecedor, nomeprodutos, valor)
	VALUES
		(1, 1, 'Microcomputador', 800),
		(2, 1, 'Monitor', 500),
		(3, 2, 'Placa Mãe', 200),
		(4, 2, 'HD', 150),
		(5, 2, 'Placa de vídeo', 200),
		(6, 3, 'Memória RAM', 100),
		(7, 1, 'Gabinete', 35);

select * from produtos

--tabela de relações/pedidos

CREATE TABLE pedido2 (
	idPedido integer not null,
	idCliente integer not null,
	idTransportadora integer,
	IdVendedor integer not null,
	Data_Pedido date not null,
	Valor float not null, 

	constraint pk_pedidodois_idped primary key (idPedido),
	constraint fk_pedidodois_idclie foreign key (idCliente) references tabelafinal (idcliente),
	constraint fk_pedidodois_idTrans foreign key (idTransportadora) references transportadora (idTransportadora),
	constraint fk_pedidodois_idvend foreign key (IdVendedor) references vendedor (idVendedor)
)



INSERT INTO pedido2 (idPedido, Data_Pedido, Valor, idCliente, idTransportadora, IdVendedor)
	VALUES
		(1, '01/04/2008', 1300, 1, 1, 1 ),
		(2, '01/04/2008', 500, 1, 1, 1),
		(3, '02/04/2008', 300, 10, 2, 5),
		(4, '05/05/2008', 1000, 8, 1, 7),
		(5, '06/04/2008', 200, 9, 2, 6),
		(6, '06/04/2008', 1985, 7, 1, 6),
		(7, '06/04/2008', 800, 3, 1, 7),
		(8, '06/04/2008', 175, 3, null, 7),
		(9, '07/04/2008', 1300, 11, null, 8),
		(10, '10/04/2008', 200, 6, 1, 8),
		(11, '15/04/2008', 300, 4, 2, 1),
		(12, '20/04/2008', 500, 4, 2, 5),
		(13, '20/04/2008', 350, 9, 1, 7),
		(14, '23/04/2008', 300, 2, 1, 5),
		(15, '25/04/2008', 200, 10, null, 5);



select * from pedido2
select idcliente, nome from tabelafinal
select * from transportadora
select * from produtos
select * from vendedor 


CREATE TABLE Pedido_produto (
	idpedido integer not null,
	idProduto integer not null,
	Quantidade integer not null,
	valor_unitario numeric (10, 2),

	CONSTRAINT fk_pedidoprodtab_idped foreign key (idpedido) references pedido2 (idPedido),
	CONSTRAINT fk_pedidoprodtab_idProduto foreign key (idProduto) references produtos (idproduto)
	
)

INSERT INTO Pedido_produto (idPedido, idProduto, Quantidade, valor_unitario)
	VALUES
		(1, 1, 1, 800),
		(1, 2, 1, 500),
		(2, 2, 1, 500),
		(3, 4, 2, 150),
		(4, 1, 1, 800),
		(4, 3, 1, 200),
		(5, 3, 1, 200),
		(6, 1, 2, 800),
		(6, 7, 1, 35),
		(6, 5, 1, 200),
		(6, 4, 1, 150),
		(7, 1, 1, 800),
		(8, 7, 5, 35),
		(9, 1, 1, 800),
		(9, 2, 1, 500),
		(10, 5, 1, 200),
		(11, 5, 1, 200),
		(11, 6, 1, 500),
		(12, 2, 1, 500),
		(13, 3, 1, 200),
		(13, 4, 1, 150),
		(14, 6, 3, 100),
		(15, 3, 1, 200);


SELECT * FROM Pedido_produto
SELECT * FROM vendedor
SELECT * FROM produtos
SELECT * FROM municipio
SELECT * FROM uf
SELECT * FROM pedido2
SELECT * FROM vendedor
SELECT * FROM tabelafinal
SELECT * FROM transportadora
SELECT * FROM logradouro

--consultas

--nome de todos vendedores em ordem alfabetica
SELECT nomevendedor FROM vendedor order by nomevendedor asc

--Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
SELECT valor FROM produtos WHERE valor > 200.00 ORDER BY valor desc

--O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
SELECT nomeprodutos, valor, valor + (valor * 10) / 100 FROM produtos order by nomeprodutos 

--Os municípios do Rio Grande do Sul.
SELECT * FROM municipio WHERE iduf = 6

--Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.

SELECT idPedido FROM pedido2 WHERE data_pedido between '10/04/2008' and '25/04/2008'

--Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.

SELECT idPedido, valor FROM pedido2 WHERE valor BETWEEN 1000 and 1500

--Os pedidos que o valor não esteja entre R$100,00 e R$500,00.

SELECT idPedido, valor FROM pedido2 WHERE valor NOT BETWEEN 100 and 500

--Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.

SELECT * FROM pedido2 WHERE idvendedor = 1 order by valor desc

--Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.

SELECT * FROM pedido2 WHERE idcliente = 1 order by valor asc

--Os pedidos do cliente Manoel que foram feitos pelo vendedor André.
SELECT * FROM pedido2 WHERE idcliente = 1 and idvendedor = 1 

--Os pedidos que foram transportados pela transportadora União Transportes.
SELECT * FROM pedido2 WHERE idtransportadora = 2

--Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
SELECT * FROM pedido2 WHERE idvendedor = 5

--Os clientes que moram em União da Vitória ou Porto União.
SELECT * FROM municipio
SELECT * FROM tabelafinal
SELECT idcliente, nomemunicipio FROM tabelafinal, municipio WHERE idmunicipio = 4

--Os clientes que não moram em União da Vitória e nem em Porto União.
SELECT * FROM municipio
--4 e 7
SELECT 	idcliente, nomemunicipio FROM tabelafinal, municipio WHERE NOT idmunicipio = 4 and not idmunicipio = 7
--15. Os clientes que não informaram o logradouro.
SELECT idcliente, nome FROM tabelafinal WHERE logradouro is null
--16. Os vendedores que o nome começa com a letra S.
SELECT nomevendedor, idvendedor FROM vendedor WHERE nomevendedor like 'S%'
--Os vendedores que o nome termina com a letra A.
Select nomevendedor, idvendedor FROM vendedor WHERE nomevendedor like '%s'
--Os vendedores que o nome não começa com a letra A.
SELECT nomevendedor, idvendedor FROM vendedor WHERE nomevendedor not like 'A%'
--Os municípios que começam com a letra P e são de Santa Catarina.
SELECT * FROM municipio
SELECT * FROM uf
SELECT nomemunicipio, nomeuf FROM municipio, UF WHERE municipio.iduf = 1 and nomemunicipio LIKE 'P%' 
--As transportadoras que informaram o endereço.
SELECT * FROM transportadora
SELECT idtransportadora FROM transportadora, tabelafinal WHERE tabelafinal.bairro is not null
--Os itens do pedido 01.
SELECT * FROM pedido2
SELECT * FROM produtos
SELECT idproduto FROM produtos, pedido2 WHERE pedido2.idpedido = 1
--Os itens do pedido 06 ou do pedido 10.
SELECT idproduto FROM produtos, pedido2 WHERE pedido2.idpedido = 6 or pedido2.idpedido = 10

--funções agregadas
--1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00
SELECT * FROM vendedor
SELECT * FROM pedido2
SELECT idvendedor, avg(valor) FROM pedido2 group by idvendedor having avg(valor) > 200.00
--2. Os vendedores que venderam mais que R$ 1500,00.
SELECT idvendedor, sum(valor) FROM pedido2 group by idvendedor having sum(valor) > 1500
--3. O somatório das vendas de cada vendedor.
SELECT idvendedor, sum(valor) FROM pedido2 group by idvendedor
--4.quantidade de municipios
SELECT COUNT(idmunicipio) FROM municipio 
SELECT * FROM municipio
--5.quantidade de municipios que são do parana ou de santa catarina
SELECT COUNT(idmunicipio) FROM municipio WHERE iduf = 1 OR iduf = 2
SELECT * FROM uf
--6.quantidade de municipios por estado
SELECT count(idmunicipio) FROM municipio GROUP BY iduf
SELECT * FROM uf
--7.a quantidade de clientes que informaram o logradouro
SELECT * FROM tabelafinal
SELECT COUNT(idcliente) FROM tabelafinal WHERE logradouro is not null
--8.a quantidade de clientes por municipio
SELECT idmunicipio, COUNT(idcliente) FROM tabelafinal, municipio GROUP BY idmunicipio
SELECT * FROM municipio
--9.a quantidade de fornecedores
SELECT * FROM fornecedor
SELECT COUNT(idfornecedor) FROM fornecedor
--10.a quantidade de produtos por fornecedor
SELECT COUNT(idproduto) FROM produtos GROUP BY idfornecedor
--11.a media de preços dos produtos do fornecedor Cap.Computadores
SELECT avg(valor) FROM produtos WHERE idfornecedor = 1
SELECT * FROM fornecedor
--12.o somatorio dos preços de todos os produtos
SELECT sum(valor) FROM produtos
--13.o nome do produto e o preço somente pelo produto mais caro
SELECT nomeprodutos, max(valor) FROM produtos GROUP BY nomeprodutos
SELECT * FROM produtos
--14.o nome do produto e o preço somente pelo produto mais barato
SELECT nomeprodutos, min(valor) FROM produtos GROUP BY nomeprodutos
--15.a media de preço de todos os produtos
SELECT avg(valor) FROM produtos
--16.a quantidade de transportadoras
SELECT * FROM transportadora
SELECT COUNT(idtransportadora) FROM transportadora
--17.a media de valor de todos os produtos
SELECT avg(valor) FROM produtos
SELECT * FROM produtos
--18.o somatorio do valor do pedido agrupado por clientes
SELECT * FROM pedido_produto 
SELECT sum(valor) FROM pedido2 GROUP BY idcliente
SELECT * FROM pedido2
--19.o somatorio do valor do pedido agrupado por vendedor
SELECT sum(valor) FROM pedido2 GROUP BY idvendedor
--20.o somatorio do valor do pedido agrupado por transportadora
SELECT sum(valor) FROM pedido2 GROUP BY idtransportadora
--21.o somatorio do valor do pedido agrupado pela data
SELECT sum(valor) FROM pedido2 GROUP BY data_pedido
SELECT * FROM pedido2
--22.o somatorio do valor do pedido agrupado por cliente, vendedor e transportadora
SELECT SUM(valor) FROM pedido2 GROUP BY idcliente, idvendedor, idtransportadora
--23.o somatorio do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que 200,00
SELECT sum(valor) FROM pedido2 WHERE data_pedido BETWEEN '01/04/2008' and '10/12/2009' and valor > 200.00
--24.a media do valor do pedido do vendedor andre
SELECT avg(valor) FROM pedido2 WHERE idvendedor = 1
SELECT * FROM vendedor
--25.a media do valor do pedido da Amanda
SELECT avg(valor) FROM pedido2 WHERE idcliente = 5
SELECT * FROM tabelafinal
--26.a quantidade de pedidos transportados pela transportadora BS.Transportes
SELECT * FROM pedido2
SELECT * FROM pedido_produto
SELECT count(idpedido) FROM pedido2 WHERE idtransportadora = 2
--27.a quantidade de pedidos agrupada por vendedores
SELECT COUNT(idpedido) FROM pedido2 GROUP BY idvendedor
--28.a quantidade de pedidos agrupada por clientes
SELECT COUNT(idpedido) FROM pedido2 GROUP BY idcliente
--29.a quantidade de pedidos entre 15/04/2008 e 25/04/2008
SELECT COUNT(idpedido) FROM pedido2 WHERE data_pedido BETWEEN '15/04/2008' and '25/04/2008'~
--30.a quantidade de pedidos que seja maior que 10000
SELECT COUNT(idpedido) FROM pedido2 WHERE valor > 1000
--31.a quantidade de microcomputadores vendida
SELECT * FROM produtos
SELECT COUNT(idproduto) FROM produtos WHERE idproduto = 1
--32.a quantidade de produtos vendida agrupado por produto
SELECT COUNT(idproduto) FROM produtos GROUP BY idproduto
--33.O somatório do valor dos produtos dos pedidos, agrupado por pedido
SELECT COUNT(valor) FROM pedido2 GROUP BY idpedido
SELECT * FROM pedido2
--34.A quantidade de produtos agrupado por pedido 
SELECT COUNT(idproduto) FROM pedido_produto GROUP BY idpedido
SELECT * FROM pedido2
SELECT * FROM produtos
--35.o somatorio do valor total de todos os produtos do pedido
SELECT SUM(valor) FROM pedido2 GROUP BY idpedido
--36.a media dos produtos do pedido 6
SELECT avg(valor) FROM pedido2 WHERE idpedido = 6
--37.o valor do maior produto do pedido
SELECT max(valor) FROM pedido2 
--38.o valor do menor produto do pedido
SELECT min(valor) FROM pedido2
--39.o somatorio da quantidade de produtos por pedido 
SELECT SUM(idproduto) FROM pedido_produto GROUP BY idpedido
--40.O somatorio da quantidade de todos os produtos do pedido
SELECT SUM(idproduto) FROM pedido_produto

--relacionamentos com join 
SELECT * FROM tabelafinal
SELECT * FROM municipio
SELECT * FROM uf
SELECT * FROM profissoes
SELECT * FROM nacionalidades

SELECT t.nome, u.nomeuf FROM tabelafinal as t INNER JOIN uf as u ON t.uf = u.sigla WHERE t.nome ilike 'a%' or t.nome ilike 'â%'

--1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
SELECT * FROM tabelafinal
SELECT * FROM profissoes
SELECT * FROM nacionalidades
SELECT * FROM municipio


SELECT 
	tf.nome,
	pf.nomedaprofissao,
	nac.nomenacional,
	tf.logradouro,
	tf.numero,
	tf.complemento,
	tf.bairro,
	mun.nomemunicipio
	
	
FROM tabelafinal tf 
	INNER JOIN profissoes as pf ON tf.profissao = pf.idprofissao
	INNER JOIN nacionalidades as nac ON tf.nacionalidade = nac.idnacionalidade
	INNER JOIN municipio as mun ON tf.municipio = mun.idmunicipio

--2. O nome do produto, o valor e o nome do fornecedor.
SELECT * FROM produtos
SELECT * FROM fornecedor
SELECT * FROM pedido_produto


SELECT
	pr.nomeprodutos,
	pr.valor,
	nomefornecedor
FROM produtos as pr
	INNER JOIN pedido_produto AS pp ON pr.idproduto = pp.idproduto 
	INNER JOIN fornecedor AS forn ON pr.idproduto = forn.idfornecedor

--3.O nome da transportadora e o município.
	SELECT * FROM transportadora
	SELECT * FROM municipio

SELECT 
	nometransportadora,
	nomemunicipio
FROM transportadora as tp
	INNER JOIN municipio as mn ON mn.idmunicipio = tp.idmunicipio

--4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.
	SELECT * FROM pedido2
	SELECT * FROM pedido_produto
	SELECT * FROM tabelafinal
	SELECT * FROM transportadora
	SELECT * FROM vendedor

SELECT 
	ped.data_pedido,
	ped.valor,
	tf.nome,
	trans.nometransportadora,
	ven.nomevendedor

FROM pedido2 as ped
	INNER JOIN tabelafinal AS tf ON ped.idcliente = tf.idcliente
	INNER JOIN transportadora AS trans ON ped.idtransportadora = trans.idtransportadora
	INNER JOIN vendedor AS ven ON ped.idvendedor = ven.idvendedor

--5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
	