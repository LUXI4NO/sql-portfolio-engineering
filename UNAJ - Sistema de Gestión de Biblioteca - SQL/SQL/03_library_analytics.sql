SELECT titulo FROM libros;

SELECT titulo FROM libros WHERE id_libro = 1;

SELECT titulo FROM libros WHERE isbn = '978-0132350884';

SELECT nombre, telefono FROM usuarios WHERE nombre = 'Luciano Alvarez';

SELECT * FROM libros WHERE titulo LIKE '%cien%';

SELECT * FROM prestamos WHERE fecha_vencimiento > '2026-03-20';

SELECT * FROM prestamos WHERE estado = 'Pendiente';

SELECT nombre AS lector, email AS contacto FROM usuarios;

SELECT l.titulo, a.nombre AS autor
FROM libros AS l
INNER JOIN autores AS a ON l.id_autor = a.id_autor;

SELECT COUNT(*) AS total_titulos_registrados FROM libros;

SELECT SUM(stock) AS stock_total_fisico FROM libros;

SELECT COUNT(*) AS total_pendientes_devolucion 
FROM prestamos 
WHERE estado = 'Pendiente';

SELECT a.nombre AS autor, COUNT(l.id_libro) AS cantidad_libros
FROM autores a
JOIN libros l ON a.id_autor = l.id_autor
GROUP BY a.nombre;

SELECT u.nombre AS lector, COUNT(p.id_prestamo) AS libros_pendientes
FROM usuarios u
JOIN prestamos p ON u.id_usuario = p.id_usuario
WHERE p.estado = 'Pendiente'
GROUP BY u.nombre;