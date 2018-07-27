/*Usuários com hemoglobina glicada maior que 8%*/
USE recepcao;
SELECT DISTINCT (b.nome), b.nomeequipe 'Equipe', A.Hemoglobina 'Resultado', a.data 'Data Resultado', 
data_nascimento, mae FROM EXAMES.hba1c_hemoglobina_glicada a
INNER JOIN indicadores.vw_pep_siab b on a.codpac = b.idpep
WHERE Hemoglobina > '8' --Informar o resultado do exame
ORDER BY b.nomeequipe, b.nome


