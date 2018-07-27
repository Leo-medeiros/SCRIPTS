CREATE TABLE pessoas
(
id INT NOT NULL PRIMARY KEY,
nome VARCHAR (100)
);
INSERT INTO pessoas (id, nome)
SELECT codigo, nome FROM pacientes 
GROUP BY nome, codigo
ORDER BY codigo