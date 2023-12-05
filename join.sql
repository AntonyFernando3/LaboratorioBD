SELECT Pedidos. *
FROM Pedidos, Clientes
WHERE Pedidos.Codcli = Clientes.Codcli
AND Clientes.Pais = 'Reino Unido'

SELECT Pedidos. *
FROM Pedidos, Clientes
WHERE Clientes.Pais = 'Reino Unido'

SELECT *
FROM Pedidos

SELECT *
FROM Clientes
WHERE Pais = 'Reino Unido'

SELECT P. *
FROM Pedidos AS P, Clientes AS C
WHERE P.Codcli = C.Codcli
AND C.Pais = 'Reino Unido'

SELECT Produtos.Descr AS produto, Categorias.Descr AS categoria
FROM Produtos INNER JOIN Categorias
ON Produtos.CodCategoria = Categorias.CodCategoria

SELECT Produtos.Descr AS produto, Categorias.Descr AS categoria
FROM Produtos, Categorias
WHERE Produtos.CodCategoria = Categorias.CodCategoria

SELECT DISTINCT C.Descr
FROM Categorias C INNER JOIN Produtos P
ON C.CodCategoria = P.CodCategoria
INNER JOIN Fornecedores F
ON P.CodFor = F.CodFor
WHERE Empresa = 'Exotic Liquids'

SELECT C.Nome, P.NumPed
FROM Clientes C LEFT OUTER JOIN Pedidos P
ON P.CodCli = C.CodCli
WHERE P.DataPed BETWEEN '1996-01-01' AND '1996-12-31'


-- EXERCICIOS JOIN

-- Exercicio 1

SELECT C. *, P.DataPed
FROM Clientes C LEFT OUTER JOIN Pedidos P
ON P.CodCli = C.CodCli
WHERE P.DataPed BETWEEN '1996-01-01' AND '1996-12-31'

-- Exercicio 2

SELECT DISTINCT F. *
FROM Funcionarios F INNER JOIN Pedidos P
ON F.CodFun = P.CodFUn
INNER JOIN Clientes C
ON P.CodCli = C.CodCli 
WHERE C.Nome = 'Around the Horn'

-- Exercicio 3

SELECT P. *
FROM Pedidos P INNER JOIN Clientes C
ON P.CodCli = C.CodCli
WHERE C.Nome = 'Comércio Mineiro'

-- Exercicio 4

SELECT F. *
FROM Funcionarios F INNER JOIN Pedidos P
ON F.CodFun = P.CodFun
WHERE P.DataPed LIKE '1996-09%'

-- Exercicio 5

SELECT P. *, C.Descr
FROM Produtos P LEFT OUTER JOIN Categorias C
ON P.CodCategoria = C.CodCategoria
WHERE C.Descr = 'Laticínios'

-- Exercicio 6

SELECT DISTINCT Prod. *, Ped.NumPed
FROM Produtos Prod INNER JOIN DetalhesPed DetPed
ON Prod.CodProd = DetPed.CodProd
INNER JOIN Pedidos Ped
ON DetPed.NumPed = Ped.NumPed
WHERE Ped.DataPed LIKE '1996-07-08'

-- Exercicio 7

SELECT F.Nome, P.NumPed
FROM Funcionarios F INNER JOIN Pedidos P
ON F.CodFun = P.CodFun
WHERE P.DataPed LIKE '1997-05-01'

-- Exercicio 8

SELECT F.Nome, P. *
FROM Funcionarios F RIGHT OUTER JOIN Pedidos P
ON F.CodFun = P.CodFun
WHERE F.Salario > 10000

-- Exercicio 9

SELECT P.NumPed, C.Nome
FROM Pedidos P INNER JOIN Clientes C
ON P.CodCli = C.CodCli
WHERE P.DataPed LIKE '1997-05%'

-- Exercicio 10

SELECT DISTINCT C.Descr, Prod.Descr
FROM Categorias C INNER JOIN Produtos Prod
ON C.CodCategoria = Prod.CodCategoria
INNER JOIN DetalhesPed DetPed
ON Prod.CodProd = Detped.CodProd
INNER JOIN Pedidos Ped
ON DetPed.NumPed = Ped.NumPed
WHERE Prod.Unidades <= 10 AND Ped.DataPed LIKE '1998%'
ORDER BY C.Descr DESC

-- Exercicio 11

SELECT DetPed. *
FROM DetalhesPed DetPed LEFT OUTER JOIN Pedidos P
ON DetPed.NumPed = P.NumPed
WHERE P.DataEntrega LIKE '1998%'

-- Exercicio 12

SELECT DISTINCT C.Descr, P.descr
FROM Categorias C INNER JOIN Produtos P
ON C.CodCategoria = P.CodCategoria
