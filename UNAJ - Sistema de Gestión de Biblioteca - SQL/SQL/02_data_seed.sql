INSERT INTO autores (nombre, nacionalidad) VALUES 
('Gabriel García Márquez', 'Colombiana'),
('J.K. Rowling', 'Británica'),
('Jorge Luis Borges', 'Argentina'),
('Robert C. Martin', 'Estadounidense'),
('Italo Calvino', 'Italiana');

INSERT INTO libros (titulo, id_autor, isbn, stock) VALUES 
('Cien años de soledad', 1, '978-0307474728', 5),
('Harry Potter y la piedra filosofal', 2, '978-8478884452', 10),
('Ficciones', 3, '978-8420633145', 3),
('Clean Code', 4, '978-0132350884', 2),
('Las ciudades invisibles', 5, '978-8478444533', 4);

INSERT INTO usuarios (nombre, email, telefono) VALUES 
('Luciano Alvarez', 'alvarezlucianoezequiel@gmail.com', '1161317865'),
('Lorena Dos Santos', 'lorena.recruiter@softwarefactory.com', '1122334455'),
('Roberto Gomez', 'roberto.voolkia@soporte.com', '1155667788');

INSERT INTO prestamos (id_libro, id_usuario, fecha_salida, fecha_vencimiento, estado) VALUES 
(4, 1, '2026-03-10', '2026-03-17', 'Pendiente'),
(1, 2, '2026-02-01', '2026-02-08', 'Devuelto'),
(3, 3, '2026-03-01', '2026-03-08', 'Vencido');