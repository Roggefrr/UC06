-- Criar meu banco de dados
create database instagram;
-- usar o banco criado
use instagram;
-- Criando a tabela usuario
create table usuario(
	id_usuario int primary key,
	nome nvarchar(40),
	email varchar(50),
	senha varchar(25),
	telefone char(11)
);
-- Criando a tabela perfil
create table perfil(
	id_perfil int primary key,
	perfil_privado bit,
	editar_perfil bit,
	favoritar_conta bit
);
-- Criando a tabela instagram
create table instagram(
	id_empresa int primary key,
	ceo nvarchar(20),
	email varchar(50),
	tecnologia_ultilizada varchar(100),
	equipe_desenvolvimento varchar(100)
);
-- Criando a tabela pesquisa
create table pesquisa(
	id_pesquisa int primary key,
	conta_usuario nvarchar(20),
	mome_usuario nvarchar(20)
);
-- Criando a tabela login
create table loging(
	nome_usuario nvarchar(20),
	email_usuario varchar(50)
);
-- Criando a tabela