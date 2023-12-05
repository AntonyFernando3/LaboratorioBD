SELECT *
FROM Funcionario

SELECT TOP 3*
FROM Funcionario

SELECT TOP 50 PERCENT *
FROM Funcionario

SELECT TOP 3 nome, dataNascto
FROM Funcionario
ORDER BY dataNascto DESC

-- AUTONUMERAÇÃO

CREATE TABLE cargo(
idCargo INT IDENTITY PRIMARY KEY,
sigla CHAR(2) NOT NULL,
nome VARCHAR(30) NULL UNIQUE
)

-- EXERCICIOS

-- Exercicio 1

SELECT TOP 4 nome
FROM Funcionario

-- Exercicio 2

SELECT TOP 2 nome, dataNascto
FROM Funcionario
WHERE cidade = 'Valinhos'

-- Exercicio 3

SELECT TOP 1 nome, dataNascto
FROM Funcionario
ORDER BY dataNascto ASC

-- Exercicio 4

SELECT TOP 2 cidade, COUNT(idFuncionario)
FROM Funcionario
GROUP BY cidade

-- Exercicio 5

SELECT TOP 2 cargo, COUNT(idFuncionario)
FROM Funcionario
GROUP BY cargo

-- Exercicio 6

SELECT TOP 30 PERCENT *
FROM Funcionario

-- Exercico 7

SELECT TOP 6 nome, email
FROM Funcionario

-- Exercicio 8

SELECT TOP 70 PERCENT idFuncionario, cargo, ativo
FROM Funcionario

-- Exercicio 9

SELECT idFuncionario, salario
FROM Funcionario
WHERE salario IS NOT NULL
ORDER BY salario ASC

-- Exercicio 10

SELECT nome, salario
FROM Funcionario
ORDER BY salario DESC

-- Exercicio 11
SELECT TOP 1 nome, endereco
FROM Funcionario

-- Exercicio 12

SELECT TOP 90 PERCENT *
FROM Funcionario

-- Exercicio 13

SELECT TOP 1 *
FROM Funcionario
WHERE cidade = 'São Paulo'

-- Exercicio 14

SELECT TOP 20 PERCENT nome, endereco, cidade, estado
FROM Funcionario 

-- Exercicio 15

SELECT TOP 2 *
FROM Funcionario
WHERE YEAR(dataNascto) = 1988
-- SELECT *
-- FROM Funcionario