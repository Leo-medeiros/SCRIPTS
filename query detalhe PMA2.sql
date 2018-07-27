USE RECEPCAO
GO
-- detalhes
--Residentes fora da área de abrangência
SET DATEFORMAT DMY
SELECT  B.nome [NOME_PACIENTE], dbo.CalcularIdade(b.dtnasc) [IDADE],B.sexo [SEXO], 
B.mae [NOME_MAE], B.CARTAOSUS [CNS] 
FROM PepMovimentos A
     INNER JOIN PACIENTES B ON(A.codpac = B.codigo)
     INNER JOIN Especialidades C ON(A.Especialidade = C.Codigo)
WHERE A.Status = 'F'
      AND C.Codigo = 323
      AND B.cod_familia = 'FORA DE AREA' 


/* NOME EQP, NOME PESSOA, PRONTUARIO, SEXO, IDADE, NOME MAE, CNS*/