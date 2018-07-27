set dateformat dmy
select * from recepcao.dbo.sadt
where data between'23/11/2015 14:30:00' and '24/11/2015 11:00:00'
and OrigemMovimento <> 0