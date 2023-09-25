/*
created by: Artyom Efimov
created on: 24.09.2023
description: Дана таблица medcards, где хранится информация о пациентах.
            Также имеется таблица Polises (внешний ключ из табл. Medcards – mcid),
            где хранится информация о имеющихся полисах пациентов.
            Необходимо вывести ФИО пациента, серию, номер, дату выдачи и окончание действия полиса.
            Необходимо вывести только самый последний активный полис.
*/
select fullname, series, numb as number, start_p as start_date, end_p as end_date
from Polises
inner join medcards m on m.id = mcid
where end_p > (select current_date)
order by fullname;