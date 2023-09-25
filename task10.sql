/*
created by: Artyom Efimov
created on 24.09.2022
description: Дана таблица Sales (PatientFullname, SaleDate, Summa) На рисунке № 1 изображена выборка по этой таблице.
             Необходимо написать запрос, который будет возвращать такой же результат, который изображен на рисунке 2.
             Необходимо учесть только 2019 и 2020 года. 
*/


select
     S.PatientFullname,
     (select summa from SaleTask10 SV where SV.PatientFullname = S.PatientFullname and (extract(year from saletask10date) = 2019)) as "2019",
     (select summa from SaleTask10 SV where SV.PatientFullname = S.PatientFullname and (extract(year from saletask10date) = 2020)) as "2020"
from SaleTask10 S
group by PatientFullname
order by PatientFullname;
