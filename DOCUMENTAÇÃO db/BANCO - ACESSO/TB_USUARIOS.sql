USE acesso
go

EXEC ACESSO.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','Codigo','Codigo de indentificação do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','login','Login do Usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','CodSetor','Codigo do setor'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','senhadbf','Senha DBF'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','senhanova','Nova senha'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','id_medico','Codigo Identificador do medico'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','id_coren','Codigo Identificador do enfermeiro'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','cracha','Cracha do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','titulo','Titulo do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','NomeCompleto','Nome completo do Usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','Cargo','Cargo do Usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','conselho','Conselho do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','bionexo','Acesso ao bionexo'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','digital','Impressao digital'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','perfil','Perfil modelo'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','validade','Validade do cadastro'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','situacao','Sitaçao do Usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','nconselho','Numero do conselho'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','prescricao','Numero de prescricao'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','atendimento_total','Tem atendimento total sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','id_prof','Identificador do profissional'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','usuariomaster','usuario master sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','senha','Senha do usuario (criptografada)'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','alterado','Alterado Sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','relatorio','Relatorio sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','indicadores','Indicadores sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','senhasql','Senha para o usuario acessar o sistema'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','cad_vacinas','cadastra vacinas sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','mod_vacinas','Modifica vacinas sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','ferramentas','Ferramentas sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','at_grup','At_grupo sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','visualAtendeAnterior','Visualiza atendimento anterior sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','cad_alt_paciente','Cadastra alta para o paciente sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','cpf','cpf do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','equipe','Equipe do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','cbo','CBO do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','datacadastro','data de cadastro do usuairo'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','dataalteracao','data de alteração do Usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','email','email do Usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','cargo1','Codigo de identificação do cargo do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','cns','Cartão do SUS do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','vinc_cc','Vinculo com centro de custo sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','SupervisorCompras','Supervisor de compras sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','email_auto','Email automatico sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','avaliacao_pe_diabete','Avaliação pe siabete sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','perm_exclusao_vacinas','Permite excluir vacina sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','perm_exclusao_exames','Permite excluir exames sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','perm_unificar','Permite unificar sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','perm_exames','Permite exames sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','microarea','Micro area do usuario'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','usu_siab_id','Codigo de usuario no SIAB'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','perm_excluir_mov','Permite excluir movimento sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','perm_fila','Permite fila sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','perm_cadrel','Permite cadastrar relatorio sim ou não'
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','cadrel','Cadastra relatorio '
EXEC acesso.DBO.SP_SET_COLUMN_DESCRIPTION 'dbo', 'usuarios','perm_fila_editar','Permite editar fila sim ou não'










