CREATE FUNCTION Maior (@n1 INT, @n2 INT)
RETURNS INT
AS
BEGIN
DECLARE @ret INT;
IF @n1 > @n2
SET @ret = @n1
ELSE
SET @ret = @n2;
RETURN (@ret)
END

ALTER FUNCTION Maior(@n1 INT = 0, @n2 INT = 10)
RETURNS INT
AS
BEGIN
DECLARE @ret INT;
IF @n1 > @n2
SET @ret = @n1
ELSE
SET @ret = @n2;
RETURN (@ret)
END

SELECT dbo.Maior(2 ,1)

SELECT dbo.Maior(3 ,4)

SELECT dbo.Maior(DEFAULT, 5)

SELECT dbo.Maior(5 , DEFAULT)

SELECT dbo.Maior(DEFAULT, DEFAULT)

DROP FUNCTION Maior

-- Exercicios 
