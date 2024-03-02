-- Creation Data Base
CREATE TABLE planet(
id int PRIMARY KEY,
name varchar(64));

CREATE TABLE place(
id int PRIMARY KEY,
description text NOT NULL);

CREATE TABLE observation(
id int PRIMARY KEY,
change_color varchar(64),
fied_of_view text NOT NULL,
time timestamp NOT NULL,
place_id int NOT NULL REFERENCES place(id));

CREATE TABLE action(
id int PRIMARY KEY,
description text NOT NULL,
observation_id int REFERENCES observation(id));

