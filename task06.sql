/*
created by: Artyom Efimov
created on 24.09.2022
description: Дана временная таблица #TempTable, где находятся некоторый набор услуг со следующими параметрами: 
            code - код услуги, basecost - базовая стоимость, purchasePrice - цена закупки. 
            Также имеется таблица Services, в которой, кроме прочих столбцов, имеется указанные выше столбцы. 
            задача: Необходимо обновить базовую стоимость, цену закупки в таблице Services по совпадению кодов
            услуг в соответствии со временной таблицей.
*/

update Services S
set basecost = (select basecost from TempTable T where T.code = S.code),
purchasePrice = (select purchasePrice from TempTable T where T.code = S.code)
