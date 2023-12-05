create database Concessionaria
GO

use Concessionaria
GO

create table Veiculo (
	chassi varchar(17) not null,
	marca varchar(10) null,
	modelo varchar(20) null,
	anoFabricacao int null,
	anoModelo int null,
	combustivel char(1) null,
	primary key(chassi)
)
GO

alter table Veiculo
add valor decimal(7,2) null,
motor varchar(20) null
GO

alter table Veiculo
drop column motor
GO

create index VeiculoMarcaModelo
on Veiculo (marca asc, modelo asc)

create index VeiculoAnoFabricacao
on Veiculo (anoFabricacao desc)
GO

drop index VeiculoMarcaModelo
on Veiculo;

drop table Veiculo

use master
drop database Concessionaria