USE DBMec
go

EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','ID','Codigo do Usuário'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','Login','Login do Usuário'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','ID_Profissional','Código do profisisonal, relacionamento com o campo ID da tabela pessoa.profissional'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','Ativo','Exibe se o esta ativo (1 está ativo, 0 está inativo)'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','senha','Exibe a senha criptografada do usuário'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','Nome','Exibe o nome do usuário'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','CPF','Exibe o CPF do usuário'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','dataNascimento','Exibe a data de Nascimento do usuário'
EXEC DBMec.Acesso.SP_SET_COLUMN_DESCRIPTION 'acesso', 'usuario','Ativo','Exibe o sexo do usuário'



