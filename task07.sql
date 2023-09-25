/*
created by: Artyom Efimov
created on 24.09.2022
description: Необходимо написать запрос, который покажет сумму продаж за каждый день с учётом предыдущего дня.
*/

with sum_days as(
    select SaleDate, sum(SaleSum)
    from Sale
    group by SaleDate
    order by SaleDate
)

select
SaleDate,
sum - lag(sum) over (order by SaleDate) as DeltaSum
from sum_days;