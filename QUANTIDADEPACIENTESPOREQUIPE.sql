select 
	EQUIPE, count(1) total,
	--(select count(1) from Accountability.vw_pessoa aa where a.equipe = aa.equipe and (cpf is not null or dnv is not null)) total_dnv_c,
	convert(numeric(6,2), ((select count(1) from Accountability.vw_pessoa aa where a.equipe = aa.equipe and (cpf is not null or dnv is not null)) * 100) / count(1)) perc_dnv_c,
	convert(numeric(6,2), ((select count(1) from Accountability.vw_pessoa aa where a.equipe = aa.equipe and cd_raca is not null) * 100) / count(1)) perc_raca
from 
	Accountability.vw_pessoa a
group by EQUIPE
order by EQUIPE

