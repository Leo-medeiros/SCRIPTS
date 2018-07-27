select D.NomeEquipe,count(distinct c.codpac) Total
from recepcao.[dbo].[Prontuario_Gestante_Gest_Gravi_Atual] a
inner join recepcao.dbo.prontuario_gestante b on a.id_pront_gestante_gest_gravi_atual = b.id_pront_gestante_gest_gravi_atual 
inner join recepcao.dbo.pepmovimentos c on b.id_ = c.codigo
inner join recepcao.indicadores.vw_pep_siab d on d.idpep = c.codpac
where datediff(month, a.data_ultima_menstruacao, c.dtatende) <= 3
AND c.dtatende BETWEEN '2016-09-01 00:13:31.000' AND '2017-09-29 20:13:31.000'
--AND c.dtatende <= DATEADD(DAY, -1, DATEADD(MONTH, 1 ,CONVERT(DATETIME, CONVERT(VARCHAR(6), GETDATE(), 112)+'01 23:59:59')))
GROUP BY D.NomeEquipe