create database RecursosHumanos
go 

use RecursosHumanos
go

create table Funcionario (
idFuncionario int not null,
nome varchar(50) null,
endereco varchar(100) null,
cidade varchar(50) null,
estado char(2) null,
email varchar(50) null unique,
dataNascto date null,
primary key(idFuncionario)
)
go

alter table Funcionario
add salario decimal(7,2) null,
cargos varchar(2) null

alter table Funcionario
drop column cargos

alter table Funcionario
add cargo char(2) null,
ativo bit
go

create index FuncionarioNome
on Funcionario(nome)

create index FuncionarioEstado
on Funcionario (estado desc)

create index FuncionarioEstadoCidade
on Funcionario (estado desc, cidade asc)
go
