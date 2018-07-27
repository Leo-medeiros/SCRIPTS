USE bdTeste


IF (OBJECT_ID('tempdb..#Produtos') IS NOT NULL) DROP TABLE #Produtos
CREATE TABLE #Produtos (
    Codigo INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    Ds_Produto VARCHAR(50) NOT NULL,
    Ds_Categoria VARCHAR(50) NOT NULL,
    Preco NUMERIC(18, 2) NOT NULL
)
 
IF (OBJECT_ID('tempdb..#Vendas') IS NOT NULL) DROP TABLE #Vendas
CREATE TABLE #Vendas (
    Codigo INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    Dt_Venda DATETIME NOT NULL,
    Cd_Produto INT NOT NULL
)
 
 
INSERT INTO #Produtos ( Ds_Produto, Ds_Categoria, Preco )
VALUES
    ( 'Processador i7', 'Informática', 1500.00 ),
    ( 'Processador i5', 'Informática', 1000.00 ),
    ( 'Processador i3', 'Informática', 500.00 ),
    ( 'Placa de Vídeo Nvidia', 'Informática', 2000.00 ),
    ( 'Placa de Vídeo Radeon', 'Informática', 1500.00 ),
    ( 'Celular Apple', 'Celulares', 10000.00 ),
    ( 'Celular Samsung', 'Celulares', 2500.00 ),
    ( 'Celular Sony', 'Celulares', 4200.00 ),
    ( 'Celular LG', 'Celulares', 1000.00 ),
    ( 'Cama', 'Utilidades do Lar', 2000.00 ),
    ( 'Toalha', 'Utilidades do Lar', 40.00 ),
    ( 'Lençol', 'Utilidades do Lar', 60.00 ),
    ( 'Cadeira', 'Utilidades do Lar', 200.00 ),
    ( 'Mesa', 'Utilidades do Lar', 1000.00 ),
    ( 'Talheres', 'Utilidades do Lar', 50.00 )
 
    
 
DECLARE @Contador INT = 1, @Total INT = 100
 
WHILE(@Contador <= @Total)
BEGIN
 
    INSERT INTO #Vendas ( Cd_Produto, Dt_Venda )
    SELECT 
        (SELECT TOP 1 Codigo FROM #Produtos ORDER BY NEWID()) AS Cd_Produto,
        DATEADD(DAY, (CAST(RAND() * 364 AS INT)), '2017-01-01') AS Dt_Venda
 
    SET @Contador += 1
 
END


SELECT 
    B.Ds_Categoria,
    B.Ds_Produto,
    COUNT(*) AS Qt_Vendas,
    SUM(B.Preco) AS Vl_Total
FROM 
    #Vendas A
    JOIN #Produtos B ON A.Cd_Produto = B.Codigo
GROUP BY
    B.Ds_Categoria,
    B.Ds_Produto
ORDER BY
    1, 2


   -- rollup traz um total e subtotal
 SELECT 
    ISNULL(B.Ds_Categoria, 'Total') AS Ds_Categoria,
    ISNULL(B.Ds_Produto, 'Subtotal') AS Ds_Produto,
    COUNT(*) AS Qt_Vendas,
    SUM(B.Preco) AS Vl_Total
FROM 
    #Vendas A
    JOIN #Produtos B ON A.Cd_Produto = B.Codigo
GROUP BY
    ROLLUP(B.Ds_Categoria, B.Ds_Produto)





    SELECT
    ISNULL(CONVERT(VARCHAR(10), MONTH(A.Dt_Venda)), 'Total') AS Mes_Venda, 
    ISNULL(B.Ds_Categoria, 'Subtotal') AS Ds_Categoria,
    COUNT(*) AS Qt_Vendas,
    SUM(B.Preco) AS Vl_Total
FROM 
    #Vendas A
    JOIN #Produtos B ON A.Cd_Produto = B.Codigo
GROUP BY
    CUBE(MONTH(A.Dt_Venda), B.Ds_Categoria)
