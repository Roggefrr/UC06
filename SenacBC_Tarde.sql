-- Criar o banco
create database senac_bd;
-- Usando o banco de dados 
Use senac_bd;

--Criando tabelas
create table SENAC(
cnpj nvarchar(30) primary key NOT NULL, 
email nvarchar(55) unique NOT NULL,
numeroTelefone nvarchar(20),
web nvarchar(55)
);

create table PARCEIRO(
cpnjParceiro nvarchar(30) primary key, 
nome nvarchar(30) NOT NULL,
tempoPareria date NOT NULL, 
ramo nvarchar(30)
);

create table ALUNO(
matricula int primary key,
nome nvarchar(30) NOT NULL,
cpf varchar(14)
);

create table BOLSISTA(
matricula int NOT NULL,
foreign key (matricula) REFERENCES ALUNO(matricula)
);
alter table BOLSISTA alter column matricula int NOT NULL;

create table PSG(
matricula int NOT NULL,
foreign key (matricula) REFERENCES ALUNO(matricula)
);
alter table PSG alter column matricula int NOT NULL;

create table COMERCIAL(
matricula int NOT NULL,
foreign key (matricula) REFERENCES ALUNO(matricula)
);
alter table COMERCIAL alter column matricula int NOT NULL;

create table FUNCIONARIO(
nome nvarchar(30),
cargo nvarchar(30),
nip int primary key,
cpf nvarchar(14)
);
create table PROFESSOR(
nip int NOT NULL,
foreign key (nip) REFERENCES FUNCIONARIO(nip)
);
alter table PROFESSOR alter column nip int not null;
create table GESTOR(
nip int NOT NULL,
foreign key (nip) REFERENCES FUNCIONARIO(nip)
);

alter table FUNCIONARIO alter column nip int not null;

create table ASG(
nip int NOT NULL,
foreign key (nip) REFERENCES FUNCIONARIO(nip)
);

alter table ASG alter column nip int not null;

create table RH(
nip int NOT NULL,
foreign key (nip) REFERENCES FUNCIONARIO(nip)
);

alter table RH alter column nip int not null;

create table FINANCEIRO(
nip int NOT NULL, 
foreign key (nip) REFERENCES FUNCIONARIO(nip)
); 

alter table FINANCEIRO alter column nip int not null;

create table CURSO(
idCurso int primary key NOT NULL,
nome nvarchar(30) NOT NULL,
cargaH time,
);

create table DEMANDA(
cnpj  nvarchar(30),
idCurso int,
foreign key (cnpj) references SENAC(cnpj),
foreign key (idCurso) references CURSO(idCurso)
);

alter table DEMANDA alter column idcurso int not null;
alter table DEMANDA alter column cnpj nvarchar(30) not null;

create table TECNICO(
idCurso int NOT NULL
foreign key (idCurso)  REFERENCES CURSO(idcurso)
);

alter table TECNICO alter column idcurso int not null; 

create table LIVRE(
idCurso int NOT NULL 
foreign key (idCurso)  REFERENCES CURSO(idcurso)
);

alter table LIVRE alter column idcurso int not null;

create table GRADUACAO(
idcurso int NOT NULL
foreign key (idcurso) REFERENCES CURSO(idcurso)
);

alter table GRADUACAO alter column idcurso int not null;

create table TURMA(
numeroTurma int primary key, 
matricula int,
nip int,
foreign key (matricula) REFERENCES ALUNO(matricula),
foreign key (nip) REFERENCES FUNCIONARIO(nip),
sala int
);

