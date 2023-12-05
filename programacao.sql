DECLARE @a INT = 1;

DECLARE @a INT, @b INT;
SET @a = 1;
SELECT @b = 2;


DECLARE @a INT = 2, @b INT = 1;
IF @a > @b
BEGIN
PRINT @a;
PRINT 'é maior que';
PRINT @b;
END
ELSE
BEGIN
PRINT @a
PRINT 'não e maior que';
PRINT @b
END
PRINT 'continua...';

SELECT CodFun, Nome, Datanasc,
CASE DATEPART(WEEKDAY, DataNasc)
WHEN 1 THEN 'Domingo'
WHEN 2 THEN 'Segunda-Feira'
WHEN 3 THEN 'Terça-Feira'
WHEN 4 THEN 'QUarta-Feira'
WHEN 5 THEN 'Quinta-Feira'
WHEN 6 THEN 'Sexta-Feira'
WHEN 7 THEN 'Sabado'
END AS dia_da_semana
FROM Funcionarios

DECLARE @dezena INT, @i INT = 0;
WHILE @i < 6
BEGIN
SET @dezena = 60 * RAND()
PRINT @dezena;
SET @i += 1;
END
PRINT 'Boa Sorte!!!';

-- Exercicios 

-- Exercicio 1

DECLARE @i INT = 100;
WHILE @i >= 0
	BEGIN
	PRINT @i;
	SET @i -= 2;
	END

-- Exercicio 2

DECLARE @a INT = 1, @b INT = 2, @c INT = 3;
SELECT @a AS numeros
UNION
SELECT @b
UNION
SELECT @c
ORDER BY numeros DESC;

-- Exercicio 3

DECLARE @num1 INT, @num2 INT;
SET @num1 = ROUND(RAND() * 10, 0);
SET @num2 = ROUND(RAND() * 10, 0);
SELECT
	@num1 AS Num1,
	CASE WHEN @num1 % 2 = 0 THEN 'Par' ELSE 'Ímpar' END AS ParImpar,
	@num2 AS Num2,
	CASE WHEN @num2 % 2 = 0 THEN 'Par' ELSE 'Ímpar' END AS ParImpar;

-- Exercicio 4

DECLARE @quantidade INT = 30, @desconto INT;
IF @quantidade < 10
    SET @desconto = 0;
ELSE IF @quantidade < 30
    SET @desconto = 3;
ELSE IF @quantidade < 50
    SET @desconto = 5;
ELSE IF @quantidade < 70
    SET @desconto = 7;
ELSE
    SET @desconto = 9;

SELECT 
    @quantidade AS quantidade,
    @desconto AS desconto;

-- Exercicio 5

DECLARE @qtd INT = ROUND(RAND() * 10, 0), @i INT = 1;
WHILE @i <= @qtd
	BEGIN
    DECLARE @num INT = ROUND(RAND() * 100, 0);
    IF @num % 2 = 0
        PRINT @num;
		SET @i = @i + 1;
	END

-- Exercicio 6

DECLARE @num INT = 0;
WHILE @num <= 1000
	BEGIN
		IF @num % 10 = 0
	    PRINT @num;
		SET @num = @num + 1;
	END

-- Exercicio 7

SELECT Nome, Pais,
CASE WHEN Pais <> 'Brasil' THEN 'Importação' ELSE 'Exportação' END AS Tipo
FROM Clientes;

-- Exercicio 8

DECLARE @nome VARCHAR(100) = 'matheus';
SELECT @nome AS nome, LEN(@nome) AS qtd_caracteres;
