/*CRIAR PROCEDURE DE CONSULTA*/
ALTER PROCEDURE TESTE2 --CRIAR PROCEDURE DE CONSULTA
@IDVisitante INT = NULL, --COLOCAR O VALOR DEFAULT NULL QUANDO N�O QUISER OBRIGAR INFORMAR TODOS OS VALORES
@Nome VARCHAR (50) = NULL
AS 
BEGIN --INICIO

SELECT IDVISITANTE, NOME, TELEFONE, SEXO, RENDAFAMILIAR, DATAHORA FROM VISITANTE --SELECIONAR OS DADOS
WHERE ((IDVisitante = @IDVisitante) OR (@IDVisitante IS NULL)) 
AND ((Nome LIKE '%' + @Nome + '%') OR (@Nome IS NULL)) --INSERIR CONDI��O, AO EXECUTAR A SP VAI EXIBIR APENAS O ID VISITANTE INFORMADO

END --FIM

EXEC TESTE2 NULL, 'ANTE3' --EXECUTANDO A SP COM O CAMPO ID NULL E A INFORMACAO DO CAMPO NOME

EXEC TESTE2 @NOME = 'VISITANTE2' --EXECUTANDO A SP COM O PARAMETRO NOME APENAS