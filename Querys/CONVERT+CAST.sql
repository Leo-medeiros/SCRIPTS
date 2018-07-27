/*Convers�o de dados*/

--CAST
USE MATERIAS;
SELECT 'O PRE�O DO PRODUTO ' + CODPROD + '� DE R$ ' + CAST (SALDOA AS VARCHAR (8)) AS ITEM  FROM TEMPMAPA
WHERE CODIGO IN (7467, 7439, 13112) 

--CONVERT
USE MATERIAS;
SELECT 'O PRE�O DO PRODUTO ' + CODPROD + '� DE R$ ' + CONVERT (VARCHAR (8), SALDOA) AS ITEM FROM TEMPMAPA
WHERE CODIGO IN (7467, 7439, 13112)

--CONVERT DATA
USE RECEPCAO;	
SELECT TOP 1 'O ATENDIMENTO DA FICHA ' + FICHA + 'FOI NO DIA ' + CONVERT (VARCHAR (20), DATAFINALIZA,103)
 FROM PEPMOVIMENTOS  