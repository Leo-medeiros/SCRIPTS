SET DATEFORMAT DMY
DECLARE @DATAINI DATETIME
DECLARE @DATAFIM DATETIME

SET @DATAINI = '24/05/2015'
SET @DATAFIM = '30/05/2015 23:59:59'

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
ORDER BY a.Unidade, a.dtAtende
