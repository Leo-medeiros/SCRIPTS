DECLARE @N1 DECIMAL
DECLARE @N2 DECIMAL
declare @total decimal

set @N1 = 244
set @N2 = 244
set @total = (@N2*100)/@N1




SELECT CONVERT(VARCHAR(4),@total) +  '%'


