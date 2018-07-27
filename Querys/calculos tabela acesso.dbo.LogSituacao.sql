
DECLARE @INAT INT, @ATI INT;
SET @INAT =
(
    SELECT COUNT(ID)
    FROM Acesso.DBO.LogSituacao
    WHERE SITUACAO = 'I'
);
SET @ATI =
(
    SELECT COUNT(ID)
    FROM Acesso.DBO.LogSituacao
    WHERE SITUACAO = 'A'
);
SELECT COUNT(ID) [Inativos],
(
    SELECT COUNT(ID)
    FROM Acesso.DBO.LogSituacao
    WHERE SITUACAO = 'A'
) [Ativos],
(
    SELECT CONVERT(VARCHAR(3), (@INAT * 100) / COUNT(id))+'%' [% de Inativos]
    FROM Acesso.DBO.LogSituacao
) [% de Inativos],
(
    SELECT CONVERT(VARCHAR(3), (@ATI * 100) / COUNT(id))+'%'
    FROM Acesso.DBO.LogSituacao
) [% de Ativos],
(
    SELECT COUNT(ID)
    FROM Acesso.DBO.LogSituacao
) [Total]
FROM Acesso.DBO.LogSituacao
WHERE SITUACAO = 'I'; 









