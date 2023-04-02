-- Задание 2-2 после 2й лекции:
--  Что будет результатом следующих JOIN’ов:
--      INNER JOIN Люди, Адреса ON id = Чей адрес
--      LEFT JOIN Люди, Адреса ON id = Чей адрес
--      RIGHT JOIN Люди, Адреса ON id = Чей адрес
--      FULL JOIN Люди, Адреса ON id = Чей адрес

CREATE TABLE people (
  person_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  birthdate VARCHAR(10) NOT NULL,
  _status VARCHAR(30) NOT NULL
);

CREATE TABLE phones (
  person_id INT,
  number VARCHAR(20),
  _comment VARCHAR(30),
  FOREIGN KEY (person_id) REFERENCES people(person_id)
);

CREATE TABLE citys (
  person_id INT,
  city VARCHAR(50),
  _comment VARCHAR(30),
  FOREIGN KEY (person_id) REFERENCES people(person_id)
);

INSERT INTO people VALUES (1, 'Иванов И. И.', '12.02.1990', 'женат');
INSERT INTO people VALUES (2, 'Иванов И. И.', '18.09.2001', 'холост');
INSERT INTO people VALUES (3, 'Петров П. П.', '23.04.1983', 'женат');
INSERT INTO people VALUES (4, 'Васильев В. В.', '21.05.1998', 'холост');
INSERT INTO people VALUES (5, 'Кузьмин К.К.', '21.05.2020', 'холост');

INSERT INTO phones VALUES (1, '123', 'личный');
INSERT INTO phones VALUES (1, '124', 'рабочий');
INSERT INTO phones VALUES (1, '125', 'для поездок');
INSERT INTO phones VALUES (1, '126', 'интернет');
INSERT INTO phones VALUES (1, '127', 'старый');
INSERT INTO phones VALUES (2, '527', 'личный');
INSERT INTO phones VALUES (3, '234', 'личный');
INSERT INTO phones VALUES (3, '235', 'рабочий');
INSERT INTO phones VALUES (4, '456', 'личный');
INSERT INTO phones VALUES (5, '999', 'личный');

INSERT INTO citys VALUES (1, 'Можга', 'Место рождения');
INSERT INTO citys VALUES (1, 'Казань', 'По прописке');
INSERT INTO citys VALUES (1, 'Москва', 'Рабочий');
INSERT INTO citys VALUES (2, 'Санкт-Петербург', 'По прописке');
INSERT INTO citys VALUES (3, 'Москва', 'По прописке');
INSERT INTO citys VALUES (4, 'Белгород', 'По прописке');
INSERT INTO citys VALUES (5, 'Уфа', 'По прописке');

SELECT * FROM people
-- SELECT * FROM phones
-- SELECT * FROM citys

-- SELECT * From people INNER JOIN phones ON people.person_id = phones.person_id;
-- SELECT * From people INNER JOIN citys ON people.person_id = citys.person_id;
-- SELECT * From people LEFT JOIN citys ON people.person_id = citys.person_id;
-- SELECT * From people RIGHT JOIN phones ON people.person_id = phones.person_id;

-- SELECT name, number, _comment From people RIGHT JOIN phones ON people.person_id = phones.person_id;
-- SELECT name, city, person From people INNER JOIN citys ON people.person_id = citys.person_id;