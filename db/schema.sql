CREATE TABLE if not exists post(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE if not exists candidate(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE if not exists users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT unique,
    password TEXT
);