﻿--SCRIPT PESQUISAR FAMILIAS SEM REPRESENTANTE DEFINIDO
select distinct cod_area, microarea, numero,ID 
from siabfacil.familia where id not in (
select distinct B.id
from siabfacil.pessoa A inner join siabfacil.familia B on A.familia_id = B.id
where A.posicao_familiar_id = 1
)
and familia.data_desativacao is null
and cod_area is not null AND ID NOT IN (58760,
56674,
58084,
58091,
58094,
58150,
58342,
58383,
58392,
58405,
58413,
58122,
58786,
58167,55757,
58248,
58311,
58379,
58694,
58175,
58176,
58190,
58200,
58206,
58216,
59089,
57932,
58872,
55360,
55376,
55379,
55382,
55396,
55398,
55401,
55402,
58325,
58255,
55284,
56861,
55285,
55286,
55287,
55288,
56956,
55255,
55256,
55257,
55258,
55259,
55260,
55261,
55262,
55263,
55264,
55265,
55266,
55267,
58859,
55270,
55271,
55272,
55273,
55274,
55275,
55276,
55277,
55278,
55279,
55280,
55282,
55283,
55289,
55290,
55291,
55292,
55293,
55294,
55083,
55091,
55096,
55127,
55163,
55166,
55167,
55171,
55296,
55297,
55299,
55302,
55303,
55304,
55305,
55306,
55307,
55308,
55309,
55310,
55311,
51922,
51923,
51925,
51926,
51927,
51928,
58199,
59085,
58330,
58954,
53368,
58936,
58312,
54171,
56480,
45332,
45353,
58458,
58582,
58620,
58927,
58929,
46997,
49002,
51757,
58443,
58647,
58809,
58902,
58906,
42770,
42776,
42798,
42802,
43654,
43665,
43674,
43859,
44400,
44540,
44960,
45717,
45843,
45927,
46482,
46483,
46698,
46805,
46815,
46817,
46824,
46825,
46923,
47311,
47347,
47367,
47745,
47747,
48040,
48082,
48083,
48084,
48085,
48089,
48598,
48694,
49895,
50074,
50076,
50597,
51783,
51785,
52201,
52681,
52738,
52739,
52740,
53701,
53787,
53835,
53892,
54083,
55739,
55708,
55709,
55710,
58444,
58445,
58446,
56053,
54042,
57945,
54045,
54046,
54048,
57462,
54050,
54051,
54052,
54053,
57187,
58468,
54054,
54055,
54056,
54057,
54059,
54108,
54110,
54111,
54112,
54115,
54117,
54118,
54122,
54026,
54123,
54124,
54125,
54127,
54130,
57691,
54132,
54133,
54136,
54138,
54078,
54029,
57441,
58366,
58367,
58662,
57988,
52692,
58402,
52694,
52695,
58866,
52696,
52699,
43360,
58563,
52701,
58042,
58043,
58044,
58261,
58262,
58263,
58346,
58347,
58348,
58349,
58350,
58351,
58358,
58361,
58362,
58942,
58431,
55111,
55113,
55114,
55116,
55118,
55119,
55121,
55122,
55123,
55124,
55131,
55132,
55135,
55136,
55137,
55139,
55140,
55141,
55142,
55143,
55145,
55146,
55147,
55148,
55149,
55150,
55151,
55152,
55153,
55154,
55155,
55156,
55157,
55158,
55160,
55161,
54901,
54905,
54906,
54908,
54909,
54910,
54911,
54997,
54998,
54999,
55000,
55001,
55002,
55003,
59069,
54935,
54936,
54937,
54938,
54944,
54945,
54947,
54948,
54949,
54951,
54952,
54953,
54954,54956,
54957,
54958,
54959,
54960,
54961,
54962,
54963,
54964,
54965,
54966,
54968,
54969,
54970,
54971,
54972,
54973,
54974,
54975,
54976,
54977,
54978,
54979,
54980,
54985,
54987,
54988,
54989,
54990,
54991,
57401,
56580,
41792,
42541,
42550,
42558,
42598,
42729,
42740,
42767,
42769,
42771,
53273,
53295,
53329,
53339,
42908,
43326,
43334,
43338,
43352,
43361,
43376,
43385,
43398,
43401,
43403,
43409,
43416,
43422,
43430,
43434,
43439,
43443,
43446,
43489,
43495,
43499,
43507,
43514,
43521,
43528,
43532,
43551,
43559,
43564,
43569,
43590,
43599,
43603,
43609,
43615,
43618,
43624,
43625,
43631,
43663,
43666,
43670,
43671,
43675,
43681,
43682,
43658,
53592,
53593,
53595,
53596,
53598,
53599,
53600,
53601,
53602,
53603,
53604,
53606,
53607,
53608,
53610,
53611,
53612,
53614,
53234,
53235,
53236,
53240,
53269,
45016,
53588,
45213,
45398,
45481,
45506,
45699,
45975,
46073,
46215,
50553,
51131,
55017,
55018,
55019,
55020,
55021,
55022,
55023,
55031,
55032,
55033,
55034,
55035,
55036,
55037,
55038,
55039,
55220,
55221,
55222,
58158,
41966,
52907,
43165,
59050,
59059,
53726,
52639,
58411,
58414,
52641,
52642,
52893,
52895,
53491,
53710,
53875,
53894,
53986,
56298,
56416,
54382,
58227,
56013,
56706,
56417,
56014,
56036,56016,
58225,
56038,
58234,
58235,
58222,
58642,
58230,
58223,
58220,
58299,
58774,
41677,
41715,
41839,
41864,
41879,
42571,
42581,
42611,
42626,
42629,
42906,
43061,
43067,
43284,
43506,
43526,
43553,
43563,
43576,
43796,
43815,
43831,
44253,
44374,
44380,
44383,
44811,
44964,
45262,
45264,
45395,
45907,
45946,
46061,
46069,
46218,
46229,
46230,
46232,
46233,
46236,
46257,
46616,
46675,
47309,
46684,
47302,
47308,
48760,
48762,
48836,
51128,
51144,
51303
)
order by cod_area, microarea, numero


SELECT DATA_DESATIVACAO,* FROM SIABFACIL.FAMILIA
-- update SIABFACIL.FAMILIA set DATA_DESATIVACAO = '2017-09-19'
WHERE id in (53599,
53600,
53603,
53604,
53606,
53607,
53608,
53610,
53611,
53612,
53614,
53234,
53235,
53236,
53240,
53269,
45016,
53588,
45213,
45398,
45481,
45506,
45699,
45975,
46073,
46215,
50553,
51131,
55017,
55018,
55019,
55020,
55021,55022,
55023,
55031,
55032,
55033,
55034,
55035,
55036,
55037,
55038,
55039,
55220,
55221,
55222,
58158,
41966,
52907,
43165,
59050,
59059,
53726,
52639,
58411,
58414,
52641,
52642,
52893,
52895,
53491,
53710,
53875,
53894,
53986,
56298,
56416,
54382,
58227,
56013,
56706,
56417,
56014,
56036,56016,
58225,
56038,
58234,
58235,
58222,
58642,
58230,
58223,
58220,
58299,
41677,
41715,
41839,
41864,
41879,
42571,
42581,
42611,
42626,
42629,
42906,
43061,
43067,
43284,
43506,
43526,
43553,
43563,
43576,
43796,
43815,
43831,
44253,
44374,
44380,
44383,
44811,
44964,
45262,
45264,
45395,
45907,
45946,
46061,
46069,
46218,
46229,
46230,
46232,
46233,
46236,
46257,
46616,
46675,
47309,
46684,
47302,
47308,
48760,
48762,
48836,
51128,
51144,
51303,
51304,
51308,
51917,
41843,
41874,
41886,
41918,
41932,
41942,
42407,
42871,
43314,
43907,
44262,
44564,
44567,
44571,
44588,
44972,
45306,
45307,
45316,
45420,
45438,
45439,
45508,
45510,
45757,
45957,
46158,
46159,
46160,
46162,
46459,
46466,
46470,
46472,
46625,
46797,
47004,
47287,
47483,
47584,
47702,
48558,
48563,
48569,
48988,
49101,
49186,
49235,
49245,
49246,
49428,
49430,
49440,
49458,
49472,
49476,
49486,
49489,
49494,
49516,
49523,
47027,
49528,
49531,
49536,
49870,
51044,
51058,
51059,
51216,
51270,
51326,
51435,
51568,
52550,
53277,
54194)


SELECT * FROM SIABFACIL.PESSOA
WHERE FAMILIA_ID IN (51304,
51308,
51917,
41843,
41874,
41886,
41918,
41932,
41942,
42407,
42871,
43314,
43907,
44262,
44564,
44567,
44571,
44588,
44972,
45306,
45307,
45316,
45420,
45438,
45439,
45508,
45510,
45757,
45957,
46158,
46159,
46160,
46162,
46459,
46466,
46470,
46472,
46625,
46797,
47004,
47287,
47483,
47584,
47702,
48558,
48563,
48569,
48988,
49101,
49186,
49235,
49245,
49246,
49428,
49430,
49440,
49458,
49472,
49476,
49486,
49489,
49494,
49516,
49523,
47027,
49528,
49531,
49536,
49870,
51044,
51058,
51059,
51216,
51270,
51326,
51435,
51568,
52550,
53277,
54194)
