USE DBMec
go

EXEC DBMec.Pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID','Codigo de identificação'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Nome','Nome do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','NomeSocial','Nome Social do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','CNS','Cartão nacional do SUS do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','CPF','CPF do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','NIS','Número de Identificação social do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','RG','RG do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Sexo','Sexo do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','DataNascimento','Data de Nascimento do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Nacionalidade','Identificação da Nacionalidade do Paciente (Relacionamento com o campo ID da tabela pessoa.Nacionalidade)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Raca','Identificação da Raça do Paciente (Relacionamento com o campo ID da tabela pessoa.Raca)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Etnia','Idenfiticação da Etnia do Paciente (Relacionamento com o campo ID da tabela pessoa.etnia)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Mae','Exibe o nome da Mae do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Pai','Exibe o nome do Pai do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Endereco','Identificação do Endereço do Paciente (Relacionamento com o campo ID da tabela Cep.Endereco)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Area','Identificação da Área do Paciente (Relacionamento com o campo ID da tabela Sistema.Area)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_MicroArea','Identificação da MicroArea do Paciente (Relacionamento com o campo ID da tabela Sistema.MicroArea)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_UnidadeVinculo','Identificação da Unidade de Vinculo do Paciente (Relacionamento com o campo ID da tabela Sistema.Unidades)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_TipoSanguineo','Identificação do Tipo Sanguineo do Paciente (Relacionamento com o campo ID da tabela Pessoa.TipoSanguineo)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_EstadoCivil','Identificação do Estado Civil da Pessoa (Relacionamento com o campo ID da tabela Pessoa.EstadoCivil)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Escolaridade','Identificação da Escolaridade do Paciente (Relacionamento com o campo ID da tabela Pessoa.Escolaridade)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Convenio','Identificação do Convenio do Paciente (Relacionamento com o campo ID da tabela Sistema.Convenios)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_Deficiencia','Identificação da Deficiencia do Paciente (Relacionamento com o campo ID da tabela PEssoa.Deficiencia)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Prontuario','Exibe o Prontuario do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','DataCadastro','Exibe a data em que o Paciente foi cadastrado no sistema'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','DataUltimaAlteracao','Exibe a data em que o cadastro do Pacietne teve a última alteração'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','UF_Nasc','Exibe a UF de Nascimento do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','Municipio_Nasc','Exibe o Município de Nascimento do Paciente'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','ID_UnidadeReferencia','Identificação da Unidade de Referencia do Paciente (Relacionamento com o campo ID da tabela Sistema.Unidades)'
EXEC DBMec.pessoa.SP_SET_COLUMN_DESCRIPTION 'pessoa', 'Paciente','TemCoberturaUnidadeReferencia','Exibe se a Unidade de Referencia tem cobertura de Area (1 para sim, 0 para não)'






