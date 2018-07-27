

SELECT
(
    SELECT U.NOME
    FROM DBMec.Sistema.Unidades U
    WHERE P.ID_UnidadeVinculo = U.ID
) UNIDADE,
(
    SELECT A.NOME
    FROM DBMec.Sistema.Area A
    WHERE P.ID_Area = A.ID
) AREA,
ISNULL(
      (
          SELECT M.NOME
          FROM DBMec.Sistema.MicroArea M
          WHERE P.ID_MicroArea = M.ID
      ), 'PACIENTE FORA DA MICRO AREA') MICRO_AREA,
ISNULL(
      (
          SELECT UPPER(C.NOME)
          FROM DBMec.Sistema.Cargos C
          WHERE E.ID_Cargo = C.ID
      ), 'PROFISSIONAL NAO IDENTIFICADO') PROFISSIONAL,
DATEPART(Year, E.DataHora) Ano,
CASE DATEPART(MONTH, E.DataHora)
    WHEN 01
    THEN 'JANEIRO'
    WHEN 2
    THEN 'FEVEREIRO'
    WHEN 3
    THEN 'MARÇO'
    WHEN 4
    THEN 'ABRIL'
    WHEN 5
    THEN 'MAIO'
    WHEN 6
    THEN 'JUNHO'
    WHEN 7
    THEN 'JULHO'
    WHEN 8
    THEN 'AGOSTO'
    WHEN 9
    THEN 'SETEMBRO'
    WHEN 10
    THEN 'OUTUBRO'
    WHEN 11
    THEN 'NOVEMBRO'
    WHEN 12
    THEN 'DEZEMBRO'
END 'MÊS',
COUNT(E.ID) TOTAL_DE_PACIENTES_ATENDIDOS
FROM DBMec.Atendimento.Evolucao E
     INNER JOIN DBMec.Pessoa.Paciente P ON(E.ID_Paciente = P.ID)
GROUP BY P.ID_UnidadeVinculo,
         P.ID_Area,
         p.ID_MicroArea,
         E.ID_Cargo
		 ,DATEPART(MONTH, E.DataHora)
		 ,DATEPART(year, E.DataHora)
ORDER BY DATEPART(year, E.DataHora), DATEPART(MONTH, E.DataHora)

         
		