SELECT COUNT(*) FROM Funcionario

SELECT COUNT(DISTINCT cidade) FROM Funcionario 

SELECT SUM(salario) FROM Funcionario

SELECT AVG(salario) FROM Funcionario

SELECT MAX(salario) FROM Funcionario

SELECT MIN(salario) FROM Funcionario

SELECT cidade, COUNT(*) AS QtdadeFuncCidade
FROM Funcionario

SELECT cidade, COUNT(*) AS QtdadeFuncCidade
FROM Funcionario
GROUP BY cidade

SELECT cidade, COUNT(*)
FROM Funcionario
WHERE COUNT(*) > 2
GROUP BY cidade

SELECT cidade, COUNT(*)
FROM Funcionario
GROUP BY cidade
HAVING COUNT(*) > 2

-- EXERCICIOS FUNÇÕES DE AGREGAÇÃO

-- Exercicio 1

SELECT MAX(salario), MIN(salario)
FROM Funcionario
WHERE estado ='SP'

-- Exercicio 2

SELECT SUM(salario)
FROM Funcionario	
WHERE nome LIKE '%Cunha'

-- Exercicio 3

SELECT AVG(salario)
FROM Funcionario
WHERE email LIKE '%yahoo%'

-- Exercicio 4

SELECT COUNT(email)
FROM Funcionario
WHERE email NOT LIKE '%br'

-- Exercicio 5

SELECT MAX(dataNascto)
FROM Funcionario

-- Exercicio 6

SELECT MIN(dataNascto) AS Maior_Nascimento
FROM Funcionario

-- Exercicio 7

SELECT COUNT(cidade) AS Quantidade_de_Valinhos
FROM Funcionario
WHERE cidade = 'Valinhos'

-- Exercicio 8

SELECT SUM(salario)
FROM Funcionario
WHERE cidade = 'Campinas'

-- Exercicio 9

SELECT AVG(salario)
FROM Funcionario
WHERE cidade = 'São Paulo'

-- Exercicio 10

SELECT SUM(salario)
FROM Funcionario
WHERE nome LIKE 'Ana%'

-- Exercicio 11

SELECT COUNT(nome)
FROM Funcionario
WHERE nome LIKE '%Luís%'

-- Exercicio 12

SELECT MAX(salario), MIN(salario)
FROM Funcionario
WHERE endereco LIKE 'Av. São Paulo%'

-- Exercicio 13

SELECT cargo, COUNT(cargo)
FROM Funcionario
GROUP BY cargo 
ORDER by COUNT(cargo) ASC

-- Exercicio 14

SELECT cargo, COUNT(cargo)
FROM Funcionario
GROUP BY cargo
HAVING NOT cargo = 'NULL'

-- Exercicio 15

SELECT cargo, AVG(salario) AS Media_Salarios_cargo
FROM Funcionario
GROUP BY cargo

-- Exercicio 16

SELECT cargo, SUM(salario)
FROM Funcionario
GROUP BY cargo
HAVING SUM(salario) > 3000

-- Exercicio 17

SELECT cargo, SUM(salario)
FROM Funcionario
WHERE estado = 'SP'
GROUP BY cargo

-- Exercicio 18

UPDATE Funcionario
SET ativo = 1
FROM Funcionario
WHERE cidade = 'Jundiaí' OR cidade = 'São Paulo'

-- Exercicio 19

UPDATE Funcionario
SET ativo = 0
FROM Funcionario
WHERE cidade <> 'Jundiaí' AND cidade <> 'São Paulo'

-- Exercicio 20

SELECT ativo, COUNT(ativo)
FROM Funcionario
WHERE ativo = 0 OR ativo = 1
GROUP BY ativo

-- Exercicio 21

SELECT cidade, SUM(salario)
FROM Funcionario
GROUP BY cidade

-- Exercicio 22

SELECT cidade, AVG(salario)
FROM Funcionario
WHERE salario IS NOT NULL
GROUP BY cidade

-- Exercicio 23

SELECT cargo, SUM(salario), AVG(salario)
FROM Funcionario
GROUP BY cargo
HAVING SUM(salario) < 5000

-- Exercicio 24

SELECT cidade, cargo, SUM(salario), AVG(salario)
FROM Funcionario
GROUP BY cidade, cargo


-- SELECT * FROM Funcionario