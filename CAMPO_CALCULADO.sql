/*Campo Calculado - Campo total = preco * quantidade*/
USE teste;
CREATE TABLE produtos (codproduto smallint, nomeproduto varchar (20), preco money, quantidade smallint,
total AS (preco * quantidade))

INSERT INTO produtos VALUES
(1, 'Mouse', 15.00, 2)
INSERT INTO produtos VALUES
(2, 'Teclado', 18.00, 1)
INSERT INTO produtos VALUES
(3, 'Fone', 25.00, 1)
INSERT INTO produtos VALUES
(4, 'Pen Drive', 25.00, 3)
INSERT INTO produtos VALUES
(5, 'SD Card', 29.00, 2)
INSERT INTO produtos VALUES
(1, 'DVD-R', 1.30, 12)

select * from produtos