CREATE DATABASE T_SStop

USE T_SStop

CREATE TABLE Estilos
(
	IdEstilo INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Artistas
(
	IdArtista INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (250) NOT NULL UNIQUE
	,IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

INSERT INTO Estilos VALUES ('Rock')
						   ,('Metal')
						   ,('MPB')
						   ,('Pagode')
						   ,('Trap')
						   ,('Tecno')
						   ,('Forro');

INSERT INTO Artistas VALUES ('Imagine Dragons',1)
							,('Metallica',2)
							,('Lil Pump', 5)
							,('Alok', 6)
							,('Legião Urbana', 3)
							,('Forro Boys', 7)
							,('Thiaguinho', 4)
							,('Lil Nas X', 8);
SELECT *
	FROM Estilos;

SELECT IdEstilo
	FROM Estilos;

DELETE FROM Artistas
	WHERE IdArtista = 8;

