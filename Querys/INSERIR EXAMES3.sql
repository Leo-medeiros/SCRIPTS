select * from  [exames].[grupo_exames]
select * from  [exames].[item_grupo_exames] 

-- GRUPO
insert into recepcao.exames.grupo_exames (descricao) values ('BIOQUIMICA (SANGUE)');
insert into recepcao.exames.grupo_exames (descricao) values ('SANGUE E URINA 24H');
insert into recepcao.exames.grupo_exames (descricao) values ('URINALISE');
insert into recepcao.exames.grupo_exames (descricao) values ('BIOQUIMICA (URINA 24H)');
insert into recepcao.exames.grupo_exames (descricao) values ('BIOQUIMICA (URINA A. UNICA)');
insert into recepcao.exames.grupo_exames (descricao) values ('FEZES');
insert into recepcao.exames.grupo_exames (descricao) values ('HEMATOLOGIA');
insert into recepcao.exames.grupo_exames (descricao) values ('MICROBIOLOGIA');
insert into recepcao.exames.grupo_exames (descricao) values ('IMUNOLOGIA');
insert into recepcao.exames.grupo_exames (descricao) values ('HORMONIOS MARC. TUMORAIS');
insert into recepcao.exames.grupo_exames (descricao) values ('ESPERMA');
insert into recepcao.exames.grupo_exames (descricao) values ('OUTROS LIQUIDOS');

-- EXAMES NO GRUPO INSERIDO ACIMA
INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'BIOQUIMICA (SANGUE)') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('UREIA', 'CREATININA', 'ACIDO URICO', 'ALBUMINA', 'AMILASE', 'LIPASE', 'PROTEINA C REATIVA', 'CREATINOQUINASE', 'DOSAGEM DE SODIO', 'CLORO', 'CALCIO', 'FOSFORO',
 'MAGNESIO', 'POTASSIO', 'DESIDROGENASE', 'GLICOSE', 'DETERMINACAO DE CURVA GLICEMICA 2 DOSAGENS', 'GLICOSE PÓS PRANDIAL', 'HBA1C HEMOGLOBINA GLICADA', 'COLESTEROL TOTAL',
  'COLESTEROL HDL', 'COLESTEROL LDL', 'TRIGLICERIDIOS', 'ALANINA AMINOTRANSFERASE', 'ASPARTATO AMINOTRANSFERASE', 'BILIRRUBINA', 'FOSFATASE ALCALINA', 'GAMA GLUTAMIL TRANSFERASE',
   'PROTEINAS TOTAL FRACOES', 'FERRO SERICO', 'CAP FIXACAO FERRO', 'TRANSFERRINA', 'FERRITINA', 'DOSAGEM DE VITAMINA B12', 'ACIDO FOLICO')

   -------------------------------------------------------------------------------------

   INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'SANGUE E URINA 24H') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('CLEARENCE CREATININA')

-------------------------------------------------------------------------------------

   INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'URINALISE') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('EAS')

-------------------------------------------------------------------------------------

INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'BIOQUIMICA (URINA 24H)') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('ACIDO URICO', 'CREATININA', 'MICROALBUMINURIA', 'POTASSIO', 'PROTEINA', 'DOSAGEM DE SODIO', 'UREIA')

-------------------------------------------------------------------------------------

INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'BIOQUIMICA (URINA A. UNICA)') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('ACIDO URICO', 'CREATININA', 'MICROALBUMINURIA', 'POTASSIO', 'PROTEINA', 'DOSAGEM DE SODIO', 'UREIA')

-------------------------------------------------------------------------------------

INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'FEZES') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('ELEM ANORMAIS', 'OXIURO FITA GOMADA', 'PARASITOLOGICO', 'PARASITOLOGICO COLETA MULTIPLA', 'PESQUISA DE SANGUE OCULTO NAS FEZES')

-------------------------------------------------------------------------------------

INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'HEMATOLOGIA') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('HEMOGRAMA', 'HEMOSSEDIMENTACAO', 'T DE PROTROMBINA', 'DETERMINACAO DE TEMPO DE TROMBOPLASTINA PARCIAL ATIVADA TTP ATIVADA', 'RETICULOCITOS', 'GRUPO SANGUINEO FATOR RH',
 'COOMBS INDIRETO', 'COOMBS DIRETO', 'TESTE AFOICAMENTO')

 -------------------------------------------------------------------------------------

INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'MICROBIOLOGIA') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('ANTIBIOGRAMA', 'BAAR 1 AMOSTRA', 'BAAR 2 AMOSTRA', 'BAAR 3 AMOSTRA', 'BACTERIOSCOPIA', 'URINOCULTURA', 'CULTURA P GERMES COMUNS', 'CULTURA P BK')


 -------------------------------------------------------------------------------------

INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'IMUNOLOGIA') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('HBS AG', 'ANTI HBS', 'HBe AG', 'ANTI HBe', 'ANTI HBc', 'ANTI HBc IgM', 'ANTI HCV', 'ANTI HAV IgG', 'ANTI HAV IgM', 'CHAGAS', 
'PESQUISA DE ANTICORPOS IGG ANTICITOMEGALOVIRUS', 'PESQUISA DE ANTICORPOS IGM ANTICITOMEGALOVIRUS', 'DENGUE', 'HIV12', 'ANTI HTLV I II', 'ANTI RUBEOLA IGG', 'ANTI RUBEOLA IGM',
 'ANTI TOXOPLASMOSE IGG', 'ANTI TOXOPLASMOSE IGM', 'TESTE DE VDRL P DETECCAO DE SIFILIS', 'ANTI CENTROMERO', 'ANTI DNA NATIVO ANTICORPOS', 'FATOR ANTI NUCLEAR', 'ANTI ESCLERODERMA',
  'FATOR REUMATOIDE', 'FATOR REUMATOIDE', 'ANTI SSB LA AUTO ANTICORPOS', 'ANTI SSA RO AUTO ANTICORPOS', 'ANTI RNP', 'ANTI SM', 'ANTI CCP', 'ANTI MIELOPEROXIDASE', 'ANTI PROTEINASE 3')


   -------------------------------------------------------------------------------------

INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'HORMONIOS MARC. TUMORAIS') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('T3 LIVRE', 'T4 LIVRE', 'HORMONIO TIREOESTIMULANTE', 'ANTI PEROXIDASES', 'ANTI - TIREOGLOBULINA', 'TIREOGLOBULINA', 'ESTRADIOL', 'H FOLICULO ESTIMULANTE', 'H LUTEINIZANTE',
 'DOSAGEM DE PROLACTINA', 'DOSAGEM DE PROGESTERONA', 'DOSAGEM DE TESTOSTERONA', '17OHPROGESTERONA', 'SHBG', 'S DHEA', 'SOMATOMEDINA C (IGF-1) SORO', 'HORMONIO DE CRESCIMENTO', 
 'PARATORMONIO', 'INSULINA', 'INSULINA 120', 'C TELOPEPTIDEO', 'VITAMINA D', 'CORTISOL', 'CORTISOL APOS DEXA', 'ALFAFETOPROTEINA', 'DOSAGEM DE CA 125', 'CA 15.3', 'CA 19.9',
  'ANTIGENO CARCINOEMB', 'PSA TOTAL LIVRE', 'BETA HCG QUANTITATIVO')

     -------------------------------------------------------------------------------------

INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'ESPERMA') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('PESQUISA ESPERMATOZOIDES')

     -------------------------------------------------------------------------------------

INSERT INTO [exames].[item_grupo_exames] ([id_grupo_exames],[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc]) 
SELECT 
	(SELECT TOP 1 ID FROM [exames].[grupo_exames] WHERE DESCRICAO = 'OUTROS LIQUIDOS') [id_grupo_exames], 
	[exame],[unidade],[referencia],[label],[tipo],[table_name],[observacao],[id_usuario],[data_lct],[codproc] 
FROM 
	[exames].[item_grupo_exames] 
WHERE 
EXAME IN ('CITOMETRIA GLOBAL E ESPECIFICA')

