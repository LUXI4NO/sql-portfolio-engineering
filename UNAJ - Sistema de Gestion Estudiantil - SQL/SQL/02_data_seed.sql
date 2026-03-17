INSERT INTO estudiantes (nombre, apellido, dni, email, f_nacimiento, f_ingreso) VALUES
('Luciano', 'Alvarez', '44555666', 'alvarezlucianoezequiel@gmail.com', '2002-11-22', '2022-03-10'),
('Ana', 'García', '45123456', 'ana.garcia@gmail.com', '2003-05-15', '2022-03-11'),
('Carlos', 'Pérez', '43888777', 'cperez@outlook.com', '2001-08-20', '2022-03-10'),
('Marina', 'López', '45666111', 'mlopez@gmail.com', '2003-12-01', '2023-03-15'),
('Enzo', 'Fernández', '42999000', 'enzo_f@yahoo.com', '2000-01-17', '2021-08-10');

INSERT INTO profesores (nombre, apellido, dni, especialidad) VALUES
('Roberto', 'Grispino', '20111222', 'Ingeniería de Datos'),
('Laura', 'Sánchez', '25333444', 'Programación'),
('Oscar', 'Varela', '22555666', 'Sistemas Operativos');

INSERT INTO materias (nombre, obs_materia, carga_hs) VALUES
('Bases de Datos I', 'Foco en SQL y normalización', 128),
('Programación I', 'Intro a C#', 96),
('Sistemas Operativos', 'Linux y Kernel', 128);

INSERT INTO comisiones (id_materia, id_profesor, cuatrimestre, turno) VALUES
(1, 1, '1C-2026', 'Noche'),
(2, 2, '1C-2026', 'Tarde'),
(3, 3, '2C-2026', 'Noche');

INSERT INTO inscripciones (id_estudiante, id_comision, anio_lectivo, estado_alumno) VALUES
(1, 1, 2026, 'Regular'),
(2, 1, 2026, 'Regular'),
(3, 3, 2026, 'Libre'),
(4, 1, 2026, 'Regular'),
(5, 3, 2026, 'Finalizado');

INSERT INTO calificaciones (id_inscripcion, tipo_examen, valor_nota) VALUES
(1, '1er Parcial', 8.50),
(1, '2do Parcial', 7.00),
(2, '1er Parcial', 4.00),
(3, '1er Parcial', 9.00),
(5, 'Final', 10.00);
