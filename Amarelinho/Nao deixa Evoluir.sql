/* Nao deixa fazer evolucao do paciente, pois grava o cid no campo codproccid, mudar para NULL*/

select codproccid, * from recepcao.dbo.movimentos
--update recepcao.dbo.movimentos set codproccid = NULL
where ficha = '2708548'