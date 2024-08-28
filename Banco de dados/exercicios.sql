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


		
