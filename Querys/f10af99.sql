SELECT * FROM (
SELECT DISTINCT C.NOME AS NOME_DO_PACIENTE, C.NOMEEQUIPE AS NOME_DA_EQUIPE, C.SEXO, CONVERT (VARCHAR(10), 
DATA_NASCIMENTO,103) AS DATA_NASCIMENTO, C.MAE, D.CID10, D.DESCR,
(SELECT TOP 1 CONVERT (VARCHAR(10), dtatende,103 )  FROM pepmovimentos x where x.codpac=c.idpep order by codigo desc) AS DATA_ULTIMO_ATENDIMENTO
FROM INDICADORES.VW_PEP_SIAB C
INNER JOIN PEPMOVIMENTOS A ON C.IDPEP = A.CODPAC
INNER JOIN PepMovimentos_CID B ON A.CODIGO = B.id_PepMovimentos
INNER JOIN CID D ON B.id_cid = D.ID
WHERE D.ID in(2407
,2418
,2429
,2440
,2451
,2462
,2473
,2484
,2495
,2506
,2517
,2527
,2528
,2532
,2539
,2540
,2546
,2547
,2548
,2554
,2565
,2572
,2580
,2585
,2589
,2590
,2596
,2603
,2609
,2615
,2626
,2634
,2639
,2648
,2657
,2668
,2673
,2674
,2675
,2676
,2687
,2688
,2693
,2700
,2706
,2716
,2722
,2726
,2727
,2732
,2737
,2742
,2747
,2752
,2757
,2764
,2771
,2772
,2773
,2782
,2783
,2784
,2789
,2796
,2800
,2807
,2813
,2819
,2829)
) AS TEMP
ORDER BY NOME_DA_EQUIPE


--select * from cid
--where cid10 IN ('F10', 'F11', 'F12', 'F13', 'F14', 'F15', 'F16', 'F17', 'F18', 'F19',
--'F20', 'F21', 'F22', 'F23', 'F24', 'F25', 'F26', 'F27', 'F28', 'F29',
--'F30', 'F31', 'F32', 'F33', 'F34', 'F35', 'F36', 'F37', 'F38', 'F39',
--'F40', 'F41', 'F42', 'F43', 'F44', 'F45', 'F46', 'F47', 'F48', 'F49',
--'F50', 'F51', 'F52', 'F53', 'F54', 'F55', 'F56', 'F57', 'F58', 'F59',
--'F60', 'F61', 'F62', 'F63', 'F64', 'F65', 'F66', 'F67', 'F68', 'F69',
--'F70', 'F71', 'F72', 'F73', 'F74', 'F75', 'F76', 'F77', 'F78', 'F79',
--'F80', 'F81', 'F82', 'F83', 'F84', 'F85', 'F86', 'F87', 'F88', 'F89',
--'F90', 'F91', 'F92', 'F93', 'F94', 'F95', 'F96', 'F97', 'F98', 'F99')