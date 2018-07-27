USE LM_VEICULOS







SELECT ANO
, [01] AS JANEIRO
         , [02] AS FEVEREIRO
         , [03] AS MARÇO
, [04] AS ABRIL
         , [05] AS MAIO
         , [06] AS JUNHO
         , [07] AS JULHO
        , [08] AS AGOSTO
         , [09] AS SETEMBRO
         , [10] AS OUTUBRO
, [11] AS NOVEMBRO
         , [12] AS DEZEMBRO
FROM TB_TESTE PIVOT (SUM(VALOR) 
FOR MES IN ([01],[02],[03],[04],[05],[06],[07],[08],[09],[10],[11],[12]))P
ORDER BY 1;


alter table tb_teste add valor int


