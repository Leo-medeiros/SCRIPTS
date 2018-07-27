USE materias;
SELECT operador, MIN (qtde) 'Quantidade Minima', MAX (qtde) 'Quantidade Maxima', SUM (qtde) 'Quantidade Somada', AVG (qtde) 'Quantidade Média', COUNT (qtde) 'Quantidade Linhas'
FROM inventario2
GROUP BY operador


























