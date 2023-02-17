CREATE DATABASE AtividadeEncontro2 ;

 USE AtividadeEncontro2;

CREATE TABLE Usuarios(
Id INT PRIMARY KEY IDENTITY,
Email VARCHAR(100) UNIQUE, 
[Password] VARCHAR(50)
);
SELECT * FROM Usuarios;

INSERT INTO Usuarios VALUES ( 'Email@.com', 'Senha01');
SELECT Email, HASHBYTES( 'MD5',[Password]) AS 'Senha com HaSH' FROM Usuarios;
SELECT Email, HASHBYTES( 'MD4',[Password]) AS 'Senha com HaSH' FROM Usuarios WHERE Id =1;
SELECT Email, HASHBYTES( 'SHA',[Password]) AS 'Senha com HaSH' FROM Usuarios WHERE Id =1;
SELECT Email, HASHBYTES( 'SHA1',[Password]) AS 'Senha com HaSH' FROM Usuarios WHERE Id =1;
SELECT Email, HASHBYTES( 'SHA2_256',[Password]) AS 'Senha com HaSH' FROM Usuarios WHERE Id =1;
SELECT Email, HASHBYTES( 'SHA2_512',[Password]) AS 'Senha com HaSH' FROM Usuarios WHERE Id =1;


INSERT INTO Usuarios VALUES ( 'Email2@gmail.com', 'Senha02');
SELECT Email, HASHBYTES( 'MD4',[Password]) AS 'Senha com HaSH' FROM Usuarios WHERE Id =2;

UPDATE Usuarios SET [Password] = 'Senha1234' WHERE Id=2;

SELECT Email, PWDENCRYPT([Password]) AS 'Senha com HaSH' FROM Usuarios;




