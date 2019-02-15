-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-02-15 19:51:07.959


CREATE DATABASE Educar;

USE Educar;


-- Tables


-- Table: clase

CREATE TABLE clase (
    id_clase int(10) NOT NULL AUTO_INCREMENT,
    id_materia int(10) NOT NULL,
    id_estudiante int(10) NOT NULL,
    CONSTRAINT clase_pk PRIMARY KEY (id_clase)
);

-- Table: estudiante

CREATE TABLE estudiante (
    documento int(10) NOT NULL,
    nombres text NOT NULL,
    apellidos text NOT NULL,
    telefono text NOT NULL,
    email text NOT NULL,
    CONSTRAINT estudiante_pk PRIMARY KEY (documento)
);

-- Table: materia

CREATE TABLE materia (
    id_materia int(10) NOT NULL AUTO_INCREMENT,
    materia text NOT NULL,
    profesion text NOT NULL,
    CONSTRAINT materia_pk PRIMARY KEY (id_materia)
);

-- Foreign keys

-- Reference: clase_estudiante (table: clase)

ALTER TABLE clase ADD CONSTRAINT clase_estudiante FOREIGN KEY clase_estudiante (id_estudiante)
    REFERENCES estudiante (documento);

-- Reference: clase_materia (table: clase)

ALTER TABLE clase ADD CONSTRAINT clase_materia FOREIGN KEY clase_materia (id_materia)
    REFERENCES materia (id_materia);

-- End of file.