USE RECEPCAO;
SELECT B.NOME 'PROFISSIONAL', E.NOME 'EQUIPE', F.NOME 'PACIENTE', A.DATA 'DATA DE ATENDIMENTO',
D.DESCRICAO 'PROCEDIMENTO', C.QUANTIDADE FROM siabfacil.atendimento_odonto A
INNER JOIN RECEPCAO.DBO.MEDICOS B ON A.PROF_ID = B.CODIGO
INNER JOIN siabfacil.TIPO_PROCEDIMENTO_ODONTO_PARA_ATENDIMENTO_ODONTO C ON A.ID = C.ID
INNER JOIN siabfacil.TIPO_PROCEDIMENTO_ODONTO D ON C.TIPO_PROCEDIMENTO_ODONTO_ID = D.ID
INNER JOIN RECEPCAO.DBO.WV_EQUIPESIAB E ON B.EQUIPE = E.CODIGO
INNER JOIN INDICADORES.VW_PEP_SIAB F ON A.PESSOA_ID = F.IDPEP
where data between '2016-08-01 00:46:48.267'and'2016-08-31 20:46:48.267'


