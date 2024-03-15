use sistema_biblioteca;

--questão 1
--Encontre o número total de livros disponíveis na biblioteca com CNPJ 12345678000123
select count(*) as TOTAL_LIVROS from LIVRO_BIBLIOTECA
where cnpj = 12345678000123;

--questão 2
--Liste todos os funcionários que são bibliotecários
select nome from BIBLIOTECARIO;

--questão 3
--Encontre o título e o autor do livro com o número de registro 10
select titulo, autor from livro 
where numero_registro = 10;

--questão 4
select * 
from EVENTO
where tipo = 'workshop' and custo > 150;

--questão 5
select livro.titulo
from livro 
join tecnologia on 
livro.numero_registro = TECNOLOGIA.numero_registro;

--questão 6
select nome 
from ATENDENTE;

--questão 7
select titulo 
from PERIODICO
where ano_publicacao = 2023;

--questão 8
select livro.titulo
from livro join SOCIOLOGIA on
livro.numero_registro = sociologia.numero_registro;

--questão 9
select * from EDUCADOR;

--questão 10
select periodico.titulo 
from PERIODICO
where titulo like 'c%';

--questão 11
select evento.data, evento.tipo
from evento
where tipo='palestra' and data < '2022';

--questão 12
select livro.ano_publicacao 
from livro join
ciencia on livro.numero_registro = ciencia.numero_registro and 
ano_publicacao > '2015';

--questão 13

select nome
from TECNICO_TI 
where nome like '%rodrigo%';

--questão 14

select nome from assistente

--questão 15
select livro.titulo
from livro
where titulo like '%programação%';

--questão 16
select PERIODICO.titulo
from PERIODICO 
where titulo like '%Saúde%';

--questão 17 
select FUNCIONARIO.nome
from FUNCIONARIO
join gerente on FUNCIONARIO.matricula = gerente.matricula 
where gerente.nome like 'c%';

--questão 18
select livro.titulo, livro.ano_publicacao
from livro
where ano_publicacao > 2010 and ano_publicacao < 2020;

--questão 19
select FUNCIONARIO.nome
from FUNCIONARIO
join ESTAGIARIO on FUNCIONARIO.matricula = ESTAGIARIO.matricula
where ESTAGIARIO.nome like '%lima%';