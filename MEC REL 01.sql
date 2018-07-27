
/*Nº RH
Nº MATRÍCULA 
Classificação  AD1/AD2/AD3  ok
NOME PACIENTE
ENDEREÇO
BAIRRO
DATA NASC.
SEXO
DATA ADMISSÃO
DATA ALTA
DATA ÓBITO
nº do CID 10
DIAGNOSTICO PRINCIPAL /  OUTROS*/

USE DBMec;
GO
SELECT *
FROM
(
    SELECT DISTINCT
           AT.Conclusao [Conclusao],
           P.Nome [Nome],
           C.Logradouro [Logradouro],
           C.Bairro [Bairro],
           CONVERT(VARCHAR(10), P.DataNascimento, 103) [Data Nasc],
           p.Sexo [Sexo],
           CONVERT(VARCHAR(10), P.DataCadastro, 103) [Data Admissao],
           CONVERT(VARCHAR(10), A.Data, 103) [Data Alta],
    (
        SELECT TOP 1 CONVERT(VARCHAR(10), A.Data, 103)
        FROM Atendimento.Alta a
        WHERE a.ID_Paciente = p.ID
              AND TipoAlta = 'SO'
    ) [Data Obito],
           at.ID_CID [ID_CID10],
           CASE DATEPART(MONTH, at.DataInicio)
               WHEN 01
               THEN 'JANEIRO'
               WHEN 2
               THEN 'FEVEREIRO'
               WHEN 3
               THEN 'MARÇO'
               WHEN 4
               THEN 'ABRIL'
               WHEN 5
               THEN 'MAIO'
               WHEN 6
               THEN 'JUNHO'
               WHEN 7
               THEN 'JULHO'
               WHEN 8
               THEN 'AGOSTO'
               WHEN 9
               THEN 'SETEMBRO'
               WHEN 10
               THEN 'OUTUBRO'
               WHEN 11
               THEN 'NOVEMBRO'
               WHEN 12
               THEN 'DEZEMBRO'
           END 'MES',
           COUNT(AT.ID_Paciente) TOTAL_DE_PACIENTES_ATENDIDOS
    FROM Atendimento.Tratamento AT
         INNER JOIN Pessoa.Paciente P ON AT.ID_Paciente = P.ID
         INNER JOIN Cep.Endereco C ON P.ID_Endereco = C.ID
         INNER JOIN Atendimento.Alta A ON A.ID_Paciente = P.ID
	    group by AT.Conclusao, P.Nome,C.Logradouro, C.Bairro,P.DataNascimento,p.Sexo,
P.DataCadastro,A.Data,ID_CID,DATEPART(MONTH, at.DataInicio), p.ID
) QRY
















