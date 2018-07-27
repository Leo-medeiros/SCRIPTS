USE recepcao;
select nome, dtnasc from pacientes
union all
select nome, dtnasc from medicos