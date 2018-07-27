USE recepcao;
CREATE TABLE agendamento
(
id_agendamento int,
data_agendamento datetime,
profissional varchar (50),
paciente varchar (50),
usuario varchar (50),
modo_de_agendamento varchar (30),
PRIMARY KEY (id_agendamento)
)