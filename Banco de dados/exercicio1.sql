CREATE TABLE tabela3 (
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
	constraint pk_tab3_idcliente primary key (idcliente)
	);
	
	insert into tabela3 (idcliente, nome, cpf, rg, data_de_nascimento, sexo, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
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