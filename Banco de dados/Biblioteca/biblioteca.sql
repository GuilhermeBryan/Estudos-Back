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

SELECT * FROM livro
SELECT * FROM autor ORDER BY nome_autor, idautor ASC

INSERT INTO livro_autor (idlivro, idautor)
	VALUES
		(1, 1),
		(1, 2),
		(2, 3),
		(3, 4),
		(4, 5),
		(4, 6),
		(5, 7),
		(6, 8),
		(7, 9),
		(8, 10);

--Aluno
CREATE TABLE aluno (
	idaluno serial NOT NULL,
	nome_aluno varchar (30) NOT NULL,

	CONSTRAINT pk_aluno_idaluno PRIMARY KEY (idaluno)
)

INSERT INTO aluno (nome_aluno)
	VALUES
		('Mario'),
		('João'),
		('Paulo'),
		('Pedro'),
		('Maria');

--Empréstimo
CREATE TABLE emprestimo (
	idemprestimo serial NOT NULL,
	id_aluno integer NOT NULL,
	data_emprestimo date NOT NULL,
	data_devolucao date NOT NULL,
	valor decimal (10, 2) NOT NULL,
	devolvido char (1) NOT NULL,

	CONSTRAINT pk_emprestimo_idemprestimo PRIMARY KEY (idemprestimo),
	CONSTRAINT fk_emprestimo_idaluno FOREIGN KEY (id_aluno) REFERENCES aluno (idaluno)
	
)

SELECT * FROM aluno

INSERT INTO emprestimo (id_aluno, data_emprestimo, data_devolucao, valor, devolvido)
	VALUES 
		(1, '02/05/2012', '12/05/2012', 10.00, 'S'),
		(1, '23/04/2012', '03/05/2012', 5.00, 'N'),
		(2, '10/05/2012', '20/05/2012', 12.00, 'N'),
		(3, '10/05/2012', '20/05/2012', 8.00, 'S'),
		(4, '05/05/2012', '15/05/2012', 15.00, 'N'),
		(4, '07/05/2012', '17/05/2012', 20.00, 'S'),
		(4, '08/05/2012', '18/05/2012', 5.00, 'S');

--Emprestimo livro
CREATE TABLE emprestimo_livro (
	id_emprestimo integer NOT NULL,
	id_livro integer NOT NULL,

	CONSTRAINT fk_emprestimolivro_idemprestimo FOREIGN KEY (id_emprestimo) REFERENCES emprestimo (idemprestimo),
	CONSTRAINT fk_emprestimolivro_idlivro FOREIGN KEY (id_livro) REFERENCES livro (idlivro),
	CONSTRAINT pk_emprestimolivro_idlivroidemprestimo PRIMARY KEY (id_emprestimo, id_livro)
)

SELECT * FROM emprestimo WHERE id_aluno = 4
SELECT * FROM livro
SELECT idaluno, nome_aluno FROM aluno ORDER BY aluno ASC
	

INSERT INTO emprestimo_livro (id_emprestimo, id_livro)
	VALUES
		(2, 4),
		(2, 3),
		(3, 2),
		(3, 7),
		(4, 5),
		(5, 4),
		(6, 6),
		(6, 1),
		(7, 8);

	--index

	CREATE INDEX emprestimo_index ON emprestimo (idemprestimo)
	CREATE INDEX emprestimo_devolucao ON emprestimo (data_devolucao)

	--consultas simples
	
	--O nome dos autores em ordem alfabética.
	SELECT nome_autor FROM autor ORDER BY nome_autor ASC

	--O nome dos alunos que começam com a letra P.
	SELECT nome_aluno FROM aluno WHERE nome_aluno ILIKE 'P%'

	--O nome dos livros da categoria Banco de Dados ou Java.
	SELECT * FROM livro
	SELECT nome_livro FROM livro WHERE idcategoria IN (1, 3)

	--O nome dos livros da editora Bookman
	SELECT * FROM editora
	SELECT nome_livro FROM livro WHERE ideditora = 1
	
	--Os empréstimos realizados entre 05/05/2012 e 10/05/2012.
	SELECT * FROM emprestimo
	SELECT data_emprestimo FROM emprestimo WHERE data_emprestimo BETWEEN '05/05/2012' and '10/05/2012'

	--Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
	SELECT data_emprestimo FROM emprestimo WHERE data_emprestimo NOT BETWEEN '05/05/2012' and '10/05/2012'

	--Os empréstimos que os livros já foram devolvidos.
	SELECT * FROM livro
	SELECT * FROM emprestimo
	SELECT idemprestimo FROM emprestimo WHERE devolvido = 'S'

	--CONSULTAS COM AGRUPAMENTO SIMPLES
	--A quantidade de livros.
	SELECT COUNT(idlivro) FROM livro

	--O somatório do valor dos empréstimos.
	SELECT SUM(valor) FROM emprestimo

	--A média do valor dos empréstimos.
	SELECT AVG(valor) FROM emprestimo

	--O maior valor dos empréstimos.
	SELECT MAX(valor) FROM emprestimo

	--O menor valor dos empréstimos.
	SELECT MIN(valor) FROM emprestimo

	--O somatório do valor do empréstimo que estão entre 05/05/2012 e 10/05/2012.
	SELECT SUM(valor) FROM emprestimo WHERE data_emprestimo BETWEEN '05/05/2012' and '10/05/2012'

	--A quantidade de empréstimos que estão entre 01/05/2012 e 05/05/2012.
	SELECT COUNT(valor) FROM emprestimo WHERE data_emprestimo BETWEEN '05/05/2012' and '10/05/2012'

	--CONSULTAS COM JOIN
	--O nome do livro, a categoria e a editora (LIVRO) – fazer uma view
	SELECT * FROM categoria
	SELECT * FROM editora
	SELECT * FROM livro

	CREATE VIEW liv_cat_edt AS
	SELECT 
		livro.nome_livro,
		categoria.nome_categoria,
		editora.nome_editora
	FROM categoria 
	INNER JOIN livro ON categoria.idcategoria = livro.idcategoria
	INNER JOIN editora ON editora.ideditora = livro.ideditora

	--O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view.
	SELECT * FROM livro
	SELECT * FROM autor
	SELECT * FROM livro_autor

	CREATE VIEW livro_autor_view AS
	SELECT
		livro.nome_livro,
		autor.nome_autor
	FROM livro_autor
	INNER JOIN livro ON livro.idlivro = livro_autor.idlivro
	INNER JOIN autor ON autor.idautor = livro_autor.idautor

	--O nome dos livros do autor Ian Graham (LIVRO_AUTOR).
	SELECT	
		livro.nome_livro,
		autor.nome_autor
	FROM livro_autor
	INNER JOIN livro ON livro.idlivro = livro_autor.idlivro
	INNER JOIN autor ON autor.idautor = livro_autor.idautor 
		WHERE nome_autor = 'Ian Graham'

	--O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).
	SELECT * FROM aluno
	SELECT * FROM emprestimo
	SELECT
		aluno.nome_aluno,
		emprestimo.data_emprestimo,
		emprestimo.data_devolucao
	FROM aluno
	INNER JOIN emprestimo ON aluno.idaluno = emprestimo.id_aluno

	--O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO).
	SELECT 
		livro.nome_livro AS "Devolvidos"
	FROM emprestimo_livro
	INNER JOIN livro ON emprestimo_livro.id_livro = livro.idlivro
	INNER JOIN emprestimo ON emprestimo_livro.id_emprestimo = emprestimo.idemprestimo
		WHERE devolvido = 'S'
		
	--CONSULTAS COM AGRUPAMENTO + JOIN
	--O nome da editora e a quantidade de livros de cada editora (LIVRO).

	SELECT 
		editora.nome_editora,
		COUNT(livro.idlivro)
	FROM editora
		INNER JOIN livro  ON editora.ideditora = livro.ideditora
		GROUP BY (nome_editora)

	--O nome da categoria e a quantidade de livros de cada categoria (LIVRO).
	SELECT * FROM categoria
	SELECT * FROM livro
	SELECT
		categoria.nome_categoria,
		COUNT(livro.idlivro)
	FROM categoria
	INNER JOIN livro ON categoria.idcategoria = livro.idcategoria
	GROUP BY (nome_categoria)

	--O nome do autor e a quantidade de livros de cada autor (LIVRO_AUTOR).
	SELECT * FROM autor
	SELECT * FROM livro
	SELECT * FROM livro_autor
	SELECT
		autor.nome_autor,
		COUNT(livro.idlivro)
	FROM livro_autor
	INNER JOIN autor ON livro_autor.idautor = autor.idautor
	INNER JOIN livro ON livro_autor.idlivro = livro.idlivro
	GROUP BY (nome_autor)

	--O nome do aluno e a quantidade de empréstimo de cada aluno (EMPRESTIMO_LIVRO).
	SELECT * FROM emprestimo_livro
	SELECT * FROM aluno
	SELECT 
		nome_aluno,
		COUNT(emprestimo.idemprestimo)
	FROM emprestimo
	INNER JOIN aluno ON emprestimo.id_aluno = aluno.idaluno
	GROUP BY (nome_aluno)
--O nome do aluno e o somatório do valor total dos empréstimos de cada aluno (EMPRESTIMO).
		SELECT 
		nome_aluno,
		SUM(emprestimo.valor)
	FROM emprestimo
	INNER JOIN aluno ON emprestimo.id_aluno = aluno.idaluno
	GROUP BY (nome_aluno)
--O nome do aluno e o somatório do valor total dos empréstimos de cada aluno somente daqueles que o somatório for maior do que 7,00 (EMPRESTIMO).
	SELECT 
		nome_aluno,
		SUM(emprestimo.valor)
	FROM emprestimo
	INNER JOIN aluno ON emprestimo.id_aluno = aluno.idaluno
	GROUP BY (nome_aluno)
		HAVING SUM(emprestimo.valor) > 7.00

--CONSULTAS COMANDOS DIVERSOS
--O nome de todos os alunos em ordem decrescente e em letra maiúscula.
	SELECT UPPER(nome_aluno) FROM aluno ORDER BY aluno DESC 
--Os empréstimos que foram feitos no mês 04 de 2012.
	SELECT * FROM emprestimo
	SELECT EXTRACT(YEAR from data_emprestimo) = 2012, EXTRACT (MONTH from data_emprestimo) = 4 FROM emprestimo 
--Todos os campos do empréstimo. Caso já tenha sido devolvido, mostrar a mensagem “Devolução completa”, senão “Em atraso”.
SELECT * FROM emprestimo
SELECT 
	*,
	CASE devolvido 
	WHEN 'S' THEN 'Devolução completa'
	WHEN 'N' THEN 'Em atraso'
END AS SITUAÇÃO
FROM emprestimo

--Somente o caractere 5 até o caractere 10 do nome dos autores.
SELECT
	substring(nome_autor FROM 5 for 10) FROM autor
--O valor do empréstimo e somente o mês da data de empréstimo. Escreva “Janeiro”, “Fevereiro”, etc

SELECT
	valor,
	data_emprestimo,
	CASE EXTRACT(MONTH FROM data_emprestimo)
	WHEN 1 Then 'Janeiro'
	WHEN 2 THEN 'Fevereiro'
	WHEN 3 THEN 'Março'
	WHEN 4 THEN 'Abril'
	WHEN 5 THEN 'Maio'
	END AS mes
FROM emprestimo

--SUBCONSULTAS

--A data do empréstimo e o valor dos empréstimos que o valor seja maior que a média de todos os empréstimos.
		SELECT 
			data_emprestimo,
			valor
		FROM
			emprestimo
		WHERE 
			valor > (SELECT AVG (valor) FROM emprestimo)

--A data do empréstimo e o valor dos empréstimos que possuem mais de um livro.
SELECT * FROM emprestimo
	SELECT
		emp.data_emprestimo,
		emp.valor,
		(SELECT COUNT(elv.id_emprestimo) FROM emprestimo_livro elv WHERE elv.id_emprestimo = emp.idemprestimo)
	FROM emprestimo emp
		(SELECT COUNT(elv.idemprestimo) FROM emprestimo_livro elv 	WHERE elv.idemprestimo = emp.idemprestimo) > 1
	
	
	
	
		