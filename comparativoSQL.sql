-- 16

-- Variáveis
SET @a := 1;
SET @a := 1, @b := 2;

-- IF / ELSE
DELIMITER //
CREATE PROCEDURE CompareAndPrint()
BEGIN
    DECLARE a INT DEFAULT 2;
    DECLARE b INT DEFAULT 1;

    IF a > b THEN
        SELECT a AS result, 'é maior que' AS message, b AS value;
    ELSE
        SELECT a AS result, 'não é maior que' AS message, b AS value;
    END IF;

    SELECT 'continua...' AS message;
END //
DELIMITER ;

CALL CompareAndPrint();

-- CASE
SELECT CodFun, Nome, DataNasc,
    CASE DAYOFWEEK(DataNasc)
        WHEN 1 THEN 'Domingo'
        WHEN 2 THEN 'Segunda-feira'
        WHEN 3 THEN 'Terça-feira'
        WHEN 4 THEN 'Quarta-feira'
        WHEN 5 THEN 'Quinta-feira'
        WHEN 6 THEN 'Sexta-feira'
        WHEN 7 THEN 'Sábado'
    END AS dia_da_semana
FROM Funcionarios;

-- WHILE
DELIMITER //
CREATE PROCEDURE GenerateRandomNumbers()
BEGIN
    DECLARE dezena INT;
    DECLARE i INT DEFAULT 0;

    WHILE i < 6 DO
        SET dezena = FLOOR(60 * RAND());
        SELECT dezena;
        SET i = i + 1;
    END WHILE;

    SELECT 'Boa Sorte !!!' AS message;
END //
DELIMITER ;

CALL GenerateRandomNumbers();

-- 17

-- Criar Procedure
DELIMITER //

CREATE PROCEDURE BuscaCliente (IN nomeBusca VARCHAR(50))
BEGIN
    SELECT CodCli, Nome
    FROM Clientes
    WHERE Nome LIKE CONCAT('%', nomeBusca, '%');
END //

DELIMITER ;

-- Criar Procedure
DELIMITER //

CREATE PROCEDURE Insere_DetalhesPed (
    IN p_NumPed INT,
    IN p_CodProd INT,
    IN p_Preco DECIMAL(19,4),
    IN p_Qtde SMALLINT,
    IN p_Desconto FLOAT
)
BEGIN
    INSERT INTO DetalhesPed (NumPed, CodProd, Preco, Qtde, Desconto)
    VALUES (p_NumPed, p_CodProd, p_Preco, p_Qtde, p_Desconto);
END //

DELIMITER ;

-- Chamar Procedure
CALL BuscaCliente('ana');
CALL Insere_DetalhesPed(0, 0, 0, 0, 0);

-- Alterar Procedure (apagar procedure para criar uma nova atualizada)
DROP PROCEDURE IF EXISTS Insere_DetalhesPed;

DELIMITER //

CREATE PROCEDURE Insere_DetalhesPed (
    IN p_NumPed INT,
    IN p_CodProd INT,
    IN p_Preco DECIMAL(19,4),
    IN p_Qtde SMALLINT,
    IN p_Desconto FLOAT
)
BEGIN
    IF (p_NumPed <> 0) AND (p_CodProd <> 0) THEN
        INSERT INTO DetalhesPed (NumPed, CodProd, Preco, Qtde, Desconto)
        VALUES (p_NumPed, p_CodProd, p_Preco, p_Qtde, p_Desconto);
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Valores inválidos';
    END IF;
END //

DELIMITER ;

-- Apagar Procedure
DROP PROCEDURE IF EXISTS Insere_DetalhesPed;

-- 18

-- Criar Function
DELIMITER //

CREATE FUNCTION Maior (n1 INT, n2 INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE ret INT;
    
    IF n1 > n2 THEN
        SET ret = n1;
    ELSE
        SET ret = n2;
    END IF;
    
    RETURN ret;
END //

DELIMITER ;

-- Chamar Function
SELECT Maior(2, 1);
SELECT Maior(3, 4);
SELECT Maior(NULL, 5);
SELECT Maior(5, NULL);
SELECT Maior(NULL, NULL);

-- Alterar Function (apagar function para criar uma nova atualizada)
DROP FUNCTION IF EXISTS Maior;

DELIMITER //

CREATE FUNCTION Maior(n1 INT, n2 INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE ret INT;
    
    IF n1 > n2 THEN
        SET ret = n1;
    ELSE
        SET ret = n2;
    END IF;
    
    RETURN ret;
END //

DELIMITER ;

-- Apagar Function
DROP FUNCTION IF EXISTS Maior;

-- 19

-- Criar Trigger
DELIMITER //

CREATE TRIGGER AlertaInsProduto 
AFTER INSERT ON Produtos 
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Inserção de um novo produto.';
END;

DELIMITER ;

INSERT INTO Produtos(Descr,CodFor,CodCategoria,Preco,Unidades,Descontinuado)
VALUES
('Leite A', 1, 1, 20, 50, 0),
('Leite B', 1, 1, 20, 50, 0);

-- Criar Trigger
DELIMITER //

CREATE TRIGGER Atualiza_Qtde
AFTER INSERT ON detalhesPed
FOR EACH ROW
BEGIN
    UPDATE Produtos 
    SET Unidades = Unidades - NEW.Qtde
    WHERE CodProd = NEW.CodProd;
END;

DELIMITER ;

INSERT INTO DetalhesPed(NumPed,CodProd,Preco,Qtde,Desconto)
VALUES (10248, 78, 20, 5, 0);

-- Alterar Trigger (apagar trigger para criar um novo atualizado)
DROP TRIGGER IF EXISTS AlertaInsProduto;

DELIMITER //

CREATE TRIGGER AlertaInsProduto 
AFTER INSERT ON Produtos 
FOR EACH ROW
BEGIN
    SELECT 'Novo produto inserido: ' AS mensagem, NEW.Descr AS produto;
END;

DELIMITER ;

INSERT INTO Produtos(Descr,CodFor,CodCategoria,Preco,Unidades,Descontinuado)
VALUES ('Leite C', 1, 1, 20, 50, 0);

-- Desabilitar/Habilitar Trigger
SET @disable_trigger = 1;

DELIMITER //

CREATE TRIGGER AlertaInsProduto
BEFORE INSERT ON Produtos
FOR EACH ROW
BEGIN
    IF @disable_trigger = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Novo Produto Inserido !!!';
    END IF;
END;

DELIMITER ;

SET @disable_trigger = 1;
INSERT INTO Produtos(Descr,CodFor,CodCategoria,Preco,Unidades,Descontinuado) VALUES ('Leite D', 1, 1, 20, 50, 0);
SET @disable_trigger = 0;
INSERT INTO Produtos(Descr,CodFor,CodCategoria,Preco,Unidades,Descontinuado) VALUES ('Leite E', 1, 1, 20, 50, 0);

-- Apagar Trigger
DROP TRIGGER IF EXISTS AlertaInsProduto;