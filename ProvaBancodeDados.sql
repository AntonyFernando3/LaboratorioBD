-- PROVA DE LABORATÓRIO DE BANCO DE DADOS (26/09/2023)

CREATE TABLE Departamento (
idDepartamento INT NOT NULL,
nomeDepartamento VARCHAR(50) NULL,
descricaoDepartamento VARCHAR(100) NULL,
PRIMARY KEY(idDepartamento)
);

ALTER TABLE Funcionario
ADD idDepartamento INT NULL;

ALTER TABLE Funcionario
ADD CONSTRAINT FK_Funcionario_Departamento
FOREIGN KEY (idDepartamento)
REFERENCES Departamento(idDepartamento);

SELECT *
FROM Funcionario