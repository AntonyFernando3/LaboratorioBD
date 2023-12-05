-- Exercicios 

-- Exercicio 1
CREATE DATABASE Compras
GO

-- Exercicio 2
USE Compras
GO

-- Exercicio 3
CREATE TABLE Cliente (
	idCliente INT IDENTITY PRIMARY KEY,
	nome VARCHAR(50),
	endereco VARCHAR(50),
	cidade VARCHAR(50),
	estado CHAR(2),
)

CREATE TABLE Produto (
	idProduto INT IDENTITY PRIMARY KEY,
	descricao VARCHAR(50),
	preco DECIMAL(5, 2),
	qtde INT
)

CREATE TABLE Compras (
	idCompra INT IDENTITY (1000, 2) PRIMARY KEY,
	idCliente INT,
	idProduto INT,
	data DATETIME,
	qtde INT,
	valor DECIMAL (5, 2),
	FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente) ON DELETE CASCADE,
	FOREIGN KEY (idProduto) REFERENCES Produto (idProduto) ON DELETE CASCADE
)
GO

-- Exercicio 4
ALTER TABLE Cliente
ADD sexo CHAR(1)
GO

-- Exercicio 5
INSERT INTO Cliente
VALUES
('José de Oliveira', 'Av. Jatobá, 34', 'Jundiaí', 'SP', 'F'),
('Maria da Silva', 'Av. Presidente, 12', 'Itatiba', 'MG', 'F'),
('Antônio Carlos', 'R. Florença, 5', 'Jundiaí', 'SP', 'M'),
('Luísa de Souza', 'Av. Jatobá, 45', 'Jundiaí', 'MG', 'F'),
('Carlos de Souza', 'Av. Jatobá, 45', 'Jundiaí', 'SP', 'M')
GO

-- Exercicio 6
INSERT INTO Produto
VALUES
('Lápis', 1.50, 20),
('Borracha', 1.00, 15),
('Caneta', 1.75, 35),
('Compasso', 5.20, 10),
('Régua', 0.75, 16),
('Papel Sulfite', 10.50, 5)
GO

-- Exercicio 7
INSERT INTO Compras
VALUES
(1, 1, '01-12-2010', 2, 1.50),
(2, 1, '03-12-2010', 5, 1.50),
(1, 3, '05-01-2011', 13, 1.75),
(1, 4, '11-01-2011', 1, 5.20),
(3, 2, '16-03-2011', 7, 1.00),
(4, 5, '21-05-2011', 10, 0.75),
(2, 6, '07-06-2011', 2, 10.50),
(5, 3, '07-06-2011', 2, 1.75)
GO

-- Exercicio 8
UPDATE ClienteSET estado = 'SP'-- Exercicio 9SELECT nome, estadoFROM Cliente-- Exercicio 10UPDATE ClienteSET sexo = 'M'WHERE nome = 'José de Oliveira'-- Exercicio 11SELECT descricao, precoFROM Produto-- Exercicio 12DELETE FROM Produto
WHERE descricao = 'Papel Sulfite'-- Exercicio 13UPDATE ProdutoSET qtde = 15WHERE descricao = 'Lápis'-- Exercicio 14SELECT TOP 2 LOWER(descricao) as descrição_minúsculaFROM Produto-- Exercicio 15SELECT SUM(preco)FROM ProdutoWHERE idProduto = 1-- Exercicio 16SELECT AVG(valor)FROM ComprasWHERE idCliente = 1-- Exercicio 17SELECT nomeFROM ClienteWHERE cidade = 'Jundiaí'-- Exercicio 18SELECT idCliente, UPPER(nome) AS nome_maiúsculoFROM ClienteWHERE nome LIKE '%Carlos%'-- Exercicio 19SELECT descricao, preco, qtdeFROM ProdutoWHERE preco > 1.00 AND qtde >= 10-- Exercicio 20SELECT *FROM ClienteORDER BY nome ASC-- Exercicio 21SELECT cidade, COUNT(idCliente) AS quantidade_clientes_por_cidadeFROM ClienteGROUP BY cidadeORDER BY COUNT(idCliente) ASC-- Exercicio 22SELECT SUM(preco) AS soma_preços, AVG(preco) AS média_preçosFROM Produto-- Exercicio 23SELECT MAX(preco) AS maior_preço, MIN(preco) AS menor_preçoFROM Produto-- Exercicio 24SELECT SUM(valor) AS valor_total_compras_2010FROM ComprasWHERE data LIKE '%2010%'-- Exercicio 25SELECT TOP 1 *FROM ComprasWHERE data LIKE '%2011%'ORDER BY data ASC-- Exercicio 26SELECT nomeFROM ClienteWHERE sexo = 'F'-- Exercicio 27SELECT *FROM ComprasWHERE DAY(data) = 7 OR DAY(data) = 11-- Exercicio 28SELECT descricao, preco, preco * 1.10 AS acréscimoFROM Produto-- Exercicio 29SELECT idCliente, SUM(qtde) AS quantidade_comprasFROM ComprasGROUP BY idCliente-- Exercicio 30UPDATE ProdutoSET preco *= 0.90WHERE qtde < 15-- Exercicio 31SELECT idProduto, DAY(data) AS dia_compraFROM Compras-- Exercicio 32SELECT COUNT(idCliente) as sexo_clienteFROM ClienteGROUP BY sexo-- Exercicio 33DELETE FROM Compras
WHERE idCompra = 1000-- Exercicio 34SELECT descricao, POWER(qtde, 2) AS quadrado_quantidadeFROM ProdutoWHERE qtde > 15 AND qtde < 25-- Exercicio 35SELECT SQRT(qtde) as raiz_quadradaFROM ProdutoWHERE descricao LIKE 'C%'-- Exercicio 36SELECT nomeFROM ClienteWHERE endereco LIKE 'Av. Jatobá%'-- Exercicio 37SELECT nome, LEN(nome) AS tamanho_nomeFROM Cliente-- Exercicio 38SELECT idCompra, valor, valor * 0.80 AS descontoFROM ComprasWHERE idCliente = 2
-- Exercicio 39SELECT YEAR(data) AS ano, COUNT(qtde) AS quantidade_compras_por_anoFROM ComprasGROUP BY YEAR(data)-- Exercicio 40SELECT idCompra, DAY(data) AS dia_compra, DATENAME(month, data) AS mês_compra, YEAR(data) AS ano_compraFROM Compras-- Exercicio 41SELECT idProduto, valorFROM ComprasWHERE valor > 7.00-- Exercicio 42DELETE FROM Compras
WHERE idCliente BETWEEN 3 AND 5-- Exercicio 43DROP TABLE ComprasDROP TABLE Produto-- Exercicio 44USE masterDROP DATABASE Compras--SELECT * FROM Cliente--SELECT * FROM Produto--SELECT * FROM Compras