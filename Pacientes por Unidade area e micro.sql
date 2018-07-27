
SELECT U.Nome Unidade,
(
    SELECT NOME
    FROM DBMec.Sistema.Area A
    WHERE PP.ID_Area = A.ID
) Area,
isnull((
    SELECT m.Nome
    FROM DBMec.Sistema.MicroArea m
    WHERE pp.ID_MicroArea = m.ID  
),'PACIENTES FORA DA MICRO AREA') Micro_area,
       COUNT(pp.ID) Total_de_Pacientes
FROM DBMec.Pessoa.Paciente pp,
     DBMec.Sistema.Unidades u
WHERE pp.ID_UnidadeVinculo = u.ID
GROUP BY U.Nome,
         PP.ID_Area,
         pp.ID_MicroArea;






	   
	  
	  
	




