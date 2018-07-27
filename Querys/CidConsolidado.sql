select c.CID10, c.DESCR as [Descricao], count(mp.CID10) as [Quantidade] from cid as c 
left join MedicoProntuario as mp on (c.ID = mp.CID10) 
left join PepMovimentos as p on (mp.IDMovimento = p.Codigo)
left join Especialidades as esp on (p.Especialidade = esp.Codigo)
left join medicos as med on (p.codmed = med.codigo)  
left join ClassificacaoRisco as cr on (p.Codigo = cr.IDMovimento)
group by c.CID10, c.DESCR having count(mp.CID10) > 0 order by c.DESCR