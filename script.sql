-- Creation Data Base
CREATE TABLE planet(
id serial PRIMARY KEY,
name varchar(64));

CREATE TABLE place(
id serial PRIMARY KEY,
description text NOT NULL);

CREATE TABLE observation(
id serial PRIMARY KEY,
change_color varchar(64),
field_of_view text NOT NULL,
time timestamp NOT NULL,
place_id int NOT NULL REFERENCES place(id));

CREATE TABLE action(
id serial PRIMARY KEY,
description text NOT NULL,
observation_id int REFERENCES observation(id));

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





