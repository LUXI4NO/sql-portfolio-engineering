SELECT nombre, apellido, email 
FROM estudiantes 
WHERE f_ingreso < '2023-01-01' 
ORDER BY apellido;

SELECT 
    m.nombre AS materia,
    p.apellido AS profesor,
    c.turno
FROM comisiones c
JOIN materias m ON c.id_materia = m.id_materia
JOIN profesores p ON c.id_profesor = p.id_profesor;

SELECT 
    e.nombre,
    e.apellido,
    m.nombre AS materia,
    i.estado_alumno
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN comisiones co ON i.id_comision = co.id_comision
JOIN materias m ON co.id_materia = m.id_materia
WHERE e.dni = '44555666';

SELECT 
    m.nombre,
    ROUND(AVG(c.valor_nota), 2) AS promedio
FROM calificaciones c
JOIN inscripciones i ON c.id_inscripcion = i.id_inscripcion
JOIN comisiones co ON i.id_comision = co.id_comision
JOIN materias m ON co.id_materia = m.id_materia
GROUP BY m.nombre;

SELECT 
    m.nombre AS materia,
    e.nombre,
    e.apellido,
    AVG(c.valor_nota) AS promedio,
    RANK() OVER (PARTITION BY m.id_materia ORDER BY AVG(c.valor_nota) DESC) AS ranking
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN comisiones co ON i.id_comision = co.id_comision
JOIN materias m ON co.id_materia = m.id_materia
JOIN calificaciones c ON i.id_inscripcion = c.id_inscripcion
GROUP BY m.id_materia, e.id_estudiante;

SELECT 
    e.nombre,
    e.apellido,
    AVG(c.valor_nota) AS promedio
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN calificaciones c ON i.id_inscripcion = c.id_inscripcion
GROUP BY e.id_estudiante
HAVING promedio < 6;

SELECT 
    m.nombre,
    AVG(c.valor_nota) AS promedio
FROM materias m
JOIN comisiones co ON m.id_materia = co.id_materia
JOIN inscripciones i ON co.id_comision = i.id_comision
JOIN calificaciones c ON i.id_inscripcion = c.id_inscripcion
GROUP BY m.id_materia
ORDER BY promedio ASC;

SELECT nombre, carga_hs 
FROM materias
WHERE carga_hs > (SELECT AVG(carga_hs) FROM materias);
