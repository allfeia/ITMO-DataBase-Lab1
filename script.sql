-- Clear
DROP TABLE IF EXISTS planet CASCADE; //каскадное удаление, которое удаляет и зависящие строки
DROP TABLE IF EXISTS place CASCADE;
DROP TABLE IF EXISTS action CASCADE;
DROP TABLE IF EXISTS observation CASCADE;

-- Creation Data Base
CREATE TABLE planet(
id serial PRIMARY KEY, //первичный ключ - уникальный идентификатор поля таблицы
name varchar(64));

CREATE TABLE place(
id serial PRIMARY KEY,
description text NOT NULL);

CREATE TABLE observation(
id serial PRIMARY KEY,
change_color varchar(64),
field_of_view text NOT NULL,
time timestamp NOT NULL, //timestamp - тип данных даты/времени (без часового пояса)
place_id int NOT NULL REFERENCES place(id)); //внешний ключ - ссылка

CREATE TABLE action(
id serial PRIMARY KEY, //serial - псевдотип, который создёт последовательность и связывает атрибут со значением этой последовательности
description text NOT NULL,
observation_id int REFERENCES observation(id)) UNIQUE; //UNIQUE - ограничение для уникальности

-- Insert data into table planet
INSERT INTO planet(name) values
('Планета');
-- Insert data into table place
INSERT INTO place(description) values
('Земля');
-- Insert data into table observation
INSERT INTO observation(change_color, field_of_view, time, place_id) values
('оранжевая', '-', '2022-08-15 14:30:00', '1'),
('тускло-серая', 'кажется слабенькой звёздочкой', '2022-08-29 14:38:00', '1');
-- Insert data into table action
INSERT INTO action(description, observation_id) values
('происходит нечто ужасное', 2);





