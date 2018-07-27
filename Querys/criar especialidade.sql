select * from recepcao.dbo.PepMovimentos
where  


---- criar nova especialidade ------


------primeiro-- inserir na tabela filtro

--INSERT INTO recepcao.dbo.Filtros(Descricao,Situacao,URLConsulta) VALUES ('Avaliador Físico','A','Prontuarios/Evolucao.aspx')
select * from RECEPCAO.dbo.filtros
--update RECEPCAO.dbo.filtros set situacao='A'
where id=24 --id da Consulta de enfermagem
--Enfermagem/protocolo.aspx


--------segundo-- inserir na tabela especialidade
--------colocar no idfiltro o campo id da tabela filtro

--INSERT INTO RECEPCAO.dbo.Especialidades([Nome],[EXAMESN],[CBOS],[SADT],[CODIGO_PROC],[TIPO_TRIAGEM],[cbosus],[naomedica],[FlagServico],[IDFiltro],[oftalmo],[esf]) VALUES('AVALIADOR FÍSICO','N',NULL,'',NULL,NULL,NULL,'S',NULL,25,NULL,NULL)

select * from RECEPCAO.dbo.Especialidades 
--update RECEPCAO.dbo.Especialidades set  idFiltro=19 --(terapeuta ocupacional)
--delete Recepcao.dbo.especialidades
where codigo in (3370)  --(terapeuta ocupacional)


------terceiro-- inserir vinculo na filtramovimento a especialidade com o tipo movimento
select * from RECEPCAO.dbo.filtraMovimento
--INSERT INTO recepcao.dbo.filtraMovimento (tipomovimento,especialidade) VALUES (6,3373)
--update recepcao.dbo.filtramovimento set tipomovimento=19
where especialidade in (3373)

select * from recepcao.dbo.tipomovimento
--update recepcao.dbo.tipomovimento set vincula_usuario = 'N'
where codigo=19
------quarto--

--inserir nos arquivos fluxo.json e fluxotransferencia.json, o tipo de atendimento codigo especialidade e codigo da espe
--cialidade no tecsec PARA INTEGRAÇÃO.