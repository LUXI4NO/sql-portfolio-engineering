CREATE DATABASE IF NOT EXISTS gestion_biblioteca;
USE gestion_biblioteca;

-- 2. Tabla de Autores (Para normalizar y cumplir con 3FN)
CREATE TABLE autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);

-- 3. Tabla de Libros
CREATE TABLE libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    id_autor INT,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    stock INT DEFAULT 1 CHECK (stock >= 0),
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor) 
    ON DELETE SET NULL ON UPDATE CASCADE
);

-- 4. Tabla de Usuarios
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 5. Tabla de Prestamos (La que maneja la lógica y concurrencia)
CREATE TABLE prestamos (
    id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT NOT NULL,
    id_usuario INT NOT NULL,
    fecha_salida DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    fecha_devolucion_real DATE,
    estado ENUM('Pendiente', 'Devuelto', 'Vencido') DEFAULT 'Pendiente',
    FOREIGN KEY (id_libro) REFERENCES libros(id_libro),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);