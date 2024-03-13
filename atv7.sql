	--Criando Banco de dados
create database biblioteca;
	--Selecionando o banco de dados
use biblioteca;
	-- Criando a tabela cliente
create table cliente(
	cod_cliente int primary key, 
	email varchar(50),
	telefone_1 varchar(12),
	telefone_2 varchar(12),
	rua varchar(20),
	bairro varchar(20),
	cidade varchar(20),
	estado varchar(20)
);
insert into Cliente (cod_cliente, email, telefone_1, rua, bairro, cidade, estado)
values (1, 
'joaosilva@email.com', 
'1199998888', 
'Rua A', 
'Centro', 
'São Paulo', 
'SP');

insert into Cliente (cod_cliente, email, telefone_1, rua, bairro, cidade, estado)
values (2, 
'mariagomes@email.com', 
'2188887777', 
'Rua B', 
'Copacabana', 
'Rio de Janeiro', 
'RJ');
	-- Tipos de pessoas
create table pessoa_fisica(
	cod_cliente int
	foreign key (cod_cliente) references cliente(cod_cliente),
	rg  varchar(11),
	cpf varchar(14)
);
INSERT INTO Pessoa_Fisica (cod_cliente, rg, cpf)
VALUES (1, '123456789', '123.456.789-00');

INSERT INTO Pessoa_Fisica (cod_cliente, rg, cpf)
VALUES (2, '987654321', '987.654.321-10');

create table pessoa_juridica(
	cod_cliente int
	foreign key (cod_cliente) references cliente(cod_cliente),
	cnpj varchar(14),
	ie varchar(15)
);
INSERT INTO Pessoa_Juridica (cod_cliente, cnpj, ie)
VALUES (1, '12345678900010', 'IE-123456789');

INSERT INTO Pessoa_Juridica (cod_cliente, cnpj, ie)
VALUES (2, '98765432000120', 'IE-987654321');

	--Pedidos
 create table pedido(
	cod_cliente int
	foreign key (cod_cliente) references cliente(cod_cliente),
	cod_pedido int primary key,
	dataa date,
	valor_pedido money
 );
 INSERT INTO Pedido (cod_cliente, cod_pedido, dataa, valor_pedido)
VALUES (1, 1, '2023-11-14', 100.50);

INSERT INTO Pedido (cod_cliente, cod_pedido, dataa, valor_pedido)
VALUES (2, 2, '2023-11-15', 250.75);

 	--livro
create table livro(
cod_livro int primary key,
cod_editora int,
valor money,
ano_publicacao money,
categoria varchar(56),
titulo varchar(33),
autor varchar(30)
);
INSERT INTO Livro (cod_livro, cod_editora, valor, ano_publicacao, categoria, titulo, autor)
VALUES (1, 1, 50.00, 2023, 'Ficção Científica', 'Duna', 'Frank Herbert');

INSERT INTO Livro (cod_livro, cod_editora, valor, ano_publicacao, categoria, titulo, autor)
VALUES (2, 2, 30.00, 2022, 'Fantasia', 'O Senhor dos Anéis', 'J. R. R. Tolkien');
	--Itens pedidos
create table item_pedido(
cod_pedido int 
foreign key (cod_pedido) references pedido(cod_pedido),
cod_livro int 
foreign key (cod_livro) references livro(cod_livro),
qtde_pedido int,
valor_item money
);
INSERT INTO Item_Pedido (cod_pedido, cod_livro, qtde_pedido, valor_item)
VALUES (1, 1, 2, 100.00);

INSERT INTO Item_Pedido (cod_pedido, cod_livro, qtde_pedido, valor_item)
VALUES (2, 2, 1, 30.00);
create table editora(
cod_editora int primary key,

);
INSERT INTO Editora (cod_editora, telefone_1, telefone_2, nome_completo, email)
VALUES (1, '1199998888', '1198887777', 'Editora Nova', 'editoranova@email.com');

INSERT INTO Editora (cod_editora, telefone_1, telefone_2, nome_completo, email)
VALUES (2, '2188887777', '2187776666', 'Editora Moderna', 'editoramoderna@email.com');
create table estoque(
	cod_editora int 
foreign key (cod_editora) references editora(cod_editora),
	cod_livro int
foreign key (cod_livro) references livro(cod_livro)
);
INSERT INTO Estoque (cod_editora, cod_livro)
VALUES (1, 1);

INSERT INTO Estoque (cod_editora, cod_livro)
VALUES (2, 2);


alter table editora 
add
telefone_1 varchar(20),
telefone_2 varchar(20),
nome_completo varchar(30),
email varchar(50)


