create database Escola;
show databases;
use Escola;

create table aluno
(
	codAluno int primary key,
    nomeAluno varchar(100) not null,
    rua varchar(100) not null,
	numero int not null,
    bairro varchar(50) not null
    
);

create table disciplina
(
	codDisciplina int primary key,
    nomeDiciplina varchar(40) not null,
    CargaHoraria int not null
    
);

create table matriculado
(

	codAluno int not null,
    codDisciplina int not null,
    
    primary key (codAluno, codDisciplina),
    foreign key (codAluno) references aluno(codAluno) on delete cascade on update cascade,
    foreign key (codDisciplina) references disciplina(codDisciplina) on delete cascade on update cascade

);

describe aluno;
describe disciplina;
describe matriculado;
