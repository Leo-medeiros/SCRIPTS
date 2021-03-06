USE RECEPCAO
GO


-- SELECT EXIBINDO OS PACIENTES QUE FORAM AGENDADOS PARA OS PROFISSIONAIS DE ID 167,174 E 175
SELECT  RESOURCEID,* FROM RECEPCAO.DBO.APPOINTMENTS
WHERE day(STARTDATE) = '05'
and MONTH(STARTDATE) = '07'
and YEAR(STARTDATE) = '2018'
AND RESOURCEID IN (167,174,175)

-- SELECT PARA VER SE OS PACIENTES FORAM EXCLUIDOS OU COLOCADOS COMO FALTA NA AGENDA
SELECT * FROM RECEPCAO.DBO.AGENDA_FALTA
WHERE CODMED IN (167,174,175) and
 day(data_agenda) = '05'
and MONTH(data_agenda) = '07'
and YEAR(data_agenda) = '2018'

-- SELECT PARA EXIBIR OS ATENDIMENTOS DOS PROFISISONAIS DE ID 167,174 E 175
SELECT CONVERT(VARCHAR(10), A.dtatende,103) [DATA_ATEND], A.codmed, P.nome [PACIENTE],E.Nome [ESPECIALIDADE],a.Status,
TP.descricao [MOVIMENTO] FROM RECEPCAO.DBO.PepMovimentos A
INNER JOIN RECEPCAO.DBO.PACIENTES P ON A.CODPAC = P.CODIGO
INNER JOIN RECEPCAO.DBO.Especialidades E ON A.Especialidade = E.Codigo
INNER JOIN RECEPCAO.DBO.TipoMovimento TP ON A.movimento = TP.codigo
WHERE CODMED IN (167,174,175) and
 day(dtatende) = '05'
and MONTH(dtatende) = '07'
and YEAR(dtatende) = '2018'
ORDER BY A.codmed


-- 167 ALCINA OLIVEIRA DE S� ENFERMEIRO(A) 
-- 174 ANA CATERINE CHASCO BOTTINO KAMPHORST FISIOTERAPIA
-- 175 THAMIREZ SANTOS SILVA RIBEIRO DO VAL FONOAUDIOLOGIA

/*PACIENTES ATENDIDOS

DAVI LUCAS MENDES FERNANDES
LAURA RANGEL BEKER FERREIRA
THEO RANGEWL BEKER FERREIRA
VITORIA RAMOS CHAVES*/
