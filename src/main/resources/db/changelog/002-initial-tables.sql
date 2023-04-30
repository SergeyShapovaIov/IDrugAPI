-- liquibase formatted sql

CREATE TYPE GENDER AS ENUM ('Мужчина', 'Женщина');

CREATE TABLE IF NOT EXISTS idrug.users
(

    id_user BIGSERIAL NOT NULL,
    firs_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    age INTEGER NOT NULL,
    sex GENDER NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password  VARCHAR(255) NOT NULL,
    CONSTRAINT pk_users PRIMARY KEY (id_user)

);

CREATE TABLE IF NOT EXISTS idrug.users_info
(
    id_user_info BIGSERIAL NOT NULL,
    description VARCHAR(255),
    user_id BIGINT NOT NULL REFERENCES idrug.users(id_user) ON DELETE CASCADE,
    CONSTRAINT pk_users_info PRIMARY KEY (id_user_info)
);

CREATE TABLE IF NOT EXISTS sick_leave
(
    id_sick_leave BIGSERIAL NOT NULL,
    description VARCHAR(1024) NOT NULL,
    create_date TIMESTAMP NOT NULL,
    disease VARCHAR(255) NOT NULL,
    CONSTRAINT pk_sick_leave PRIMARY KEY (id_sick_leave)
);

CREATE TABLE IF NOT EXISTS users_info_sick_leave
(
    sick_leave_id BIGINT NOT NULL REFERENCES idrug.sick_leave(id_sick_leave) ON DELETE CASCADE,
    users_info_id BIGINT NOT NULL REFERENCES idrug.users_info(id_user_info) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS pharmacies
(
    
);

CREATE TABLE IF NOT EXISTS drugs_time;
(

);

CREATE TABLE IF NOT EXISTS drugs
(

);

CREATE TABLE IF NOT EXISTS drugs_pharmacies
(

);

CREATE TABLE IF NOT EXISTS diseases
(

);

CREATE TABLE IF NOT EXISTS drugs_diseases
(

);