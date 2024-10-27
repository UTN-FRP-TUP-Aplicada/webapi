
USE master;
ALTER DATABASE PersonasDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

DROP DATABASE IF EXISTS PersonasDB;

GO

CREATE DATABASE PersonasDB
 
GO

USE PersonasDB

CREATE TABLE Personas
(
  Id INT PRIMARY KEY IDENTITY(1,1),
  Nombre NVARCHAR(52) NOT NULL,
  DNI INT NOT NULL UNIQUE,
  Fecha_Nacimiento DATE NOT NULL
)

GO

USE PersonasDB

--Iniciando
INSERT INTO Personas (Nombre, DNI, Fecha_Nacimiento)
VALUES
('Luisa', 23423233, '5/23/2001'),
('Norberto', 42327843, '1/26/2000'),
('Graciela', 41923423, '12/1/1998')