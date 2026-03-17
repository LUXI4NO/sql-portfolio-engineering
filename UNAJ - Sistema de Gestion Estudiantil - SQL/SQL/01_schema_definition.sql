CREATE DATABASE SistemaEstudiantil;
USE SistemaEstudiantil;

CREATE TABLE estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    dni VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    f_nacimiento DATE,
    f_ingreso DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE profesores (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    dni VARCHAR(15) UNIQUE NOT NULL,
    especialidad VARCHAR(100)
);

CREATE TABLE materias (
    id_materia INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    obs_materia VARCHAR(255),
    carga_hs INT NOT NULL
);

CREATE TABLE comisiones (
    id_comision INT AUTO_INCREMENT PRIMARY KEY,
    id_materia INT NOT NULL,
    id_profesor INT NOT NULL,
    cuatrimestre VARCHAR(20) NOT NULL,
    turno VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia),
    FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
);

CREATE TABLE inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_comision INT NOT NULL,
    anio_lectivo INT NOT NULL,
    estado_alumno ENUM('Regular','Libre','Finalizado') NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante) ON DELETE CASCADE,
    FOREIGN KEY (id_comision) REFERENCES comisiones(id_comision)
);

CREATE TABLE calificaciones (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_inscripcion INT NOT NULL,
    tipo_examen VARCHAR(50) NOT NULL,
    valor_nota DECIMAL(4,2) NOT NULL,
    FOREIGN KEY (id_inscripcion) REFERENCES inscripciones(id_inscripcion) ON DELETE CASCADE
);

CREATE INDEX idx_insc_estudiante ON inscripciones(id_estudiante);
CREATE INDEX idx_insc_comision ON inscripciones(id_comision);
CREATE INDEX idx_calif_inscripcion ON calificaciones(id_inscripcion);
CREATE INDEX idx_materia_nombre ON materias(nombre);
