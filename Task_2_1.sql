-- Задание 2-1 после 2й лекции: 
-- Чему будет равна выборка:
-- SELECT ФИО, Д/р, Адрес FROM Общий список
-- SELECT ФИО, Статус FROM Общий список WHERE Адрес = «Можга»
-- SELECT ФИО FROM Общий список WHERE Адрес = «Москва» AND Группа = «Работа»
-- SELECT Д/р FROM Общий список WHERE Адрес = «Москва» OR Группа = «Работа»
-- Поля изменены под прошлое задание с автобусами
-- create a table
CREATE TABLE task_2_1 (
  id INTEGER PRIMARY KEY,
  route INTEGER NOT NULL, -- маршрут
  km INTEGER(2) NOT NULL, -- длинна маршрута в km
  time CHAR (5) NOT NULL, -- время маршрута
  model VARCHAR (45) NOT NULL, -- модель автобуса 
  drivers VARCHAR (30) NOT NULL -- ФИО водителя
);
-- insert some values
INSERT INTO task_2_1 VALUES (1, 56, 11, '01:20', 'ЛиАЗ', 'Алексеев А.А.');
INSERT INTO task_2_1 VALUES (2, 154, 15, '01:50', 'ЛиАЗ', 'Афанасьева А.А.');
INSERT INTO task_2_1 VALUES (3, 196, 10, '01:00', 'МАЗ', 'Борисов Б.Б.');
INSERT INTO task_2_1 VALUES (4, 215, 6, '00:50', 'ЛиАЗ', 'Игнатьева И.И.');
INSERT INTO task_2_1 VALUES (5, 748, 4, '00:30', 'ЛиАЗ', 'Петров П. П.');
INSERT INTO task_2_1 VALUES (6, 788, 21, '02:00', 'МАЗ', 'Иванова П.П.');

-- fetch some values
SELECT route, time, model FROM task_2_1; -- SELECT ФИО, Д/р, Адрес FROM Общий список
SELECT route, km FROM task_2_1 WHERE km >= 10; -- SELECT ФИО, Статус FROM Общий список WHERE Адрес = «Можга»
SELECT drivers FROM task_2_1 WHERE km > 10 AND model = 'ЛиАЗ'; -- SELECT ФИО FROM Общий список WHERE Адрес = «Москва» AND Группа = «Работа»
SELECT route FROM task_2_1 WHERE km < 10 OR model = 'МАЗ'; -- SELECT Д/р FROM Общий список WHERE Адрес = «Москва» OR Группа = «Работа»