CREATE DATABASE Psales;

USE T_PSales;

-- CRIAR A TABELA DE CURSOS
CREATE TABLE Cursos
(
    -- NOME_COLUNA TIPO_DADO CHAVE_PRIMARY AUTO_INCRREMENTO
    IdCurso     INT PRIMARY KEY IDENTITY
    -- NOME_COLUNA TIPO_DADO
    ,Nome       VARCHAR(200) NOT NULL UNIQUE
);

-- CRIAR A TABELA DE DISCIPLINAS
CREATE TABLE Disciplinas
(
    IdMateria       INT PRIMARY KEY IDENTITY
    ,Nome           VARCHAR(200)
    ,IdCurso        INT FOREIGN KEY REFERENCES Cursos (IdCurso)
);

-- CRIAR A TABELA DE ALUNOS
CREATE TABLE Alunos
(
    IdAluno         INT PRIMARY KEY IDENTITY
    ,Nome           VARCHAR(200) NOT NULL
);

-- CRIAR A TABELA PARA MATRICULAR OS ALUNOS EM SEUS DETERMINADOS CURSOS
CREATE TABLE CursosAlunos
(
    IdCurso     INT FOREIGN KEY REFERENCES Cursos (IdCurso)
    ,IdAluno    INT FOREIGN KEY REFERENCES Alunos (IdAluno)
);

-- inserção
INSERT INTO Cursos (Nome) VALUES ('Técnico Dev');
INSERT INTO Cursos (Nome) VALUES ('Técnico Redes');
INSERT INTO Cursos VALUES ('Curso A');
INSERT INTO Cursos VALUES ('Curso B'), ('Curso C');

-- SELECIONAR TODOS OS CURSOS
SELECT IdCurso, Nome FROM Cursos;
-- SELECT NOME_COLUNAS FROM TABELA
SELECT Nome, IdCurso FROM Cursos;
SELECT Nome FROM Cursos;
SELECT * FROM Cursos;

-- INSERIR AS DISCIPLINAS
INSERT INTO Disciplinas VALUES ('HTML', 1);
INSERT INTO Disciplinas VALUES ('CSS', 1), ('Design', 1), ('Conceito de Redes', 2);

SELECT * FROM Disciplinas;

INSERT INTO Alunos VALUES ('Tadeu'), ('Kevin');

SELECT * FROM Alunos;

INSERT INTO CursosAlunos VALUES (1, 1), (2, 1);

SELECT * FROM CursosAlunos;

-- atualização
-- UPDATE TABELA SET COLUNA_A_SER_ATUALIZADA = NOVO_VALOR
UPDATE Cursos SET Nome = 'Técnico em Desenvolvimento de Sistemas'
-- WHERE CONDICAO_COLUNA = CONDICAO_PROCURADA
WHERE IdCurso = 1;

-- deleção
-- DELETE FROM TABELA WHERE CLAUSULA = CONDICAO
DELETE FROM Disciplinas WHERE IdMateria = 3;

SELECT Disciplinas.*, Cursos.*
 FROM Disciplinas

FULL JOIN Cursos
ON Disciplinas.IdCurso = Cursos.IdCurso
INSERT INTO Disciplinas (Nome, IdCurso)  VALUES ('CSS', 2)
INSERT INTO Disciplinas (Nome, IdCurso) VALUES ('Design',4)

