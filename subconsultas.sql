SELECT Nome, Contato, Cargo
FROM Clientes
WHERE CodCli IN (SELECT CodCli
                 FROM Pedidos
                 WHERE DataPed BETWEEN '1996-08-01' AND '1996-08-31')

SELECT DISTINCT Nome, Contato, Cargo
FROM Clientes INNER JOIN Pedidos
ON Clientes.CodCli = Pedidos.CodCli
WHERE DataPed BETWEEN '1996-08-01' AND '1996-08-31'

SELECT CodProd, Descr, MAX(Preco)
FROM Produto

SELECT TOP 2 CodProd, Descr, Preco
FROM Produtos
ORDER BY Preco DESC

SELECT CodProd, Descr, Preco
FROM Produtos
WHERE Preco = (SELECT MAX(Preco)
               FROM Produtos)

SELECT Nome, Sobrenome, Cargo, Salario
FROM Funcionarios
WHERE Cargo LIKE '%Representante de Vendas%'
AND Salario > ALL (SELECT Salario
                   FROM Funcionarios
                   WHERE Cargo LIKE '%Gerente%'
                   OR Cargo LIKE '%Coordenador%')

SELECT Nome
FROM Funcionarios
WHERE EXISTS (SELECT *
FROM Fornecedores
WHERE Pais = 'Brasil')

-- Exercicio 1
SELECT *
FROM Pedidos
WHERE CodCli IN (SELECT CodCli
      FROM Clientes
	  WHERE Pais LIKE 'Alemanha')

-- Exercicio 2
SELECT *
FROM Produtos
WHERE CodCategoria IN (SELECT CodCategoria
                       FROM Categorias
					   WHERE Descr LIKE 'Condimentos')

-- Exercicio 3
SELECT Descr
FROM Produtos
WHERE CodFor NOT IN (SELECT CodFor
                     FROM Fornecedores
					 WHERE Pais LIKE 'EUA')

-- Exercicio 4
SELECT Descr
FROM Produtos
WHERE 

-- Exercicio 5
SELECT CodProd, Descr, Preco
FROM Produtos
WHERE Preco = (SELECT MIN(Preco)
               FROM Produtos)

-- Exercicio 6
SELECT Nome, Salario
FROM Funcionarios
WHERE Salario = (SELECT MAX(Salario)
                 FROM Funcionarios)

-- Exercicio 7
SELECT Nome, Salario
FROM Funcionarios
WHERE Salario = (SELECT MAX(Salario) FROM Funcionarios) OR Salario = (SELECT MIN(Salario) FROM Funcionarios)
ORDER BY Salario ASC

-- Exercicio 8
SELECT CodProd, Descr, Preco
FROM Funcionarios
WHERE Preco > (SELECT AVG)