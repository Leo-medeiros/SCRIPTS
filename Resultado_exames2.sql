--DESCRI��O DO CHAMADO:                                                                     -                          -
--		Em resultado de exames n�o tem op��o para editar , nem campo de observa��o.			-						   -
--e apos inserir os resultados o mesmo n�o aparece em evolu��es anteriores, dando acesso	-						   -
--ao profissional que esta atendendo o paciente no momento									-						   -																	-                          -
---------------------------------------------------------------------------------------------                          -
--			Dev por: Cesar Rocha		-		Requerido por: Danilo						-						   -
---------------------------------------------------------------------------------------------						   -
--									**SCRIPT EXECUTADOS NOS CLIENTES**												   -
--				NOME:------							DATA:------					POR:----        					   -
--				NOME:------							DATA:------					POR:---- 							   -
--				NOME:------							DATA:------					POR:----							   -
------------------------------------------------------------------------------------------------------------------------

--MODO DE USAR - EM TODOS OS EXAMES DEVE TER ESSAS COLUNAS, NO CASO ABAIXO � S� UM EXEMPLO.
use recepcao
ALTER TABLE [exames].[urocultura]
ADD observacao varchar(1500),
id_usuario int;