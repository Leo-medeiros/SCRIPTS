


CREATE FUNCTION FR_TrazNomePai (@FICHA AS INT)
RETURNS VARCHAR(255)
AS 
BEGIN
DECLARE @nomep varchar (255) 
select @nomep = p.pai from recepcao.dbo.movimentos m 
inner join recepcao.dbo.pacientes p on (m.codpac = p.codigo)
where m.ficha= @FICHA 
return @nomep
end;





