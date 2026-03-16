SELECT nombre, apellido, email FROM estudiantes 
WHERE f_ingreso < '2023-01-01' ORDER BY apellido ASC;

UPDATE profesores SET especialidad = 'Ingeniería de Datos y Alta Disponibilidad' 
WHERE id_profesor = 1;

DELETE FROM comisiones WHERE id_comision = 99; 

SELECT m.nombre AS materia, p.apellido AS profesor, c.turno 
FROM comisiones c
JOIN materias m ON c.id_materia = m.id_materia
JOIN profesores p ON c.id_profesor = p.id_profesor;

SELECT e.nombre, e.apellido, m.nombre AS materia, i.estado_alumno
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN materias m ON i.id_materia = m.id_materia
WHERE e.dni = 44555666;

SELECT DISTINCT m.nombre FROM materias m
JOIN comisiones c ON m.id_materia = c.id_materia
WHERE c.turno = 'Noche';

SELECT m.nombre, ROUND(AVG(c.valor_nota), 2) AS promedio
FROM calificaciones c
JOIN inscripciones i ON c.id_inscripcion = i.id_inscripcion
JOIN materias m ON i.id_materia = m.id_materia
GROUP BY m.nombre HAVING promedio > 6;

SELECT c.turno, COUNT(i.id_inscripcion) AS total_alumnos
FROM comisiones c
JOIN materias m ON c.id_materia = m.id_materia
JOIN inscripciones i ON m.id_materia = i.id_materia
GROUP BY c.turno;

SELECT DISTINCT e.apellido, m.nombre AS materia, c.valor_nota
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN materias m ON i.id_materia = m.id_materia
JOIN calificaciones c ON i.id_inscripcion = c.id_inscripcion
WHERE c.valor_nota < 6;

SELECT nombre, carga_hs FROM materias
WHERE carga_hs > (SELECT AVG(carga_hs) FROM materias);