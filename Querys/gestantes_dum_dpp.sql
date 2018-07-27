USE recepcao;
SELECT distinct b.nome 'Nome da Paciente', b.mae 'Nome da Mãe', MAX (e.data_ultima_menstruacao) 'DUM',max(e.data_provavel_parto) 'DPP',
b.cod_familia 'Equipe - Area - Microarea'
FROM pessoa_grupo_de_pessoas a
INNER JOIN pacientes b on a.COD_PAC = b.codigo
INNER JOIN pepmovimentos c on b.codigo = c.codpac
INNER JOIN prontuario_gestante d on d.id_ = c.codigo
INNER JOIN prontuario_gestante_gest_gravi_atual e ON d.id_pront_gestante_gest_gravi_atual = e.id_pront_gestante_gest_gravi_atual
WHERE a.grupo_de_pessoas_id = 5
AND isnull (a.ativo, 'S') <> 'N'
GROUP BY b.nome, b.mae, b.cod_familia


