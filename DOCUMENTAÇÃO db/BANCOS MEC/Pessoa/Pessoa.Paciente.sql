USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID','Codigo de identifica��o'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Nome','Nome do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','NomeSocial','Nome Social do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','CNS','Cart�o nacional do SUS do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','CPF','CPF do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','NIS','N�mero de Identifica��o social do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','RG','RG do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Sexo','Sexo do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','DataNascimento','Data de Nascimento do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Nacionalidade','Identifica��o da Nacionalidade do Paciente (Relacionamento com o campo ID da tabela pessoa.Nacionalidade)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Raca','Identifica��o da Ra�a do Paciente (Relacionamento com o campo ID da tabela pessoa.Raca)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Etnia','Idenfitica��o da Etnia do Paciente (Relacionamento com o campo ID da tabela pessoa.etnia)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Mae','Exibe o nome da Mae do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Pai','Exibe o nome do Pai do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Endereco','Identifica��o do Endere�o do Paciente (Relacionamento com o campo ID da tabela Cep.Endereco)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Area','Identifica��o da �rea do Paciente (Relacionamento com o campo ID da tabela Sistema.Area)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_MicroArea','Identifica��o da MicroArea do Paciente (Relacionamento com o campo ID da tabela Sistema.MicroArea)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_UnidadeVinculo','Identifica��o da Unidade de Vinculo do Paciente (Relacionamento com o campo ID da tabela Sistema.Unidades)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_TipoSanguineo','Identifica��o do Tipo Sanguineo do Paciente (Relacionamento com o campo ID da tabela Pessoa.TipoSanguineo)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_EstadoCivil','Identifica��o do Estado Civil da Pessoa (Relacionamento com o campo ID da tabela Pessoa.EstadoCivil)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Escolaridade','Identifica��o da Escolaridade do Paciente (Relacionamento com o campo ID da tabela Pessoa.Escolaridade)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Convenio','Identifica��o do Convenio do Paciente (Relacionamento com o campo ID da tabela Sistema.Convenios)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Deficiencia','Identifica��o da Deficiencia do Paciente (Relacionamento com o campo ID da tabela PEssoa.Deficiencia)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Prontuario','Exibe o Prontuario do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','DataCadastro','Exibe a data em que o Paciente foi cadastrado no sistema'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','DataUltimaAlteracao','Exibe a data em que o cadastro do Pacietne teve a �ltima altera��o'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','UF_Nasc','Exibe a UF de Nascimento do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Municipio_Nasc','Exibe o Munic�pio de Nascimento do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_UnidadeReferencia','Identifica��o da Unidade de Referencia do Paciente (Relacionamento com o campo ID da tabela Sistema.Unidades)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','TemCoberturaUnidadeReferencia','Exibe se a Unidade de Referencia tem cobertura de Area (1 para sim, 0 para n�o)'






