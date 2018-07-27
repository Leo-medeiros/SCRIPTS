USE RECEPCAO;
SELECT A.NOME, E.data_01, E.ig_01_semanas, E.peso_01_imc, E.pa_01, E.altura_01_uterina, E.apres_01_fetal, E.bcf_01_imc, E.edema_01, E.toque_01_imc, * FROM PACIENTES A 
INNER JOIN pessoa_grupo_de_pessoas B ON A.CODIGO = B.COD_PAC
INNER JOIN PEPMOVIMENTOS C ON A.CODIGO = C.CODPAC
INNER JOIN Prontuario_Gestante D ON C.CODIGO = D.ID_
INNER JOIN Prontuario_Gestante_Pre_Natal E ON D.id_Pront_Gestante_Pre_Natal = E.id_Pront_Gestante_Pre_Natal
INNER JOIN Prontuario_Gestante_Agendamento F ON D.id_Pront_Gestante_Agendamento = F.id_Pront_Gestante_Agendamento
INNER JOIN Prontuario_Gestante_Antecedentes G ON D.id_Pront_Gestante_Antecedentes = G.id_Pront_Gestante_Antecedentes
INNER JOIN Prontuario_Gestante_Avaliacao_Geral H ON D.id_Pront_Gestante_Aval_Geral = H.id_Pront_Gestante_Aval_Geral
INNER JOIN Prontuario_Gestante_Avaliacao_Riscos I ON D.id_Pront_Gestante_Aval_Riscos = I.id_Pront_Gestante_Aval_Riscos
INNER JOIN Prontuario_Gestante_EXAMES J ON D.id_Pront_Gestante_Exames = J.id_Pront_Gestante_Exames
INNER JOIN Prontuario_Gestante_Teste_Rapido K ON D.id_Pront_Gestante_Teste_Rapido = K.id_Pront_Gestante_Teste_Rapido
WHERE B.grupo_de_pessoas_id = 5 AND B.ATIVO = 'N'
