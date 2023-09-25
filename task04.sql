/*
created by: Artyom Efimov
created on 24.09.2022
description: Ввести пациентов имена которых самые длинные;
*/
select *
from medcards
where length(fullname) = (select (max(length(fullname))) from medcards)
order by fullname;