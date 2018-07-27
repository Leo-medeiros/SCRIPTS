USE RECEPCAO;
SELECT A.NomeEquipe AS Equipe, A.NOME AS NomePaciente, A.SEXO AS SexoPaciente, a.idade AS IdadePaciente, A.data_nascimento AS DataNascimentoPaciente, A.CNS AS CnsPaciente, 
B.BAIRRO AS BairroPaciente, b.cep AS CepPaciente,B.RUA AS RuaPaciente, b.tel AS TelefonePaciente FROM Indicadores.vw_pep_siab A
INNER JOIN PACIENTES B ON A.IDPEP = B.CODIGO
WHERE B.RUA LIKE '%linhares%'

