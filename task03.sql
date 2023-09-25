/*
created by: Artyom Efimov
created on 24.09.2022
description: Дана определенная строка. Необходимо написать запрос, 
             который выведет индекс первого числа, после которого не идет буква или конец строки.
*/

select position(substring(string from '[0-9]') in string)
from Task3
where string similar to '_*[0-9]*[^a-zA-Z][^$]';