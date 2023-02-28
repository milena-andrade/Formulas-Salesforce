//Essa Formula calcula apenas os dias uteis e o horario comercial GMT BRASIL

10*(
(5*FLOOR((DATEVALUE(CreatedDate) -DATE(1996,01,01))/7) +
MIN(5,
MOD(DATEVALUE(CreatedDate) -DATE(1996,01,01), 7) +
MIN(1, 24/10*(MAX(0,MOD(CreatedDate-DATETIMEVALUE(TEXT(DATEVALUE(CreatedDate))&' 08:00:00'), 1))))
))
-
(5*FLOOR((DATEVALUE(Cotacoes__r.CreatedDate)-DATE(1996,01,01))/7) +
MIN(5,
MOD(DATEVALUE(Cotacoes__r.CreatedDate)-DATE(1996,01,01), 7) +
MIN(1, 24/10*(MAX(0,MOD(Cotacoes__r.CreatedDate-DATETIMEVALUE(TEXT(DATEVALUE(Cotacoes__r.CreatedDate))&' 08:00:00'), 1))))
))
)*60