create database Clinica;
show databases;
use Clinica;

create table medico
(
	codMed int primary key,
    nomeMed varchar(40) not null,
    dataNasc date not null,
    cpf char(11) unique,
    cidade varchar(30) not null,
    especialidade varchar(30) not null
);

create table paciente
(
	codPac int primary key,
    nomePac varchar(40) not null,
    dataNasc date not null,
    cpf char(11) unique,
    cidade varchar(30) not null
    
);

create table consulta
(

	codMed int not null,
    codPac int not null,
    data date not null,
    hora time not null,
    primary key (codMed, codPac, data, hora),
    foreign key (codMed) references medico(codMed) on delete cascade on update cascade,
    foreign key (codPac) references paciente(codPac) on delete cascade on update cascade

);

describe medico;
describe paciente;
describe consulta
