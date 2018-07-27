/*Collation - Cola��o / Agrupamento - Trata-se da codifica��o dos caracteres em uma ordem padr�o - 
A cola��o usada pelos bancos de dados � configurada durante a instala��o do sistema*/

/*Visualizar as op��es de agrupamentos dispon�veis*/
USE RECEPCAO;
SELECT * FROM fn_helpcollations()

/*Visualizar o esquema de cola��o utilizado atualmente no servidor*/
USE RECEPCAO;
SELECT SERVERPROPERTY('COLLATION') AS Colacao_usada
SELECT DATABASEPROPERTYEX ('TESTE', collation) AS Cola��o

/*Alterar esquema de cola��o de um banco de dados*/
ALTER DATABASE teste
COLLATE Greek_CI_AI

/*Alterar o agrupamento em n�vel de coluna*/
SELECT * FROM TESTE.DBO.produtos
ORDER BY nomeproduto
COLLATE Icelandic_CI_AI

