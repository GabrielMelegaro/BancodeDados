USE T_Livros

CREATE TABLE G�neros
(	
	IdG�nero INT NOT NULL PRIMARY KEY IDENTITY
	,Nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Autores
(
	IdAutor INT NOT NULL PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL 
	,Email VARCHAR (200) NOT NULL UNIQUE
	,Ativo INT NOT NULL
	,DataNascimento DATE NOT NULL
);

CREATE TABLE Livros
(
	IdLivro INT NOT NULL PRIMARY KEY IDENTITY
	,Nome VARCHAR(150) NOT NULL UNIQUE
	,IdG�nero	INT NOT NULL FOREIGN KEY REFERENCES G�neros(IdG�nero)
	,IdAutor	INT NOT NULL FOREIGN KEY REFERENCES Autores(IdAutor)
);

INSERT INTO Livros(Nome) VALUES ('ATDM');
INSERT INTO Livros VALUES ('ATDC'),('Senhor dos An�is');

UPDATE Livros SET Nome = 'ATDM' WHERE IdLivro = 2;

DELETE FROM Livros WHERE IdLivro = 3;

SELECT * FROM Livros;