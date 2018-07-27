USE teste;
CREATE TABLE proprietario
(
id_prop INT,
nome VARCHAR (40),
sobrenome VARCHAR (40),
rg VARCHAR (11),
cpf VARCHAR (13),
id_cel INT,
PRIMARY KEY (id_prop),
CONSTRAINT celular_id_cel_fk
FOREIGN KEY (id_cel)
REFERENCES celular (id_cel)
);

INSERT INTO proprietario (id_prop, nome, sobrenome, rg, cpf, id_cel)
VALUES
(2, 'Marilia', 'Alves', '111111111', '31933786825', 1)