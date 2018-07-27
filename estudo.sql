

Qual cliente possui o pedido com maior número de produtos?



USE estudo

SELECT * FROM pedidos 
-- update pedidos set numpedido = 1, codigocliente=1
where numpedido =2

select * from (
SELECT V.NOMEVENDEDOR,COUNT(P.NUMPEDIDO) [PEDIDO] FROM PEDIDOS P
INNER JOIN VENDEDORES V ON P.CODIGOVENDEDOR = V.CODIGOVENDEDOR
GROUP BY V.NOMEVENDEDOR)a
ORDER BY pedido DESC



SELECT descricaoproduto,qtdestoque FROM PRODUTOS
where qtdestoque < 3





