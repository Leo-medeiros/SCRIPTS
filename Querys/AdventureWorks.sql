USE AdventureWorks2014
GO

--SELECT NA TABELA FUNCIONARIOS DO SCHEMA RECURSOS HUMANOS
SELECT * FROM HumanResources.Employee

--SELECT NA TABELA FUNCIONARIOS DO SCHEMA RECURSOS HUMANOS SELECIONANDO AS COLUNAS IdFuncionario, Cargo e Sexo onde IdFuncionario menor ou igual a 50
SELECT BusinessEntityID AS IdFuncionario, JobTitle AS Cargo, Gender AS Sexo FROM HumanResources.Employee
WHERE BusinessEntityID <=50

/*SELECT NA TABELA FUNCIONARIOS DO SCHEMA RECURSOS HUMANOS SELECIONANDO AS COLUNAS Cargo, Sexo, DataContratacao e Idfuncionario onde Cargo = Engenheiro de Design, Sexo = F e 
data de contratacao maior que 1º de janeiro de 2000*/
SELECT JobTitle AS Cargo, Gender AS Sexo, HireDate AS DataContratacao, BusinessEntityID AS IdFuncionario FROM HumanResources.Employee
WHERE JobTitle  = 'Design Engineer'
AND Gender = 'F' 
AND HireDate >= '2000-JAN-01'

--SELECT NA TABELA FUNCIONARIOS DO SCHEMA RECURSOS HUMANOS SELECIONANDO AS COLUNAS Cargo, Horasferias e IdFuncionario onde HorasFerias maior que 80 ou IdFuncionario menor ou = 50
SELECT JobTitle AS Cargo, VacationHours AS HorasFerias, BusinessEntityID AS IdFuncionario FROM HumanResources.Employee
WHERE VacationHours  >80
OR BusinessEntityID <=50

--SELECT NA TABELA FUNCIONARIOS DO SCHEMA RECURSOS HUMANOS SELECIONANDO AS COLUNAS Cargo, Horasferias e IdFuncionario onde HorasFerias esteja entre 75 e 100 ordenado por HorasFerias
SELECT JobTitle AS Cargo, VacationHours AS HorasFerias, BusinessEntityID AS IdFuncionario FROM HumanResources.Employee
WHERE VacationHours  BETWEEN '75' AND '100'
ORDER BY VacationHours

/*SELECT NA TABELA FUNCIONARIOS DO SCHEMA RECURSOS HUMANOS SELECIONANDO AS COLUNAS Cargo, Horasferias e IdFuncionario onde HorasFerias esteja entre 75 e 100 ordenado por HorasFerias
Descendente*/
SELECT JobTitle AS Cargo, VacationHours AS HorasFerias, BusinessEntityID AS IdFuncionario FROM HumanResources.Employee
WHERE VacationHours  BETWEEN '75' AND '100'
ORDER BY VacationHours DESC

--SELECT NA TABELA FUNCIONARIOS DO SCHEMA RECURSOS HUMANOS SELECIONANDO AS COLUNAS IdFuncionario, Cargo e Sexo onde o Sexo não seja = M
SELECT BusinessEntityID AS IdFuncionario, JobTitle AS Cargo, Gender AS Sexo FROM HumanResources.Employee
WHERE NOT Gender = 'M'

/*SELECT NA TABELA FUNCIONARIOS DO SCHEMA RECURSOS HUMANOS SELECIONANDO AS COLUNAS IdFuncionario, Sexo, DataContratacao e Cargo onde o Cargo seja = Engenheiro de Design Unindo com 
a mesma tabela onde a DataContratacao seja entre 01/01/2005 e 31/12/2005*/
SELECT BusinessEntityID AS IdFuncionario, Gender AS Sexo, HireDate AS DataContratacao, JobTitle AS Cargo FROM HumanResources.Employee
WHERE JobTitle  = 'Design Engineer'
UNION 
SELECT BusinessEntityID AS IdFuncionario, Gender AS Sexo, HireDate AS DataContratacao, JobTitle AS Cargo FROM HumanResources.Employee
WHERE HireDate BETWEEN '2005-01-01' AND '2005-12-31'

--SELECT NA TABLE PRODUTO DO SCHEMA PRODUCAO SELECIONANDO A COLUNA IdProduto onde os dados da coluna IdProduto da tabela a esquerda não foram encontrados na tabela da direita
SELECT ProductId FROM Production.Product
EXCEPT 
SELECT ProductId FROM Production.WorkOrder 

SELECT ProductId FROM Production.Product
INTERSECT 
SELECT ProductId FROM Production.WorkOrder 

--SELECT NA TABELA DetalhesOrdemVenda com distinct no Pedidos, media do PrecoUnitario, minimo de pedido e maximo de pedido - Funções Agregadas
SELECT COUNT ( DISTINCT SalesOrderId) AS PedidosUnicos,
AVG (UnitPrice) AS PrecoUnitario_Medio,
MIN (OrderQty) AS Pedido_Minimo,
MAX (LineTotal) AS Total_Maximo
FROM Sales.SalesOrderDetail;

--SELECT NA TABELA UnidadeDeMedidas do SCHEMA Produtos
SELECT UnitMeasureCode AS CodigoDeMedidaDaUnidade, Name AS Nome, ModifiedDate AS DataDeModificacao FROM Production.UnitMeasure

--INSERINDO DADOS NA TABELA UnidadeDeMedidas no SCHEMA Producao
INSERT INTO Production.UnitMeasure
VALUES (N'FT', N'Feet', GetDate ())

--INSERINDO MAIS DE UMA LINHA NA TABELA UnidadeMedidas no SCHEMA Producao
INSERT INTO Production.UnitMeasure
VALUES (N'FT2', N'Square Feet', '20080923'),
       (N'Y', N'Yards', '20080923'),
	   (N'Y3', N'Cubic Yards', '20080923')

--UPDATE NA TABELA PessoasVendas do Schema Pessoa, atualizando os campos Bonus para 6000, PctComissao para .10 e QuotaVenda para NULL
SELECT * FROM Sales.SalesPerson
--UPDATE Sales.SalesPerson SET Bonus = 6000, CommissionPct = .10, SalesQuota = NULL
WHERE Sales.SalesPerson.BusinessEntityId = 289

--DELETANDO DADOS DA TABELA MedidaUnidade, do SCHEMA Produto onde NomeMedida = 'Feet'
SELECT * DELETE FROM Production.UnitMeasure
WHERE Production.UnitMeasure.Name = 'Feet'

/*CRIANDO UMA TRIGGER DML(GATILHO) INSERINDO SUCESSO - Está dizendo que sempre que algo for inserido na unidade de medida, chama-se levantar um erro - só exibe uma mensagem 
dizendo que foi acrescentado com sucesso*/
CREATE TRIGGER InsertSuccess
ON Production.UnitMeasure
AFTER UPDATE
AS RAISERROR ('UnitMeasure Successfully Added', 16, 10);
GO

SELECT * FROM Production.UnitMeasure
--UPDATE Production.UnitMeasure SET NAME = 'BOXES2'
WHERE Name = 'Boxes2'

/*Temos 3 níveis de segurança no SQL Server - Securables, que são o servidor, banco de dados e os objetos, os procedimentos e as tabelas. Principals, que são os indivíduos ou grupos.
 Permissions, controla os tipos de permissões para determinados usuários*/