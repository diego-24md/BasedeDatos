CREATE DATABASE aprende_peru;
USE aprende_peru;

CREATE TABLE personas (
    id BIGINT PRIMARY KEY,
    apellidos VARCHAR(100),
    nombres VARCHAR(100),
    dni CHAR(8),
    telefono CHAR(9),
    email VARCHAR(100)
);

CREATE TABLE administradores (
    id BIGINT PRIMARY KEY,
    idpersona BIGINT,
    nomuser VARCHAR(50),
    password VARCHAR(100),
    nivelacceso CHAR(1),
    FOREIGN KEY (idpersona) REFERENCES personas(id)
);

CREATE TABLE categorias (
    id BIGINT PRIMARY KEY,
    categoria VARCHAR(100)
);

CREATE TABLE evaluaciones (
    id BIGINT PRIMARY KEY,
    idadministrador BIGINT,
    idcategoria BIGINT,
    titulo VARCHAR(200),
    fechacreacion DATETIME,
    duracion SMALLINT,
    fechainicio DATETIME,
    fechafin DATETIME,
    FOREIGN KEY (idadministrador) REFERENCES administradores(id),
    FOREIGN KEY (idcategoria) REFERENCES categorias(id)
);

CREATE TABLE preguntas (
    id BIGINT PRIMARY KEY,
    idevaluacion BIGINT,
    pregunta VARCHAR(500),
    puntaje DECIMAL(5,2),
    rutaimagen VARCHAR(255),
    FOREIGN KEY (idevaluacion) REFERENCES evaluaciones(id)
);

CREATE TABLE alternativas (
    id BIGINT PRIMARY KEY,
    idpregunta BIGINT,
    texto VARCHAR(500),
    escorrecta BOOLEAN,
    FOREIGN KEY (idpregunta) REFERENCES preguntas(id)
);

CREATE TABLE asignaciones (
    id BIGINT PRIMARY KEY,
    idalumno BIGINT,
    idevaluacion BIGINT,
    fechainicio DATETIME,
    fechafin DATETIME,
    FOREIGN KEY (idalumno) REFERENCES personas(id),
    FOREIGN KEY (idevaluacion) REFERENCES evaluaciones(id)
);

CREATE TABLE respuestas (
    id BIGINT PRIMARY KEY,
    idasignacion BIGINT,
    idpregunta BIGINT,
    idalternativa BIGINT,
    escorrecta BOOLEAN,
    FOREIGN KEY (idasignacion) REFERENCES asignaciones(id),
    FOREIGN KEY (idpregunta) REFERENCES preguntas(id),
    FOREIGN KEY (idalternativa) REFERENCES alternativas(id)
);

