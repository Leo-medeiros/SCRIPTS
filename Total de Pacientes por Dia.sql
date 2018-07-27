DECLARE @MES DECIMAL (2,0)
DECLARE @ANO DECIMAL (4,0)

SET @MES = 09
SET @ANO = 2017
SELECT (SELECT NOME FROM DBMec.Sistema.Unidades U
	    WHERE P.ID_UnidadeVinculo = U.ID) UNIDADE,(SELECT NOME FROM DBMec.Sistema.Area A
	    WHERE P.ID_Area = A.ID) AREA,ISNULL((SELECT NOME FROM DBMec.Sistema.MicroArea M 
	    WHERE P.ID_MicroArea = M.ID),'PACIENTE FORA DA MICRO AREA') Micro_area, ISNULL((SELECT UPPER(NOME)  FROM
	    DBMec.Sistema.Cargos C WHERE E.ID_Cargo = C.ID),'PROFISSIONAL NAO IDENTIFICADO') 
	    PROFISSIONAL,SUM(CASE WHEN DATEPART(DAY,E.DATAHORA) = 01 THEN 1 ELSE 0 END) '01',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 02 THEN 1 ELSE 0 END) '02',
	   SUM(CASE WHEN DATEPART(DAY, E.DATAHORA) = 03 THEN 1 ELSE 0 END) '03',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 04 THEN 1 ELSE 0 END) '04',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 05 THEN 1 ELSE 0 END) '05',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 06 THEN 1 ELSE 0 END) '06',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 07 THEN 1 ELSE 0 END) '07',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 08 THEN 1 ELSE 0 END) '08',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 09 THEN 1 ELSE 0 END) '09',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 10 THEN 1 ELSE 0 END) '10',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 11 THEN 1 ELSE 0 END) '11',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 12 THEN 1 ELSE 0 END) '12',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 13 THEN 1 ELSE 0 END) '13',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 14 THEN 1 ELSE 0 END) '14',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 15 THEN 1 ELSE 0 END) '15',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 16 THEN 1 ELSE 0 END) '16',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 17 THEN 1 ELSE 0 END) '17',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 18 THEN 1 ELSE 0 END) '18',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 19 THEN 1 ELSE 0 END) '19',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 20 THEN 1 ELSE 0 END) '20',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 21 THEN 1 ELSE 0 END) '21',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 22 THEN 1 ELSE 0 END) '22',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 23 THEN 1 ELSE 0 END) '23',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 24 THEN 1 ELSE 0 END) '24',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 25 THEN 1 ELSE 0 END) '25',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 26 THEN 1 ELSE 0 END) '26',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 27 THEN 1 ELSE 0 END) '27',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 28 THEN 1 ELSE 0 END) '28',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 29 THEN 1 ELSE 0 END) '29',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 30 THEN 1 ELSE 0 END) '30',
	   SUM(CASE WHEN DATEPART(DAY ,E.DATAHORA) = 31 THEN 1 ELSE 0 END) '31',
	   
COUNT(E.ID) TOTAL_DE_PACIENTES_ATENDIDOS 
FROM DBMec.Atendimento.Evolucao E
INNER JOIN DBMec.Pessoa.Paciente P ON (E.ID_Paciente = P.ID)
WHERE DATEPART(MONTH,E.DataHora) = @MES AND
DATEPART(YEAR,E.DataHora) = @ANO
GROUP BY P.ID_UnidadeVinculo,P.ID_Area,p.ID_MicroArea, E.ID_Cargo





