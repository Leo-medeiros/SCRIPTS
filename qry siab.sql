select data_desativacao,* from siabfacil.pessoa 
where familia_id in (
59089,
57932,
58872,
55360,
55376
)



select data_desativacao,* from siabfacil.familia
-- update siabfacil.familia set data_desativacao = '2017-09-18'
where id in (








select distinct cod_area, microarea, numero, id
from siabfacil.familia where id not in (
select distinct B.id
from siabfacil.pessoa A inner join siabfacil.familia B on A.familia_id = B.id
where A.posicao_familiar_id = 1
)
and familia.data_desativacao is null
and cod_area is not null and id not in (52582,52583,52657,47906,58760,58150,58094,58084,56674,
58342,58091,58786,58167,58392,58122,58413,58383,58405,55757,58248,58311,
52543,
52547,
52549,
58820,
58821,
58822,
58956,
58957,
58958,
58959,
58960,
58961,
58962,
58963,
58964,
58965,
58966,
58967,
58968,
58969,
58970,
58971,
58972,
58973,
58974,
58975,
58976,
58977,
58978,
58979,
58980,
58981,
58982,
58983,
58984,
58985,
58986,
58987,
58988,
58989,
58990,
58991,
58992,
58993,
58994,
58995,
58996,
58997,
58998,
58999,
59000,
59001,
59002,
59003,
58200,
59004,
59005,
59006,
59007,
59008,
59009,
59010,
59011,
59012,
58379,
58694,
58175,
58176,
58190,
58206,
58216,
59089,
57932,
58872,
55360,
55376
)
order by cod_area, microarea, numero
 