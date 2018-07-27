SELECT 	DISTINCT 
	C.COD_AREA "EQUIPE",
	C.MICROAREA "MICRO",
	TO_CHAR(C.DATA_ATIVACAO, 'DD/MM/YYYY') "DATA_CADASTRO",
	K.DESCRICAO "TIPO_DE_DOMICILIO",
	CASE WHEN C.ENERGIA_ELETRICA = TRUE THEN 'SIM' ELSE 'NAO' END "EXISTENCIA_DE_ENERGIA_ELETRICA",
	L.DESCRICAO "DESTINO_DO_LIXO",
	M.DESCRICAO "ABASTECIMENTO_DE_AGUA",
	N.DESCRICAO "TRATAMENTO_DE_AGUA",
	O.DESCRICAO "ESGOTAMENTO_SANITARIO"
FROM SIABFACIL.PESSOA B
LEFT JOIN SIABFACIL.FAMILIA C ON B.FAMILIA_ID = C.ID
LEFT JOIN SIABFACIL.PESSOA_LOG F ON F.PESSOA_ID = B.ID
LEFT JOIN SIABFACIL.TIPO_DE_CASA K ON K.ID = C.TIPO_DE_CASA_ID
LEFT JOIN SIABFACIL.DESTINO_DO_LIXO L ON L.ID = C.DESTINO_DO_LIXO_ID
LEFT JOIN SIABFACIL.ORIGEM_DA_AGUA M ON M.ID = C.ORIGEM_DA_AGUA_ID
LEFT JOIN SIABFACIL.TRATAMENTO_DE_AGUA N ON N.ID = C.TRATAMENTO_DE_AGUA_ID
LEFT JOIN SIABFACIL.DESTINO_DO_ESGOTO O ON O.ID = C.DESTINO_DO_ESGOTO_ID
LEFT JOIN SIABFACIL.PLANO_DE_SAUDE Z ON B.PLANO_DE_SAUDE_ID = Z.ID
WHERE C.DATA_DESATIVACAO IS NULL
AND C.COD_AREA IS NOT NULL
