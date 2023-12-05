create database RecursosHumanos
GO

use RecursosHumanos
GO

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
GO

alter table Funcionario
add salario decimal(7,2) null,
cargos varchar(2) null

alter table Funcionario
drop column cargos

alter table Funcionario
add cargo char(2) null,
ativo bit
GO

create index FuncionarioNome
on Funcionario (nome)

create index FuncionarioEstado
on Funcionario (estado desc)

create index FuncionarioEstadoCidade
on Funcionario (estado desc, cidade asc)
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(1, 'José da Silva', 'Av. São Paulo, 34', 'Itu', 'SP', 'zesilva@yahoo.com.br', '24-02-1991')
GO

INSERT INTO Funcionario
VALUES
(2, 'João de Oliveira', 'Rua da Saúde, 138', 'Jundiaí', 'SP', 'jojo@hotmail.com',
'11-01-1988',750,'TI',1)
GO

INSERT INTO Funcionario
VALUES
(3, 'Ana Pimenta', 'Rua da Saúde, 11', 'Jundiaí', 'SP',
'pimentinha@hotmail.com', '01-01-1987',750,'TI',0),
(4, 'Mário Lopes', 'Rua Angélica, 143', 'Jundiaí', 'SP', 'mlopes@ hotmail.com',
'10-04-1985',750,'TI',0)
GO

UPDATE Funcionario SET
cidade = 'Valinhos'
WHERE cidade = 'Itu'DELETE FROM Funcionario
WHERE idFuncionario = 2
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(5, 'Carlos Dias', 'Av. Lapa, 121', 'Itu', 'SP', 'carlao@gmail.com', '31-03-1990')
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(6, 'Ana Maria da Cunha', 'Av. São Paulo, 388', 'Itu', 'SP', 'aninhacunha@gmail.com', '12-04-1988')
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(7, 'Cláudia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'cregina@gmail.com', '04-12-1988')
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(8, 'Marcela Tatho', 'Rua Bélgica, 43', 'Campinas', 'SP', 'marctatho@gmail.com', '09-11-1987')
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(9, 'Jorge Luís Rodrigues', 'Av. da Saudade, 1989', 'São Paulo', 'SP', 'jorgeluis@yahoo.com.br', '05-05-1990')
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(10, 'Ana Paula Camargo', 'Rua Costa e Silva, 33', 'Jundiaí', 'SP', 'apcamargo@gmail.com', '30-06-1991')
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'ivo@bol.com.br', '11-04-1987')
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(12, 'Carlos Luís de Souza', 'Rua Nicolau Coelho, 22', 'São Paulo', 'SP', 'cls@bol.com.br', '30-04-1988')
GO

UPDATE Funcionario SET
cargo = 'AI'
WHERE cidade = 'Valinhos'

UPDATE Funcionario SET
salario = 1100
WHERE cidade = 'Valinhos'

UPDATE Funcionario SET
cargo = 'PC'
WHERE cidade = 'Campinas'

UPDATE Funcionario SET
salario = 1700
WHERE cidade = 'Campinas'

UPDATE Funcionario SET
cargo = 'TI'
WHERE cidade = 'Jundiaí'

UPDATE Funcionario SET
salario = 750
WHERE cidade = 'Jundiaí'

DELETE FROM Funcionario
WHERE idFuncionario = 5

SELECT nome, cargo
FROM Funcionario

SELECT idFuncionario, email
FROM Funcionario
WHERE estado = 'SP'

SELECT DISTINCT cidade, estado
FROM Funcionario
WHERE cargo = 'PC'

--SELECT *
--FROM Funcionario
--ORDER BY idFuncionario
--GO