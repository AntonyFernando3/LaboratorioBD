-- FUNÇÕES STRING

SELECT ASCII('A') -- Valor que corresponde a tabela

SELECT ASCII('a') -- Valor diferente
 
SELECT CHAR(90) -- Exibe o caractere que está na posição 90 da tabela

SELECT LEN('amor') -- Quantidade de caracteres na palavra entre aspas

SELECT LEFT('predio', 3) -- Exibe as 3 primeiras palavras da palavra entre aspas

SELECT RIGHT('revista', 5) -- Exibe as 5 ultimas palavras entre aspas

SELECT LOWER('CARRO') -- Exibe os caracteres em minusculo

SELECT UPPER('cachorro') -- Exibe os caracteres em maiusculo

SELECT SUBSTRING('panela',2,4) -- Exibe a partir do caractere 2 e 4 caracteres

SELECT REPLACE('guarda-chuva','_','-') --

SELECT LTRIM('faca') -- Retira o espaço a esquerda

SELECT RTRIM('uva ') -- Retira o espaço a direita

-- EXERCICIOS

-- Exercicio 1

SELECT UPPER(nome)
FROM Funcionario

-- Exercicio 2

SELECT DISTINCT LEN(MONTH(dataNascto))
FROM Funcionario

-- Exercicio 3

SELECT REPLACE(nome, ' ','-')
FROM Funcionario

-- Exercicio 4

SELECT LEFT(nome, 3), RIGHT(nome, 3)
FROM Funcionario

-- Exercicio 5

SELECT SQRT(LEN(nome))
FROM Funcionario

-- Exercicio 6

SELECT DISTINCT SUBSTRING(cidade, 3, 5)
FROM Funcionario

-- Exercicio 7

SELECT REPLACE(nome,' ', '')
FROM Funcionario

-- Exercicio 8

SELECT ASCII(idFuncionario)
FROM Funcionario
WHERE cidade = 'Campinas'

-- Exercicio 9
SELECT ASCII(nome)
FROM Funcionario
WHERE DAY(dataNascto) > 20

-- Exercicio 10

SELECT RTRIM (LEFT(cidade, 4))
FROM Funcionario

-- Exercicio 11

SELECT LTRIM(RIGHT(cidade, 6))
FROM Funcionario

-- Exercicio 12

SELECT DISTINCT UPPER(cidade)
FROM Funcionario

-- Mostrar a tabela completa
SELECT *
FROM Funcionario