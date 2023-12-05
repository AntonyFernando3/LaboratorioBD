SELECT Nome, Cargo
FROM Clientes

UNION --> Faz a união das duas tabelas para executar as duas

SELECT Nome, Cargo
FROM Funcionarios

ORDER BY tipo 
-------------------------------------------------------------
SELECT Nome, Cargo, 'clientes' AS tipo
FROM Clientes
WHERE Pais='Brasil'

UNION --> Faz a união das duas tabelas para executar as duas

SELECT Nome, Cargo, 'funcionarios' AS tipo
FROM Funcionarios

ORDER BY tipo 