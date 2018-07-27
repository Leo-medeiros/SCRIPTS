SET DATEFORMAT DMY;
SELECT DISTINCT
       FORMAT(TempTable.DTHORA,'g') [Agendamento],
       TempTable.Espec [Especialidade],
       TempTable.Prof [Profissional],
       TempTable.[Paciente],
       TempTable.dnv [DNV],
      FORMAT(TempTable.NASC, 'd') [Nascimento],
       TempTable.Cod_Familia,
       TempTable.Observacao [Observacao]
FROM
(
    SELECT DISTINCT
           a.DTHORA  [DTHORA],
           d.Nome  [Espec],
           b.Nome  [Prof],
           c.nome  [Paciente],
           c.dnv  [dnv],
           c.dtnasc  [nasc],
           c.cod_familia  [Cod_Familia],
           a.atendido  [atendido],
           E.DESCRIPTION [Observacao]
    FROM recepcao.dbo.agenda a
         INNER JOIN recepcao.dbo.medicos b ON a.CODMED = b.codigo
         INNER JOIN recepcao.dbo.pacientes c ON a.codpac = c.codigo
         INNER JOIN recepcao.dbo.Especialidades d ON a.CODESP = d.Codigo
         LEFT JOIN RECEPCAO.DBO.APPOINTMENTS E ON A.CODPAC = E.CODPAC
    WHERE a.atendido IS NULL
) AS TempTable;








