SET DATEFORMAT YMD

SELECT GETDATE() 

SELECT nome, DAY(dataNascto) 
FROM Funcionario

SELECT nome, MONTH(dataNascto) 
FROM Funcionario

SELECT nome, YEAR(dataNascto) 
FROM Funcionario

-- DATEDD

SELECT DATEADD (DAY, 5, dataNascto) 
FROM Funcionario

SELECT DATEADD (MONTH, 2, dataNascto) 
FROM Funcionario

SELECT DATEADD (YEAR, 3, dataNascto) 
FROM Funcionario

-- DATEDIFF

SELECT DATEDIFF(DAY, dataNascto, GETDATE()) 
FROM Funcionario

SELECT DATEDIFF(MONTH, dataNascto, GETDATE()) 
FROM Funcionario

SELECT DATEDIFF(YEAR, dataNascto, GETDATE()) 

SELECT DATEDIFF(DAY, '2004-04-19', '2023-12-31')
SELECT DATEDIFF(MONTH, '2004-04-19', GETDATE())
SELECT DATEDIFF(YEAR, '2004-04-19', GETDATE())


SELECT DATENAME(MONTH, dataNascto) 
FROM Funcionario

SELECT DATENAME(WEEKDAY, dataNascto) 
FROM Funcionario

SELECT DATENAME(WEEKDAY, '2004-04-19')


-- Exercicios da Lista Data e Hora

-- Exercicio 1

SELECT nome, DAY(dataNascto) AS dia, MONTH(dataNascto) AS mês, YEAR(dataNascto) AS ano
FROM Funcionario

-- Exercicio 2

SELECT DISTINCT DATENAME(MONTH, dataNascto) AS mês, MONTH(dataNascto) AS NºMês
FROM Funcionario
ORDER BY MONTH(dataNascto)

-- Exercicio 3

SELECT idFuncionario, nome
FROM Funcionario
WHERE dataNascto LIKE '1987%'

-- Exercicio 4

SELECT nome, dataNascto
FROM Funcionario
WHERE dataNascto LIKE '1988-04%'

-- exercicio 5

SELECT nome, DATEADD (MONTH, 2, dataNascto) AS acréscimo
FROM Funcionario

-- Exercicio 6

SELECT nome, DATEDIFF(YEAR, dataNascto, GETDATE()) AS idade
FROM Funcionario

-- Exercicio 7

SELECT idFuncionario, nome, YEAR(dataNascto) AS ano
FROM Funcionario
WHERE MONTH(dataNascto) BETWEEN '03' AND '05' AND YEAR(dataNascto) = 1990

-- Exercicio 8

SELECT nome, YEAR(dataNascto) AS ano
FROM Funcionario
WHERE estado = 'SP'

-- Exercicio 9

SELECT nome, dataNascto
FROM Funcionario
WHERE YEAR(dataNascto) < 1990

-- Exercicio 10

SELECT DISTINCT cidade, estado
FROM Funcionario
WHERE YEAR(dataNascto) > 1989

-- Exercicio 11

SELECT *
FROM Funcionario
WHERE YEAR(dataNascto) = 1988 OR YEAR(dataNascto) = 1990

-- Exercicio 12

SELECT nome
FROM Funcionario
WHERE DAY(dataNascto) = 30

SELECT *
FROM Funcionario