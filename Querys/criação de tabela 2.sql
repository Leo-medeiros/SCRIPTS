/*Criação de tabela com chave estrangeira - Deve se apontar a chave estrangeira para a tabela de origem*/
use recepcao
create table testedanilo_consultas (
codigo integer not null,
especialidade varchar (20) not null,
data date not null
primary key (codigo)
foreign key (codigo)
references testedanilo (codigo_teste)
on delete no action
on update no action
);
