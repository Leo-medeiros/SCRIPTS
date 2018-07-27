select 
	EQUIPE, count(1) total	
from 
	Accountability.vw_pessoa a
group by EQUIPE
order by EQUIPE


