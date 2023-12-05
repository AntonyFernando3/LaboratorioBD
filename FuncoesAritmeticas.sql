-- FUNÇÔES ARITMÉTICAS 

SELECT ABS(-10) -- Retira o negativo

SELECT POWER(2, 3) -- Potenciação

SELECT SQRT(25) -- Raiz quadrada

SELECT ROUND(7.56, 1) -- Arredondar 1 casa

SELECT LOG(4) -- Logaritmo

SELECT PI() -- Valor de PI

SELECT ROUND(LOG(SQRT(9)),3) 

SELECT PI() / 3 -- Valor de PI divido por 3

SELECT ROUND(PI(),2) -- Arredondar PI para 2 casas

SELECT ROUND(salario,0)
FROM Funcionario

-- EXERCICIOS 

-- Exercicio 1

SELECT nome, salario + PI()
FROM Funcionario

-- Exercicio 2

SELECT SQRT(DAY(dataNascto))
FROM Funcionario

-- Exercicio 3

SELECT LOG(MONTH(dataNascto))
FROM Funcionario
WHERE dataNascto LIKE '1990%'

-- Exercicio 4

SELECT nome, DAY(dataNascto)
FROM Funcionario
WHERE POWER(DAY(dataNascto), 3) >= 1000

-- Exercicio 5

SELECT salario * 1.15
FROM Funcionario

-- Exercicio 6

SELECT ABS(1500 - salario)
FROM Funcionario

-- Exercicio 7

SELECT idFuncionario, SQRT(idFuncionario)
FROM Funcionario
WHERE dataNascto < '1989-04-01'

-- Exercicio 8

SELECT nome, ROUND(salario * 0.65, 0)
FROM Funcionario

-- Exercicio 9

SELECT LOG(idFuncionario)
FROM Funcionario

-- Exercicio 10

SELECT SQRT(idFuncionario)
FROM Funcionario

-- Exercicio 11

SELECT POWER(idFuncionario, 2)
FROM Funcionario

-- Exercicio 12

SELECT ABS(idFuncionario - 10)
FROM Funcionario
ORDER BY nome ASC

-- Mostrar a tabela completa
SELECT *
FROM Funcionario