/*
created by: Artyom Efimov
created on 24.09.2022
description:  Даны таблицы: 
                Medcards. В ней храниться информация по пациентам.
                Accounts (внешний ключ из табл. medcards - mcid) используется для хранения счетов пациентов. 
                Services. Используется для хранения услуг.
                Accounts_contents (внешний ключ из табл. Accounts – account; внешний ключ из табл. Services - service)
            Необходимо написать запрос, который выведет последний номер счета, по которому были начисления услуг, ФИО пациента, 
            которому принадлежит счет, также все услуги через запятую которые были ему начислены.
*/

with complect as(
     select
          a.account,
          m.fullname,
          string_agg(s.code, ',' order by s.code) as code
     from acсounts_contents ac
     join acсounts a on a.account = ac.account
     join medcards m on m.id = a.mcid
     join Services s on s.code = ac.code
     group by a.account, fullname
)

select
     cp.account,
     fullname,
     cp.code
from acсounts_contents ac
join complect cp on cp.account = ac.account
where CreateData = (select max(CreateData) from acсounts_contents)