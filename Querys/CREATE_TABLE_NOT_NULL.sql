USE teste 
go

CREATE TABLE pacientes2
(
primeiro_nome VARCHAR (30) NOT NULL,
sobre_nome VARCHAR (50) NOT NULL,
rg CHAR (11) NOT NULL,
cpf char (13) NOT NULL,
rua VARCHAR (70) NOT NULL,
bairro VARCHAR (50) NOT NULL,
numero CHAR (6) NOT NULL,
municipio CHAR (2) NOT NULL,
estado CHAR (2) NOT NULL,
data_nascimento date NOT NULL,
);

--INSERT INTO pacientes (primeiro_nome,sobre_nome,rg,cpf,rua,bairro,numero,municipio,estado,data_nascimento)
--VALUES
--('Danilo','Biazotto da Costa','492730817','37507650812','Cristovão de Oliveira','Jardim 9 de Julho', '284','SP','SP','13/09/1989')


--SELECT * FROM pacientes
