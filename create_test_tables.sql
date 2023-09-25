/*
created by: Artyom Efimov
created on 24.09.2022
description: Create Acounts_contents table;
*/

CREATE TABLE acсounts_contents
(
    id SERIAL PRIMARY KEY,
    account int,
    code varchar(30),
    CreateData date

);

INSERT INTO acсounts_contents (account,code, CreateData) 
VALUES 
(10001, '101','2023-06-11'),
(10001, '102','2023-07-12'),
(10001, '103','2023-08-28'),
(10002, '100','2023-06-02'),
(10001, '101','2023-06-17'),
(10002, '102','2023-08-21'),
(10003, '100','2023-09-11'),
(10004, '103','2023-09-12'),
(10004, '102','2023-09-12');

/*
created by: Artyom Efimov
created on 24.09.2022
description: Create Acounts table;
*/

CREATE TABLE acсounts
(
    id SERIAL PRIMARY KEY,
    mcid int,
    account int
);

INSERT INTO acсounts (mcid, account) 
VALUES 
(1, 10001),
(2, 10002),
(3, 10003),
(4, 10004),
(5, 10005),
(6, 10006),
(7, 10007),
(8, 10008);

/*
created by: Artyom Efimov
created on 24.09.2022
description: Create medcards table;
*/

CREATE TABLE medcards
(
    id SERIAL PRIMARY KEY,
    fullname CHARACTER VARYING(30),
    CartNumber INTEGER,
    Birthdate DATE,
    Phone CHARACTER VARYING(12),
    CreationDate DATE
);

INSERT INTO medcards (fullname, CartNumber, Birthdate, Phone, CreationDate) 
VALUES 
('Ivanov Ivan', 1, '1990-09-22', '+7900000000', '2023-09-24'),
('Dey Sen', 1, '1997-09-13', '+79111111111', '2023-09-22'),
('Ibragimova Inna', 1, '1987-07-22', '+79555555555', '2023-09-21'),
('Ibrahimova Anna', 1, '1965-05-13', '+79333333333', '2023-09-20'),
('Ivanov Ivan', 1, '1990-09-22', '+7900000000', '2023-09-27'),
('Iskander Isaakov', 1, '1969-02-28', '+7900000001', '2023-07-23'),
('Vladimir Presnyakov', 1, '2012-02-29', '+7900000002', '2023-05-13'),
('Gosha Kucenko', 1, '1983-02-10', '+7900000003', '2023-03-04'),
('Vasily Kachalov', 1, '1964-02-15', '+7900000004', '2023-01-21'),
('Vasily Kachalov', 1, '1964-02-15', '+7900000004', '2023-01-27');

/*
created by: Artyom Efimov
created on 24.09.2022
description: Create Polises table;
*/

CREATE TABLE Polises
(
    id SERIAL PRIMARY KEY,
    mcid int,
    start_p date,
    end_p date,
    series varchar(10),
    numb int
);

INSERT INTO Polises (mcid, start_p, end_p, series, numb) 
VALUES 
(1, '2023-09-24', '2024-09-24', 'AAA', '77777'),
(2, '2023-09-22', '2024-09-22', 'BBB', '11111'),
(3, '2023-09-21', '2024-09-21', 'CCC', '22222'),
(4,'2023-09-20', '2024-09-20', 'DDD', '33333'),
(1, '2023-09-24', '2024-09-24', 'AAA', '77777');

/*
created by: Artyom Efimov
created on 24.09.2022
description: Create Sale table;
*/

CREATE TABLE Sale
(
    id SERIAL PRIMARY KEY,
    SaleDate date,
    SaleSum decimal
);

INSERT INTO Sale (SaleDate, SaleSum) 
VALUES 
('2023-09-22', 1000),
('2023-09-22', 5200),
('2023-09-23', 300),
('2023-09-23', 700),
('2023-09-24', 10000),
('2023-09-23', 5000),
('2023-09-27', 46000),
('2023-09-27', 510000),
('2023-09-28', 15000);

/*
created by: Artyom Efimov
created on 24.09.2022
description: Create task3 table;
*/

CREATE TABLE Task3
(
    id SERIAL PRIMARY KEY,
    string varchar(100)
);

INSERT INTO Task3 (string) 
VALUES 
('test123'),
('Test'),
('Test1');

/*
created by: Artyom Efimov
created on 24.09.2022
description: Create SaleTask10 Task10 table;
*/

CREATE TABLE SaleTask10
(
    id SERIAL PRIMARY KEY,
    PatientFullname varchar(30),
    SaleTask10Date date,
    Summa money
);

INSERT INTO SaleTask10 (PatientFullname, SaleTask10Date, Summa) 
VALUES 
('Андреев Артур', '2019-09-22', 66555),
('Бромов Артур Артемович', '2019-01-23', 65600),
('Егоров Федор', '2019-01-21', 11162),
('Павлов Алексей Семенович', '2019-03-23', 13700),
('Тестов Тест Тестович', '2019-02-19', 16601),
('Федоров Егор', '2019-06-11', 10002),
('Андреев Артур', '2020-04-23', 11550),
('Артем Фролов', '2020-05-23', 104986),
('Брюсов Роман Павлович', '2020-01-23', 309914),
('Бромов Артур Артемович', '2020-04-23', 228585);

/*
created by: Artyom Efimov
created on 24.09.2022
description: Create Servises table;
*/

CREATE TABLE Services
(
    id SERIAL PRIMARY KEY,
    code varchar(30),
    basecost money,
    purchasePrice money
);

insert into Services (code, basecost, purchasePrice)
values
('100', 1000, 500),
('101', 1200, 600),
('102', 800, 400),
('103', 200, 100);

CREATE TABLE TempTable
(
    id SERIAL PRIMARY KEY,
    code varchar(30),
    basecost money,
    purchasePrice money
);

insert into TempTable(code, basecost, purchasePrice)
values
('100', 2000, 909),
('101', 1700, 666),
('102', 990, 555),
('103', 760, 444),
('104', 200, 100),
('105', 200, 100);