/* Select quando a senha trava na triagem, verificar a senha no select de cima, jogar a senha no de baixo
caso estiver com o campo cancelada = 1 dar um update pra 0 
http://hgppr/tecsec/TSRSManager.dll/datasnap/rest/TServerMethodsClient/Nao_rESP/TRIAGPSI02-1640
*/


select * from tsmanager.dbo.TS_TL_EST
where NM_HOST = 'triagpsi02-1640'


select * from recepcao.dbo.controle_senhas
 where senha = '5235'



