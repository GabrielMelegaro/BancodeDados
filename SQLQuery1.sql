--CRIAR BANCO DE DADOS
CREATE DATABASE T_PSales;

-- COLOCAR O BANCO DE DADOS EM USO
USE T_PSales

-- DDL - DATA DEFINITION LANGUAGE

--CRIAR A TABELA DE CURSOS
CREATE TABLE Cursos
(
	--tipo de dados, pk, fk
	IdCurso	INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(200)  NOT NULL UNIQUE
);

--CRIAR TABELA DE DISCIPLINAS
CREATE TABLE Disciplinas
(
	IdDisciplina INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR (250) NOT NULL
	,IdCurso INT FOREIGN KEY REFERENCES Cursos (IdCurso)
);

--CRIAR TABELA DE ALUNOS
CREATE TABLE Alunos
(           mME
	--tipo de dados, pk, fk
	IdAluno	INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(200)  NOT NULL UNIQUE
);

--CRIAR TABELA INTERMEDIARIA DE ALUNOS E CURSOS (VINCULAR)
CREATE TABLE CursosAlunos
(
	IdCurso		INT FOREIGN KEY REFERENCES Cursos (IdCurso)
	,IdAluno	INT FOREIGN KEY REFERENCES Alunos (IdAluno)
);

-- INSERIR REGISTROS
-- INSERIR ALGO EM ALGUM LOCAL
--INSERT INTO NOME TABELA (COLUNAS) VALUES (VALORES)
INSERT INTO Cursos (Nome) VALUES ('Técnico em Dev. Sistemas');
--A,	B,	 C
-- ('',		'',	'')

-- Considerar as colunas em ordem
INSERT INTO Cursos Values ('Técnico em Redes');

-- inserir mais de um registro por vez
INSERT INTO Cursos VALUES ('Curso A')
						  ,('Curso B')
						  ,('Curso C');

SELECT IdCurso, Nome
	FROM Cursos;

SELECT Nome
	FROM Cursos;

SELECT *
	FROM Cursos;

SELECT *
	FROM Cursos
	WHERE IdCurso = 1;

--Atualização
--Técnico em Desenvolvimento de Sistemas
--Update tabela set qual_coluna = novo valor condição
UPDATE Cursos
	SET Nome = 'Técnico em Desenvolvimento em Sistemas'
	WHERE IdCurso = 1;

INSERT INTO Disciplinas (Nome, IdCurso)
	VALUES ('HTML', 1);

SELECT *
	FROM Disciplinas;

SELECT * FROM Cursos

DELETE FROM Cursos
WHERE IdCurso = 5;

--CRUD
--CREATE, READ, UPDATE, DELETE
--INSERT, SELECT, UPDATE, DELETE