/*
created by: Artyom Efimov
created on 24.09.2022
description: Дана таблица medcards, в которой имеются столбцы fullname, CartNumber, Birthdate, Phone, CreationDate.
             Вывести ФИО, дата рождения, пациентов день рождения которых наступит в промежутке с 10.02.2022 по 28.02.2022 г. 
             Стоит учесть пациентов день рождения которых попадает на 29 февраля.
*/

select fullname, Birthdate
from medcards
where ((extract(day from Birthdate::timestamp) between 10 and 29) and (extract(month from Birthdate::timestamp) = 2));
