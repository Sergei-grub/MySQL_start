-- create a table
CREATE TABLE task_2_1 (
  id INTEGER PRIMARY KEY,
  route INTEGER NOT NULL,
  km INTEGER(2) NOT NULL,
  time CHAR (5) NOT NULL,
  model VARCHAR (45) NOT NULL,
  driver VARCHAR (30) NOT NULL
);
-- insert some values
INSERT INTO task_2_1 VALUES (1, 56, 11, '01:20', 'ЛиАЗ', 'Алексеев А.А.');
INSERT INTO task_2_1 VALUES (2, 154, 15, '01:50', 'ЛиАЗ', 'Афанасьева А.А.');
INSERT INTO task_2_1 VALUES (3, 196, 10, '01:00', 'МАЗ', 'Борисов Б.Б.');
INSERT INTO task_2_1 VALUES (4, 215, 6, '00:50', 'ЛиАЗ', 'Игнатьева И.И.');
INSERT INTO task_2_1 VALUES (5, 748, 4, '00:30', 'ЛиАЗ', 'Петров П. П.');
INSERT INTO task_2_1 VALUES (6, 788, 21, '02:00', 'МАЗ', 'Иванова П.П.');

-- fetch some values
SELECT * FROM task_2_1;-- WHERE gender = 'F';