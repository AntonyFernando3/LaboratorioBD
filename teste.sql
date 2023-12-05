CREATE DATABASE RecursosHumanos

USE RecursosHumanos

CREATE TABLE Funcionario (
idFuncionario INT NOT NULL,
nome VARCHAR(50) NULL,
endereco VARCHAR(100) NULL,
cidade VARCHAR(50) NULL,
estado CHAR(2) NULL,
email VARCHAR(50) NULL UNIQUE,
dataNascto DATE NULL,
PRIMARY KEY(idFuncionario)
)

 

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(5, 'Carlos Dias', 'Av. Lapa, 121', 'Itu', 'SP', 'carlao@gmail.com', '1990-03-31'),
(6, 'Ana Maria da Cunha', 'Av. São Paulo, 388', 'Itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12'),
(7, 'Cláudia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'cregina@gmail.com', '1988-12-04'),
(8, 'Marcela Tatho', 'Rua Bélgica, 43', 'Campinas', 'SP', 'marctatho@gmail.com', '1987-11-09'),
(9, 'Jorge Luís Rodrigues', 'Av. da Saudade, 1989', 'São Paulo', 'SP', 'jorgeluis@yahoo.com.br', '1990-05-05'),
(10, 'Ana Paula Camargo', 'Rua Costa e Silva, 33', 'Jundiaí', 'SP', 'apcamargo@gmail.com', '1991-06-30'),
(11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'ivo@bol.com.br', '1987-04-11'),
(12, 'Carlos Luís de Souza', 'Rua Nicolau Coelho, 22', 'São Paulo', 'SP', 'cls@bol.com.br', '1988-04-30')
GO

 

 

CREATE TABLE Departamento (
    idDepartamento INT NOT NULL,
    nomeDepartamento VARCHAR(50) NULL,
    descricaoDepartamento VARCHAR(100) NULL,
    PRIMARY KEY(idDepartamento)
);

 

INSERT INTO Departamento (idDepartamento, nomeDepartamento, descricaoDepartamento)
VALUES
(1, 'Vendas', 'Departamento de Vendas'),
(2, 'RH', 'Recursos Humanos'),
(3, 'TI', 'Tecnologia da Informação');

 

 

-- Adicione uma coluna de chave estrangeira na tabela Funcionario
ALTER TABLE Funcionario
ADD idDepartamento INT NULL;

 

-- Crie a relação entre Funcionario e Departamento
ALTER TABLE Funcionario
ADD CONSTRAINT FK_Funcionario_Departamento
FOREIGN KEY (idDepartamento)
REFERENCES Departamento(idDepartamento);

 

SELECT DISTINCT
    F.nome AS NomeDoFuncionario,
    D.nomeDepartamento AS NomeDoDepartamento
FROM Funcionario AS F
JOIN Departamento AS D ON F.idDepartamento = D.idDepartamento
WHERE D.nomeDepartamento = 'Vendas'
ORDER BY NomeDoFuncionario ASC;