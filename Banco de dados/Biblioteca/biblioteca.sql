--Editora
CREATE TABLE editora (
	ideditora serial NOT NULL,
	nome_editora varchar (30) NOT NULL,

	CONSTRAINT pk_editora_ideditora PRIMARY KEY (ideditora),
	CONSTRAINT unq_editora_nome UNIQUE (nome_editora)
	
)

INSERT INTO editora (nome_editora)
	VALUES 
		('Bookman'),
		('Edgar Blusher'),
		('Nova Terra'),
		('Brasport');

SELECT * FROM editora

--Categoria
CREATE TABLE categoria (
	idcategoria serial NOT NULL,
	nome_categoria varchar (30) NOT NULL,

	CONSTRAINT pk_categoria_id_categoria PRIMARY KEY (idcategoria),
	CONSTRAINT unq_categoria_nomecategoria UNIQUE (nome_categoria)
)

INSERT INTO categoria (nome_categoria)
	VALUES 
		('Banco de Dados'),
		('HTML'),
		('Java'),
		('PHP');

SELECT * FROM categoria


--autor 
CREATE TABLE autor (
	idautor serial NOT NULL,
	nome_autor varchar (30) NOT NULL,

	CONSTRAINT pk_autor_idautor PRIMARY KEY (idautor)
)

INSERT INTO autor (nome_autor)
	VALUES
		('Waldemar Setzer'),
		('Flávio Soares'),
		('John Watson'),
		('Rui Rossi dos Santos'),
		('Antonio Pereira de Resende'),
		('Claudiney Calixto Lima'),
		('Evandro Carlos Teruel'),
		('Ian Graham'),
		('Fabrício Xavier'),
		('Pablo Dalloglio');

SELECT * FROM autor

--Livro
CREATE TABLE livro (
	idlivro serial NOT NULL,
	ideditora integer NOT NULL,
	idcategoria integer NOT NULL,
	nome_livro varchar (50) NOT NULL,

	CONSTRAINT pk_livro_idlivro PRIMARY KEY (idlivro),
	CONSTRAINT fk_livro_ideditora FOREIGN KEY (ideditora) REFERENCES editora (ideditora),
	CONSTRAINT fk_livro_idcategoria FOREIGN KEY (idcategoria) REFERENCES categoria (idcategoria),
	CONSTRAINT unq_livro_nome_livro UNIQUE (nome_livro)
)

SELECT * FROM editora
SELECT * FROM categoria

INSERT INTO livro (ideditora, idcategoria, nome_livro)
	VALUES
		(2, 1, 'Banco de Dados – 1 Edição'),
		(1, 1, 'Oracle DataBase 11G Administração'),
		(3, 3, 'Programação de Computadores em Java'),
		(4, 3, 'Programação Orientada a Aspectos em Java'),
		(4, 2, 'HTML5 – Guia Prático'),
		(3, 2, 'XHTML: Guia de Referência para Desenvolvimento na Web'),
		(1, 4, 'PHP para Desenvolvimento Profissional'),
		(2, 4, 'PHP com Programação Orientada a Objetos');

--Livro autor
CREATE TABLE livro_autor (
	idlivro integer NOT NULL,
	idautor integer NOT NULL,

	CONSTRAINT fk_livroautor_idlivro FOREIGN KEY (idlivro) REFERENCES livro (idlivro),
	CONSTRAINT fk_livroautor_idautor FOREIGN KEY (idautor) REFERENCES autor (idautor),
	CONSTRAINT pk_livroautor_autorelivro PRIMARY KEY (idlivro, idautor)
)
	
