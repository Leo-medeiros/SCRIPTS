USE DBMEC 

GO

SELECT * FROM Pessoa.Paciente
WHERE NOME IN( 'Almir Barbosa','Manuel Fernandes de Pinho','Orchydea Duarte da Cunha')


SELECT * FROM Atendimento.Alta
WHERE ID_Paciente IN (12868,
15240,
15482)


select * from atendimento.Lancamentos
order by id desc
/*
id 	   Paciente
12868  Almir Barbosa

id   profissional 
544  VIVIANE DE SOUZA SILVA OLIVEIRA

DATA 27/03/2018

ID_CID = S88 
id  Procedimentos  
33  0301010137
44  0301050147

id  Profissional
583 Monica Cristina Bastos Fonseca

data 27/03/2018

id  Procedimentos:
33  0301010137
37  0301050023 */


/*
INSERT INTO atendimento.Lancamentos
           ([ID_Paciente]
           ,[ID_Profissional]
           ,[Data]
           ,[ID_Usuario]
           ,[ID_Procedimento]
           ,[ID_CID]
           ,[QTDE]
           ,[ID_Tratamento]
           ,[ID_LancamentosIdentifi]) VALUES 
		 (12868,583,'2018-03-27',174,33,'S88',1,null,null),
		 (12868,544,'2018-03-27',174,33,'S88',1,null,null),
		 (12868,544,'2018-03-27',174,44,'S88',1,null,null),
		 (12868,583,'2018-03-27',174,37,'S88',1,null,null),
		 (15482,487,'2018-03-05',174,33,'S88',1,null,null),
		 (15482,487,'2018-03-05',174,37,'S88',1,null,null),
		 (15482,487,'2018-03-05',174,183,'S88',1,null,null),
		 (15482,487,'2018-03-05',174,66,'S88',1,null,null),
		 (15482,594,'2018-03-05',174,33,'S88',1,null,null),
		 (15482,594,'2018-03-05',174,44,'S88',1,null,null),
		 (15482,693,'2018-03-05',174,15,'S88',1,null,null),
		 (15482,693,'2018-03-05',174,38,'S88',1,null,null),
		 (15240,482,'2018-03-01',174,15,'G30',1,null,null),
		 (15240,482,'2018-03-01',174,38,'G30',1,null,null),
		 (15240,668,'2018-03-01',174,33,'G30',1,null,null),
		 (15240,668,'2018-03-01',174,44,'G30',1,null,null),
		 (15240,668,'2018-03-01',174,37,'G30',1,null,null),
		 (15240,668,'2018-03-01',174,66,'R262',1,null,null),
		 (15240,544,'2018-03-05',174,33,'G30',1,null,null),
		 (15240,544,'2018-03-05',174,44,'G30',1,null,null),
		 (15240,544,'2018-03-05',174,37,'G30',1,null,null),
		 (15240,544,'2018-03-05',174,182,'G30',4,null,null),
		 (15240,587,'2018-03-05',131,15,'G30',1,null,null),
		 (15240,587,'2018-03-05',131,38,'G30',1,null,null),
		 (15240,482,'2018-03-05',131,15,'G30',1,null,null),
		 (15240,668,'2018-03-05',131,33,'G30',1,null,null),
		 (15240,668,'2018-03-05',131,44,'G30',1,null,null),
		 (15240,668,'2018-03-05',131,37,'G30',1,null,null),
		 (15240,668,'2018-03-05',174,66,'R262',1,null,null),
		 (15240,544,'2018-03-05',174,33,'G30',1,null,null),
		 (15240,544,'2018-03-05',131,44,'G30',1,null,null),
		 (15240,544,'2018-03-05',131,37,'G30',1,null,null),
		 (15240,544,'2018-03-05',131,182,'G30',5,null,null),
		 (15240,587,'2018-03-05',174,38,'G30',1,null,null),
		 (15240,587,'2018-03-05',174,15,'G30',1,null,null) */

		

		 
		
	






		 


		

		 