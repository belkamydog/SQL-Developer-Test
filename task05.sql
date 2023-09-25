/*
created by: Artyom Efimov
created on: 24.09.2023
description: Дана таблица medcards, в которой имеются столбцы fullname, CartNumber, Birthdate, Phone, CreationDate.
             Необходимо написать запрос, который удалит все продублированные медкарты.
             Также необходимо учесть, что удалить нужно только те карты, у которых дата создания карты максимальная, 
             оставив карту с наименьшей датой создания. Критерии «продублированности» карты: одинаковые ФИО, дата рождения, номер телефона.
*/

/* 1) Получить Id тех что дублируются */
with dublicate as (
    select fullname, Birthdate, Phone
    from medcards
    group by fullname, Birthdate, Phone
    having (count(*) > 1)
),
Compare as(
    select m.id, m.fullname, m.Phone, m.CreationDate
    from medcards m
    join dublicate d on d.fullname = m.fullname and d.Birthdate = m.Birthdate and d.Phone = m.Phone
),
/* Оставить запись в каждой группе с минимальной датой */
FindId as (
    select * 
    from Compare C
    where CreationDate > (select min(CreationDate) from Compare CP  where C.fullname = CP.fullname)
)
delete
from medcards m
where m.id in (select f.id from FindId f);