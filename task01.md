### Задача №1. Опишите работу запроса, указанного ниже. 

```
SELECT Id, YEAR(creationdate) SaleDate
FROM Sales
WHERE SaleDate >= 2021
Order by SaleDat
```

Запрос возвращает из таблицы  'Sales'  поля 'id' и YEAR(creationdate) SaleDate (Псевдоним),
в которых значения вторго поля SaleDate будут больше или равны 2021. 
Таблица будет отсортирована по второму столбцу (SaleDate).