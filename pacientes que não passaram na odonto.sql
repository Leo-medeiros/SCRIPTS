USE RECEPCAO;
SET DATEFORMAT DMY;
SELECT   *
FROM
(
    SELECT DISTINCT
		 (SELECT  TOP 1 NOME FROM PACIENTES P WHERE P.CODIGO = C.codpac) [NOME],
           B.PRONTUARIO,
           B.NomeEquipe,
           B.IDADE,
           B.MAE,
         
              CASE A.grupo_de_pessoas_id
               WHEN 3
               THEN 'Hanseníase'
               WHEN 5
               THEN 'Gestante'
               WHEN 6
               THEN 'Hipertensão Arterial'
               WHEN 7
               THEN 'Diabetes'
               WHEN 8
               THEN 'Tuberculose'
               WHEN 10
               THEN 'Deficiente'
               WHEN 1000
               THEN 'Saúde Mental'
               WHEN 1001
               THEN 'Criança'
           END 'LinhasDeCuidado',
           ISNULL(
                 (
                     SELECT TOP 1 CASE
                                      WHEN DCL.ID_DADOS = 4
                                      THEN 'CFC'
                                      WHEN DCL.ID_DADOS = 5
                                      THEN 'BF'
                                      ELSE 'Não é Beneficiário'
                                  END PROGRAMA
                     FROM DADOS_COMPLEMENTARES_LCT DCL
                          INNER JOIN DADOS_COMPLEMENTARES DC ON DCL.ID_DADOS = DC.ID
                     WHERE DCL.id_codpac = B.IDPEP
                 ), 'Não é Beneficiário') [BF_CFC]
    FROM PESSOA_GRUPO_DE_PESSOAS A
         INNER JOIN INDICADORES.VW_PEP_SIAB B ON A.COD_PAC = B.IDPEP
         INNER JOIN PEPMOVIMENTOS C ON A.COD_PAC = C.CODPAC
         INNER JOIN MEDICOS D ON C.CODMED = D.CODIGO
    WHERE A.ATIVO = 'S' 
	   AND C.ESPECIALIDADE NOT IN(1362, 3372)
	   AND C.codpac NOT IN (SELECT PESSOA_ID FROM siabfacil.atendimento_odonto)
) AS TAB;






