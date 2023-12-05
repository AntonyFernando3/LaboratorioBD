-- Exercícios

-- Exercicio 1
CREATE VIEW Preco_Baixo AS
SELECT CodProd, Descr, Preco
FROM Produtos 
WHERE Preco < ALL (SELECT AVG(Preco)
				   FROM Produtos)

-- Exercicio 2
SELECT *
FROM Preco_Baixo
WHERE Descr LIKE 'C%'

-- Exercicio 3
CREATE VIEW Funcionarios_Cargo AS
SELECT Cargo, COUNT(*) AS quantidade_cargo
FROM Funcionarios
GROUP BY Cargo

-- Exercicio 4
SELECT Cargo, quantidade_cargo
FROM Funcionarios_Cargo
WHERE quantidade_cargo = (SELECT MAX(quantidade_cargo)
						  FROM Funcionarios_Cargo)
 
-- Exercicio 5
CREATE VIEW Produtos_Categoria AS
SELECT P.Descr AS DescrProd, C.Descr AS DescrCateg
FROM Produtos P INNER JOIN Categorias C
ON P.CodCategoria = C.CodCategoria

-- Exercicio 6
SELECT DescrCateg, COUNT(*) as quantidade_categ
FROM Produtos_Categoria
GROUP BY DescrCateg

-- Exercicio 7
CREATE VIEW Clientes_Resumo AS
SELECT CodCli, Nome, Contato, Pais
FROM Clientes

-- Exercicio 8
CREATE VIEW Pedidos_Resumo_abr97 AS
SELECT NumPed, CodCli, DataEntrega
FROM Pedidos
WHERE MONTH(DataEntrega) = 4 AND YEAR(DataEntrega) = 1997

-- Exercicio 9
SELECT C.Nome
FROM Clientes_Resumo C
WHERE C.CodCli IN (SELECT P.CodCli
				   FROM Pedidos_Resumo_abr97 P)

-- Exercicio 10
CREATE VIEW Clientes_Resumo_W AS
SELECT Nome
FROM Clientes_Resumo
WHERE Nome LIKE 'W%'

-- Exercicio 11
DROP VIEW Clientes_Resumo_W, Pedidos_Resumo_abr97, Preco_Baixo