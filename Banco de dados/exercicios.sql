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

	select  'concatenados: ' || nome ||'\' || logradouro || '\'|| numero || '\' || complemento || '\' || bairro || '\' || municipio || '\' || uf as "concatenação" from tabelafinal;
