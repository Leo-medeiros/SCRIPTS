SET DATEFORMAT DMY
DECLARE @DATAINI DATETIME
DECLARE @DATAFIM DATETIME

SET @DATAINI = '01/04/2015'
SET @DATAFIM = '30/04/2015 23:59:59'

 Select a.Ficha,
        a.dtAtende Data,a.dtAlta,
        Upper(a.Unidade) Unidade,a.Andar,a.Aposento,a.Leito,
        b.Nome,b.Prontuario,b.dtNasc,b.Sexo,
        DatePart(Year,b.dtNasc)Ano,
        e.Nome NomeMed,e.Crm, 
        SubString(f.Nome,1,23) NomeEsp, 
        SubString(g.Nome,1,11) NomeOrigem, 
        h.Nome NomeClinica, 
        DateDiff(Day,a.DtAtende, GetDate()) Dia,
        DateDiff(Day,a.DtAtende, a.DtAlta) DiaAlta,
		RECEPCAO.DBO.CalcularIdadeCompleta(B.DTNASC) Idade
		,Z.Cid_Principal
		
 FROM RECEPCAO.DBO.MOVIMENTOS AS A  
 INNER JOIN RECEPCAO.DBO.PACIENTES AS B ON A.CODPAC = B.CODIGO  
 LEFT OUTER JOIN RECEPCAO.DBO.CONVENIOS AS C ON A.CONVENIO = C.CODIGO  
 LEFT OUTER JOIN RECEPCAO.DBO.MEDICOS AS E ON A.CODMED = E.CODIGO  
 LEFT OUTER JOIN RECEPCAO.DBO.ESPECIALIDADES AS F ON A.ESPECIALIDADE = F.CODIGO  
 LEFT OUTER JOIN RECEPCAO.DBO.CLINICAS AS H ON A.CLINICA = H.CODIGO  
 LEFT OUTER JOIN RECEPCAO.DBO.ORIGENS AS G ON A.ORIGEM = G.CODIGO  
 INNER JOIN RECEPCAO.DBO.MED_ALTA AS Z ON A.FICHA = Z.id_Ficha 
  Where a.Movimento      = 5 
  --AND a.unidade IN ('CLÍNICA CIRÚRGICA','CLÍNICA MÉDICA I') 
  AND a.dtAtende BETWEEN @DATAINI AND @DATAFIM
  AND DateDiff(Day,a.DtAtende, a.DtAlta) IS NOT NULL
  and z.Cid_Principal in ('i64','g122','g55','g830','g040','g049','g810','g819','a059','g570','g042','g700','g373',
  'g048','g579','g569','g831','g832','g833','g051','g729','g589','g729','g723','g820','g619','g629','g622','g620',
  'g834','g610','g839','g823','g709','s099','t093','t119','t139')
ORDER BY a.Unidade, a.dtAtende
