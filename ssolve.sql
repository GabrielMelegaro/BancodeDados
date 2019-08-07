create database T_SSolve

use T_SSolve

create table Clientes
(
	IdCliente INT PRIMARY KEY IDENTITY
	,Nome Varchar(255) not null unique
	,CNPJ INT
	,RazaoSocial varchar(255) not null 
	,Endereco varchar(255) not null 
);

create table Comodos
(
	IdComodo INT PRIMARY KEY IDENTITY not null
	,Nome varchar (255)
);

create table Funcionarios
(
	IdFuncionario INT PRIMARY KEY IDENTITY not null
	,Nome varchar (255)
);

create table Servicos
(
	IdServico INT PRIMARY KEY IDENTITY not null
	,Descricao varchar (255) not null 
	,IdComodo INT FOREIGN KEY REFERENCES Comodos(IdComodo) not null
);

create table ServicosFuncionarios
(
	IdServico int foreign key references Servicos(IdServico) not null 
	,IdFuncionario int foreign key references Funcionarios(IdFuncionario) not null
);