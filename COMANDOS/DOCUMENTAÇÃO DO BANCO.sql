USE DBMec
go

EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','ID','Codigo do Usu�rio'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','Login','Login do Usu�rio'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','ID_Profissional','C�digo do profisisonal, relacionamento com o campo ID da tabela pessoa.profissional'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','Ativo','Exibe se o esta ativo (1 est� ativo, 0 est� inativo)'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','senha','Exibe a senha criptografada do usu�rio'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','Nome','Exibe o nome do usu�rio'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','CPF','Exibe o CPF do usu�rio'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','dataNascimento','Exibe a data de Nascimento do usu�rio'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','Ativo','Exibe o sexo do usu�rio'



