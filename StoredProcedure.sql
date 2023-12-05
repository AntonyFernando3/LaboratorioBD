CREATE PROCEDURE BuscaCliente
@nomeBusca VARCHAR(50)
AS
SELECT CodCli, Nome
FROM Clientes
WHERE Nome LIKE '%' + @nomeBusca + '%'

CREATE PROC Insere_DetalhesPed
@NumPed INT,
@CodProd INT,
@Preco MONEY,
@qtde SMALLINT,
@Desconto FLOAT
AS
INSERT INTO DetalhesPed
VALUES
(@NumPed, @CodProd, @Preco, @qtde, @Desconto)

ALTER PROC Insere_DetalhesPed
@NumPed INT,
@CodProd INT,
@Preco MONEY,
@Qtde SMALLINT,
@Desconto FLOAT
AS
IF (@NumPed <> 0) AND (@CodProd <> 0)
INSERT INTO DetalhesPed
VALUES
(@NumPed, @CodProd, @preco, @Qtde, @Desconto)
ELSE
PRINT 'Valores Invalidos'

EXECUTE BuscaCliente 'ana'
EXEC Insere_DetalhesPed 0, 0, 0, 0, 0

DROP PROCEDURE Insere_DetalhesPed

-- Exercicios

-- Exercicio 1

CREATE PROC Busca_Func
@codFun VARCHAR(50)
AS
SELECT Nome, Sobrenome, Cargo
FROM Funcionarios

EXEC Busca_Func '1'

-- Exercicio 2

CREATE PROC Funcionarios_cargo
@cargo VARCHAR(50)
AS
SELECT Nome, Sobrenome, Cargo
FROM Funcionarios
WHERE Cargo = @cargo

EXEC Funcionarios_cargo 'Representante de Vendas'

-- Exercicio 3

CREATE PROC Insere_Forced
@empresa VARCHAR(50),
@contato VARCHAR(50),
@cargo VARCHAR(50),
@endereco VARCHAR(50),
@cidade VARCHAR(50),
@cep VARCHAR(50),
@pais VARCHAR(50)
AS
INSERT INTO Fornecedores
VALUES (@empresa, @contato, @cargo, @endereco, @cidade, @cep, @pais)

EXEC Insere_Forced 'Siemens', '(11) 99023-2722', 'Representante de Vendas', 'Av Jundiai', 'Jundiai', '07990-090', 'Brasil'

-- Exercicio 4

CREATE PROC Exclui_Produto
	@cod INT
AS
	DELETE FROM Produtos
	WHERE @cod = CodProd
EXEC Exclui_Produto 1
-- Exercicio 5CREATE PROCEDURE Aumenta_Salario
    @CodFun INT = NULL,
    @Aumento DECIMAL(5, 2)
AS
	IF @CodFun IS NULL
		BEGIN
		UPDATE Funcionarios
		SET Salario = Salario * (1 + @Aumento / 100);
		END
	ELSE
		BEGIN
			UPDATE Funcionarios
			SET Salario = Salario * (1 + @Aumento / 100)
			WHERE CodFun = @CodFun
		END

EXEC Aumenta_Salario @CodFun = 1, @Aumento = 10
EXEC Aumenta_Salario @Aumento = 5