CREATE DATABASE T_Moda

USE T_Moda

CREATE TABLE Tamanhos
(
	IdTamanho INT NOT NULL PRIMARY KEY IDENTITY
	,Nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Cores
(
	IdCor INT NOT NULL PRIMARY KEY IDENTITY
	,Nome VARCHAR(75) NOT NULL UNIQUE
);

CREATE TABLE Marcas
(
	IdMarca INT NOT NULL PRIMARY KEY IDENTITY
	,Nome VARCHAR (120)	 NOT NULL UNIQUE
);
CREATE TABLE Camisetas
(
	IdCamiseta INT PRIMARY KEY IDENTITY
	,IdMarca INT NOT NULL FOREIGN KEY REFERENCES Marcas(IdMarca)
	,IdCor INT NOT NULL FOREIGN KEY REFERENCES Cores(IdCor)
	,IdTamanho INT NOT NULL FOREIGN KEY REFERENCES Tamanhos(IdTamanho)
);


INSERT INTO Marcas (Nome) VALUES ('Gangster')
								,('Oakley')
								,('Nike');

INSERT INTO Cores VALUES ('Vermelho',2)
								,('Preto',4)
								,('Branco',1)
								,('Verde',3)
								,('Azul',5);

INSERT INTO Tamanhos (Nome) VALUES ('GG'),('G'),('M'),('P');

INSERT INTO Camisetas (IdMarca) VALUES	('Gangster')
									,('Oakley')
									,('Nike')
									,('Tommy Hilfiger')
									,('Gucci');

SELECT Nome, IdMarca FROM Marcas;
SELECT IdMarca, Nome FROM Marcas;
SELECT IdCor, Nome FROM Cores;
SELECT IdMarca, IdCor, IdTamanho, IdCamiseta FROM Camisetas;