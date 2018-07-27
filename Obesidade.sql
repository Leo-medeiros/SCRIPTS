select distinct (SELECT TOP 1 NOME FROM RECEPCAO.DBO.PEP_Parametros) UNIDADE, (SELECT TOP 1 CNES FROM RECEPCAO.DBO.PEP_Parametros) CNES, A.NOME, A.CPF, A.CNS, 
CONVERT(VARCHAR(10),DATA_NASCIMENTO,103) DATA_NASC, A.mae, 
  isnull((select TOP 1 cid10 from recepcao.dbo.PepMovimentos b 
       inner join recepcao.dbo.PepMovimentos_CID c on b.codigo=c.id_PepMovimentos
       inner join recepcao.dbo.cid d on c.id_cid=d.ID where B.CODPAC=A.IDPEP AND d.CID10 in ('E66','E660','E661','E662','E668','E669')),'') CID10,
       isnull((select TOP 1 D.Codigo from recepcao.dbo.PepMovimentos b 
       inner join recepcao.dbo.PepMovimentos_Ciaps c on b.codigo=c.id_PepMovimentos
       inner join recepcao.dbo.Ciap d on c.id_ciap=d.ID where B.CODPAC=A.IDPEP AND d.Codigo in ('T82')),'') CIAP,
     (select top 1 round(CONVERT(float,peso)/(convert(float,Altura)*convert(float,altura)),2) from recepcao.dbo.historicoafericoes x
        inner join recepcao.dbo.pepmovimentos m on x.IDMov = m.codigo 
        where m.codpac=a.idpep and x.peso is not NULL and x.altura >0 
        order by data desc) IMC
from recepcao.indicadores.vw_pep_siab a
left join recepcao.dbo.pepmovimentos b on a.IDPep=b.codpac
left join recepcao.dbo.pepmovimentos_cid c on b.codigo=c.id_PepMovimentos and c.id_cid in (2222,2223,2224,2225,2226,2227)
left join recepcao.dbo.pepmovimentos_ciaps d on b.codigo=c.id_PepMovimentos and d.id_ciap=493
where (select top 1 round(CONVERT(float,peso)/(convert(float,Altura)*convert(float,altura)),2) from recepcao.dbo.historicoafericoes x
        inner join recepcao.dbo.pepmovimentos m on x.IDMov = m.codigo 
        where m.codpac=a.idpep and x.peso is not NULL and x.altura >0 
        order by data desc)>30