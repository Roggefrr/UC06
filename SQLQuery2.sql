use sistema_biblioteca;

--quest�o 1
--Encontre o n�mero total de livros dispon�veis na biblioteca com CNPJ 12345678000123
select count(*) as TOTAL_LIVROS from LIVRO_BIBLIOTECA
where cnpj = 12345678000123;

--quest�o 2
--Liste todos os funcion�rios que s�o bibliotec�rios
select nome from BIBLIOTECARIO;

--quest�o 3
--Encontre o t�tulo e o autor do livro com o n�mero de registro 10
select titulo, autor from livro 
where numero_registro = 10;

--quest�o 4
select * 
from EVENTO
where tipo = 'workshop' and custo > 150;

--quest�o 5
select livro.titulo
from livro 
join tecnologia on 
livro.numero_registro = TECNOLOGIA.numero_registro;

--quest�o 6
select nome 
from ATENDENTE;

--quest�o 7
select titulo 
from PERIODICO
where ano_publicacao = 2023;

--quest�o 8
select livro.titulo
from livro join SOCIOLOGIA on
livro.numero_registro = sociologia.numero_registro;

--quest�o 9
select * from EDUCADOR;

--quest�o 10
select periodico.titulo 
from PERIODICO
where titulo like 'c%';

--quest�o 11
select evento.data, evento.tipo
from evento
where tipo='palestra' and data < '2022';

--quest�o 12
select livro.ano_publicacao 
from livro join
ciencia on livro.numero_registro = ciencia.numero_registro and 
ano_publicacao > '2015';

--quest�o 13

select nome
from TECNICO_TI 
where nome like '%rodrigo%';

--quest�o 14

select nome from assistente

--quest�o 15
select livro.titulo
from livro
where titulo like '%programa��o%';

--quest�o 16
select PERIODICO.titulo
from PERIODICO 
where titulo like '%Sa�de%';

--quest�o 17 
select FUNCIONARIO.nome
from FUNCIONARIO
join gerente on FUNCIONARIO.matricula = gerente.matricula 
where gerente.nome like 'c%';

--quest�o 18
select livro.titulo, livro.ano_publicacao
from livro
where ano_publicacao > 2010 and ano_publicacao < 2020;

--quest�o 19
select FUNCIONARIO.nome
from FUNCIONARIO
join ESTAGIARIO on FUNCIONARIO.matricula = ESTAGIARIO.matricula
where ESTAGIARIO.nome like '%lima%';