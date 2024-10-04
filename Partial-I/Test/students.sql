CREATE TABLE alumnos (
    expediente INT PRIMARY KEY,
    nombre TEXT,
    apellido TEXT,
    edad INT,
    campus TEXT
);

CREATE TABLE calificaciones (
    id_materia INT,
    expediente INT,
    nombre_materia TEXT,
    calificacion FLOAT,
    FOREIGN KEY (expediente) REFERENCES alumnos(expediente)
);

INSERT INTO alumnos (expediente, nombre, apellido, edad, campus) VALUES
(1, 'Juan', 'García', 25, 'Querétaro'),
(2, 'María', 'Pérez', 23, 'Guanajuato'),
(3, 'Pedro', 'Martínez', 20, 'CDMX'),
(4, 'Ana', 'López', 20, 'Monterrey'),
(5, 'Luis', 'Hernández', 20, 'Guadalajara'),
(6, 'Sofía', 'Ramírez', 19, 'Puebla'),
(7, 'Carlos', 'Torres', 25, 'Veracruz'),
(8, 'Laura', 'González', 18, 'Mérida'),
(9, 'Diego', 'Sánchez', 23, 'Tijuana'),
(10, 'Lucía', 'Morales', 25, 'Hermosillo');

INSERT INTO calificaciones (id_materia, expediente, nombre_materia, calificacion) VALUES
(8, 2, 'Biología', NULL),
(10, 10, 'Deportes', 7.49),
(1, 1, 'Historia', NULL),
(3, 4, 'Deportes', NULL),
(2, 3, 'Arte', 7.68),
(8, 1, 'Inglés', NULL),
(4, 2, 'Física', NULL),
(1, 8, 'Inglés', 7.30),
(3, 6, 'Física', 8.18),
(10, 9, 'Literatura', 8.74),
(10, 6, 'Biología', 9.16),
(5, 5, 'Deportes', NULL),
(8, 9, 'Matemáticas', 6.87),
(7, 8, 'Arte', 8.66),
(4, 8, 'Deportes', 8.68),
(8, 5, 'Química', NULL),
(5, 1, 'Arte', 7.43),
(10, 9, 'Química', 8.12),
(5, 8, 'Arte', 6.66),
(7, 10, 'Inglés', NULL),
(6, 4, 'Historia', 6.77),
(4, 4, 'Arte', NULL),
(9, 6, 'Programación', NULL),
(9, 6, 'Programación', NULL),
(1, 6, 'Arte', NULL),
(9, 4, 'Arte', 8.64),
(4, 8, 'Física', 9.38),
(1, 10, 'Química', 8.18),
(7, 3, 'Deportes', 7.79),
(4, 8, 'Matemáticas', 6.92),
(2, 1, 'Matemáticas', NULL),
(3, 10, 'Física', 7.92),
(9, 4, 'Matemáticas', NULL),
(6, 9, 'Física', 6.58),
(4, 3, 'Matemáticas', 6.05);