SET DATEFORMAT DMY;
SELECT DISTINCT
       CONVERT(VARCHAR(10), TempTable.DTHORA, 103)  +' '  + CONVERT(VARCHAR(5), TempTable.DTHORA, 108) Agendamento,
       TempTable.Espec Especialidade,
       TempTable.Prof Profissional,
       TempTable.Paciente,
       TempTable.dnv DNV,
       CONVERT(VARCHAR(10), TempTable.NASC, 103) Nascimento,
       TempTable.Cod_Familia,
       TEMPTABLE.DESCRIPTION Observacao
FROM
(
    SELECT DISTINCT
           a.DTHORA AS DTHORA,
           d.Nome AS Espec,
           b.Nome AS Prof,
           c.nome AS Paciente,
           c.dnv AS dnv,
           c.dtnasc AS nasc,
           c.cod_familia AS Cod_Familia,
           a.atendido AS atendido,
           E.DESCRIPTION
    FROM recepcao.dbo.agenda a
         INNER JOIN recepcao.dbo.medicos b ON a.CODMED = b.codigo
         INNER JOIN recepcao.dbo.pacientes c ON a.codpac = c.codigo
         INNER JOIN recepcao.dbo.Especialidades d ON a.CODESP = d.Codigo
         LEFT JOIN RECEPCAO.DBO.APPOINTMENTS E ON A.CODPAC = E.CODPAC
    WHERE a.atendido IS NULL
) AS TempTable;
