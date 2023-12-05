-- LISTA DE EXERCICIOS WHERE

-- Exercicio 1
SELECT C.Pais, COUNT(Nome) AS quantidade
FROM Clientes C
GROUP BY Pais

-- Exercicio 2
SELECT SUM(P.Preco) AS soma, AVG(P.Preco) AS média, MAX(P.Preco) AS maior, MIN(P.Preco) AS menor
FROM Produtos P

-- Exercicio 3
SELECT C.Pais, COUNT(P.NumPed) AS quantidade
FROM Clientes C, Pedidos P
WHERE C.CodCli = P.CodCli
GROUP BY C.Pais
ORDER BY quantidade DESC

-- Exercici 4
SELECT F.Nome, F.Sobrenome, F.Cargo, F.Salario, F.Salario * 1.10 AS Salário_novo
FROM Funcionarios F

-- Exercicio 5
SELECT SUM(DetPed.Preco) AS soma_pedidos
FROM DetalhesPed DetPed, Pedidos P
WHERE P.DataEntrega LIKE '1997-05%'

-- Exercicio 6
SELECT C.CodCli, C.Nome, C.Pais
FROM Clientes C, Pedidos P
WHERE C.CodCli = P.CodCli AND P.DataPed LIKE '1997-09%'
ORDER BY C.Pais ASC

-- Exercicio 7
SELECT F.Nome, P.*
FROM Funcionarios F, Pedidos P
WHERE F.CodFun = P.CodFun AND F.Nome LIKE 'A%'

-- Exercicio 8
SELECT P.Descr, P.Unidades
FROM Fornecedores F, Produtos P
WHERE F.CodFor = P.CodFor AND F.Empresa = 'Exotic Liquids'

-- Exercicio 9
SELECT DISTINCT P.Descr
FROM Produtos P, DetalhesPed DetPed, Pedidos Ped
WHERE P.CodProd = DetPed.CodProd AND DetPed.NumPed = Ped.NumPed AND DetPed.Qtde >= 50 AND Ped.DataPed LIKE '1997%'
ORDER BY P.Descr ASC

-- Exercicio 10
SELECT DISTINCT C.Descr, P.Descr
FROM Categorias C, Produtos P, DetalhesPed DetPed, Pedidos Ped
WHERE C.CodCategoria = P.CodCategoria AND P.CodProd = DetPed.CodProd AND DetPed.NumPed = Ped.NumPed
AND DetPed.Qtde >= 50 AND Ped.DataPed LIKE '1997%'
ORDER BY C.Descr DESC