-- Operadores Aritméticos 3

SELECT 1 + 2
SELECT 1 + 2 AS UmMaisDois 
SELECT 1 + 2 * 3
SELECT (1 + 2) * 3

SELECT salario + 10 FROM Funcionario
SELECT salario * 1.10 FROM Funcionario 
SELECT salario * 0.90 FROM Funcionario 

-- Operadores Relacionais

SELECT * FROM Funcionario WHERE salario > 1100 
SELECT * FROM Funcionario WHERE salario < 110 
SELECT * FROM Funcionario WHERE estado = 'SP' 
SELECT * FROM Funcionario WHERE cidade <> 'Jundiaí' 
SELECT * FROM Funcionario WHERE salario >= 1100 
SELECT * FROM Funcionario WHERE salario <= 1100 

-- Operadores Lógicos

SELECT * FROM Funcionario WHERE cidade = 'Campinas' AND cargo = 'PC' 
SELECT * FROM Funcionario WHERE cidade = 'São Paulo' OR cargo = 'TI' 
SELECT * FROM Funcionario WHERE NOT estado = 'SP' 

-- Operadores Auxiliares

SELECT * FROM Funcionario WHERE cargo IS NULL

SELECT * FROM Funcionario WHERE salario BETWEEN 1000 AND 2000 
SELECT * FROM Funcionario WHERE salario >= 1000 AND salario <= 2000

SELECT * FROM Funcionario WHERE cargo IN ('PC', 'TI') 
SELECT * FROM Funcionario WHERE cargo NOT IN ('PC', 'TI') 

SELECT nome FROM Funcionario WHERE nome LIKE 'CARLOS%'
SELECT nome FROM Funcionario WHERE nome LIKE '%CUNHA' 
SELECT nome FROM Funcionario WHERE nome NOT LIKE '%de%' 
SELECT nome FROM Funcionario WHERE nome LIKE '_o%' 
SELECT nome FROM Funcionario WHERE nome = 'Carlos%' 

-- Exercícios da Lista Operadores

-- Exercicio 1

SELECT nome, salario * 1.30  
FROM Funcionario

-- Exercicio 2

SELECT nome, salario, salario * 1.20 
FROM Funcionario
WHERE cidade = 'Campinas'

-- Exercicio 3

SELECT nome, salario 
FROM Funcionario
WHERE salario > 1500

-- Exercicio 4

SELECT nome, cidade 
FROM Funcionario
WHERE cidade <> 'Valinhos']

-- Exercicio 5

SELECT idFuncionario, cidade 
FROM Funcionario
WHERE cidade = 'Valinhos' OR cidade = 'Campinas'

-- Exercicio 6

SELECT idFuncionario, cargo, salario  
FROM Funcionario
WHERE cidade <> 'São Paulo' AND salario >= 1000

-- Exercicio 7

SELECT nome 
FROM Funcionario
WHERE cargo IS NULL

-- Exercicio 8

SELECT nome, salario 
FROM Funcionario
WHERE salario BETWEEN 500 AND 1500

-- Exercicio 9

SELECT nome, email 
FROM Funcionario
WHERE email LIKE '%hotmail%'

-- Exercicio 10

SELECT nome, email 
FROM Funcionario
WHERE email LIKE '%.br%'

-- Exercicio 11

SELECT nome, email 
FROM Funcionario
WHERE email NOT LIKE '%.com'

-- Exercicio 12

SELECT nome, email 
FROM Funcionario
WHERE nome LIKE '__r%'