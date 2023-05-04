-- liquibase formatted sql

-- changeset sergeyshapovalov:1
--CREATE TYPE IF NOT EXISTS GENDER AS ENUM  ('Мужчина', 'Женщина');

-- changeset sergeyshapovalov:2
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

-- changeset sergeyshapovalov:3
CREATE TABLE IF NOT EXISTS idrug.users_info
(
    id_user_info BIGSERIAL NOT NULL,
    description VARCHAR(255),
    user_id BIGINT NOT NULL REFERENCES idrug.users(id_user) ON DELETE CASCADE,
    CONSTRAINT pk_users_info PRIMARY KEY (id_user_info)
);

-- changeset sergeyshapovalov:4
CREATE TABLE IF NOT EXISTS idrug.sick_leave
(
    id_sick_leave BIGSERIAL NOT NULL,
    description VARCHAR(1024) NOT NULL,
    create_date TIMESTAMP NOT NULL,
    disease VARCHAR(255) NOT NULL,
    CONSTRAINT pk_sick_leave PRIMARY KEY (id_sick_leave)
);

-- changeset sergeyshapovalov:5
CREATE TABLE IF NOT EXISTS idrug.users_info_sick_leave
(
    sick_leave_id BIGINT NOT NULL REFERENCES idrug.sick_leave(id_sick_leave) ON DELETE CASCADE,
    users_info_id BIGINT NOT NULL REFERENCES idrug.users_info(id_user_info) ON DELETE CASCADE,
    CONSTRAINT pk_users_info_sick_leave PRIMARY KEY (sick_leave_id, users_info_id)
);

-- changeset sergeyshapovalov:6
CREATE TABLE IF NOT EXISTS idrug.pharmacies
(
    id_pharmacy BIGSERIAL NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT pk_pharmacies PRIMARY KEY (id_pharmacy)
);

-- changeset sergeyshapovalov:7
CREATE TABLE IF NOT EXISTS idrug.drugs
(
    id_drug BIGSERIAL NOT NULL,
    name VARCHAR(255) NOT NULL,
    price MONEY NOT NULL,
    prescription BOOLEAN NOT NULL,
    CONSTRAINT pk_drugs PRIMARY KEY (id_drug)
);

-- changeset sergeyshapovalov:8
CREATE TABLE IF NOT EXISTS idrug.drugs_time
(
    id_drugs_time BIGSERIAL NOT NULL,
    drug_id BIGINT NOT NULL REFERENCES idrug.drugs(id_drug) ON DELETE CASCADE,
    "time" TIMESTAMP NOT NULL,
    sick_leave_id BIGINT NOT NULL REFERENCES idrug.sick_leave(id_sick_leave) ON DELETE CASCADE,
    CONSTRAINT pk_drugs_time PRIMARY KEY (id_drugs_time)
);

-- changeset sergeyshapovalov:9
CREATE TABLE IF NOT EXISTS idrug.drugs_pharmacies
(
    pharmacy_id BIGINT NOT NULL REFERENCES idrug.pharmacies(id_pharmacy) ON DELETE CASCADE,
    drug_id BIGINT NOT NULL REFERENCES idrug.drugs(id_drug) ON DELETE CASCADE,
    CONSTRAINT pk_drugs_pharmacies PRIMARY KEY (pharmacy_id, drug_id)
);

-- changeset sergeyshapovalov:10
CREATE TABLE IF NOT EXISTS idrug.diseases
(
    id_disease BIGSERIAL NOT NULL,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(1000) NOT NULL,
    CONSTRAINT pk_diseases PRIMARY KEY (id_disease)
);

-- changeset sergeyshapovalov:11
CREATE TABLE IF NOT EXISTS idrug.drugs_diseases
(
    drug_id BIGINT NOT NULL REFERENCES idrug.drugs(id_drug) ON DELETE CASCADE,
    disease_id BIGINT NOT NULL REFERENCES idrug.diseases(id_disease) ON DELETE CASCADE,
    CONSTRAINT pk_drugs_diseases PRIMARY KEY (drug_id, disease_id)
);