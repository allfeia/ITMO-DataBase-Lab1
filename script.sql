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
fied_of_view text NOT NULL,
time timestamp NOT NULL,
place_id int NOT NULL REFERENCES place(id));

CREATE TABLE action(
id serial PRIMARY KEY,
description text NOT NULL,
observation_id int REFERENCES observation(id));

