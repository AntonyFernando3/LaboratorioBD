CREATE TRIGGER AlertaInsProduto
ON Produtos
FOR INSERT
AS PRINT('Inserção de um novo produto')

INSERT INTO Produtos VALUES
('Leite A', 1, 1, 20, 50, 0),
('Leite B', 1, 1, 20, 50, 0)

CREATE TRIGGER Atualiza_Qtde
ON detalhesPed
FOR INSERT
AS
UPDATE Produtos SET
Unidades = Unidades - (SELECT [Qtde] FROM Inserted)
WHERE CodProd = (SELECT CodProd FROM inserted)

INSERT INTO DetalhesPed VALUES (10248, 78, 20, 5, 0)

ALTER TRIGGER AlertaInsProduto
ON Produtos
INSERT INTO Produtos VALUES
('Leite D', 1, 1, 20, 50 , 0)


DROP TRIGGER AlertaInsProduto