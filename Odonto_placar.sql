/*Quantitativo de procedimentos exodontia (Extração)*/
USE recepcao

SELECT COUNT(*) FROM siabfacil.atendimento_odonto a
INNER JOIN siabfacil.tipo_procedimento_odonto_para_atendimento_odonto b on a.id = b.atendimento_odonto_id
WHERE b.tipo_procedimento_odonto_id in (11,12)
AND a.data Between '2016-10-01 00:43:13.637'AND'2016-10-31 23:43:13.637'

/*Atividades em grupo Odonto*/
SELECT count(*) FROM atividade_grupo a
INNER JOIN acesso.dbo.usuarios b ON a.id_prof_resp = b.codigo
INNER JOIN medicos c on b.id_medico = c.codigo
INNER JOIN cbo d on c.cbo1 = d.codigo
WHERE a.data_atividade Between '2016-10-01 00:00:00.000'AND'2016-12-31 00:00:00.000'
AND d.codigo in (223204, 223208, 223212, 223216, 223220, 223224, 223228, 23232, 223236, 
223240, 223244, 223248, 223252, 223256, 223260, 223264, 223268, 223272, 223276, 223280,
 223284, 223288, 223293, '2232B1', 223244, 223252, 223268, 322405, 322415, 322425, 322430)