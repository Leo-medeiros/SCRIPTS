USE RECEPCAO
SET DATEFORMAT DMY
SELECT p.nome [Paciente],
       CONVERT(VARCHAR(10), P.DTNASC, 103) [Data_Nascimento],
       p.cod_familia [Prontuario],
       p.sexo [Sexo],
       p.CARTAOSUS [Cns],
       ISNULL(VW.NomeEquipe, 'FORA DE AREA') [Equipe],
       p.mae [Nome_Mae],
       L.descricao [Local_de_Atendimento],
       CONVERT(DATE, AT.data) [Data_Atendimento],
       M.nome [Profissional]
FROM siabfacil.atendimento_individual AT
     INNER JOIN dbo.PACIENTES P ON(AT.pessoa_id = p.codigo)
     INNER JOIN siabfacil.local_atendimento L ON(AT.local_atendimento_id = L.id)
     LEFT JOIN Indicadores.vw_pep_siab vw ON VW.IDSiab = AT.id
     INNER JOIN dbo.medicos M ON(AT.prof_id = M.CODIGO)



		 
   

 

   