select nome, cic from medicos where cns in (
select distinct prd_cnsmed from bpa.s_prd where prd_motivo = 'CARTAO SUS DO PROFISSIONAL INV�LIDO')



SELECT cic, cns,* FROM MEDICOS
--UPDATE MEDICOS SET CNS = '128496666040018'
WHERE CIC = '08660541707'


SELECT CNS,* FROM ACESSO.DBO.USUARIOS
--UPDATE ACESSO.DBO.USUARIOS SET CNS = '128496666040018'
WHERE CPF = '08660541707'
