/*Usuários com hemoglobina glicada maior que 10*/
USE recepcao;
SELECT DISTINCT (b.nome), b.nomeequipe 'Equipe', A.Hemoglobina 'Resultado', a.data 'Data Resultado', 
data_nascimento, mae FROM EXAMES.hba1c_hemoglobina_glicada a
INNER JOIN indicadores.vw_pep_siab b on a.codpac = b.idpep
WHERE
ISNUMERIC(replace(Hemoglobina, ',', '.')) = 1 AND
 convert(float, replace(Hemoglobina, ',', '.')) > 10 --Informar o resultado do exame
ORDER BY b.nomeequipe, b.nome

