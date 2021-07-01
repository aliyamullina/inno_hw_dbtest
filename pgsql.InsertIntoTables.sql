INSERT INTO department (department_name)
VALUES ('Manufacturing'), ('Logistic'), ('Sales'), ('Economy'), ('Production');

INSERT INTO employees (department_id, name)
VALUES 
(1,	'Ivan Ivanov'),
(1,	'Sidor Sidorov'),
(2,	'Egor Egorov'),
(3,	'Petr Petrov'),
(4,	'Vasily Vasilev'),
(5,	'Marina Marinina'),
(5,	'Dmitry Dmitriev'),
(2,	'Alex Alexeev'),
(1,	'Olga Olgova'),
(3,	'Olesya Olesyeva');

INSERT INTO customer (customer_name, location)
VALUES 
('Dmitry Bolshakov',	'Innopolis'),
('Olesya Lavrenteeva',	'Innopolis'),
('Anton Tarasov',		'Saratov'),
('Marya Chelnakova',	'Moscow'),
('Andrew Nilov',		'Kazan'),
('Dmitry Egorov',		'Moscow'),
('Ekaterina Fedorova',	'Moscow'),
('Sergey Nikonov',		'Kazan'),
('Alexey Lomovoi',		'Vladivostok');

INSERT INTO contract (customer_id, date, amount)
VALUES
(1,	'2012-05-10',	20000),
(2,	'2013-05-11',	10000),
(5,	'2014-05-12',	50000),
(7,	'2015-05-13',	150000),
(8,	'2016-05-13',	200000),
(9,	'2017-05-14',	14000),
(5,	'2018-05-15',	26000),
(4,	'2012-01-08',	60000),
(3,	'2013-02-09',	30000),
(1,	'2014-03-14',	32000),
(2,	'2015-04-16',	30000),
(8,	'2016-05-18',	40000),
(7,	'2017-06-20',	50000),
(9,	'2018-07-23',	60000),
(5,	'2019-08-25',	70000),
(4,	'2010-01-01',	80000),
(3,	'2011-02-02',	90000),
(4,	'2012-03-05',	100000),
(2,	'2013-04-06',	110000),
(1,	'2014-05-08',	120000),
(2,	'2015-06-09',	130000),
(7,	'2016-07-10',	140000),
(8,	'2017-08-11',	150000),
(9,	'2018-09-12',	160000),
(3,	'2019-10-14',	170000);

INSERT INTO executor (tab_no, contract_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(7, 6),
(2, 7),
(3, 8),
(5, 9),
(6, 10),
(7, 11),
(9, 12),
(10, 13),
(1, 14),
(2, 15),
(5, 16),
(2, 17),
(3, 18),
(7, 19),
(8, 20),
(5, 21),
(4, 22),
(3, 23),
(4, 24),
(5, 25);
