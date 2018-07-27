/*Collation - Colação / Agrupamento - Trata-se da codificação dos caracteres em uma ordem padrão - 
A colação usada pelos bancos de dados é configurada durante a instalação do sistema*/

/*Visualizar as opções de agrupamentos disponíveis*/
USE RECEPCAO;
SELECT * FROM fn_helpcollations()

/*Visualizar o esquema de colação utilizado atualmente no servidor*/
USE RECEPCAO;
SELECT SERVERPROPERTY('COLLATION') AS Colacao_usada
SELECT DATABASEPROPERTYEX ('TESTE', collation) AS Colação

/*Alterar esquema de colação de um banco de dados*/
ALTER DATABASE teste
COLLATE Greek_CI_AI

/*Alterar o agrupamento em nível de coluna*/
SELECT * FROM TESTE.DBO.produtos
ORDER BY nomeproduto
COLLATE Icelandic_CI_AI

