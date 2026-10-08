-- Creación de la Base de Datos
CREATE DATABASE IF NOT EXISTS bti_desarrollo_web;
USE bti_desarrollo_web;

-- Tabla de Cursos / Secciones
CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(50) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    turno VARCHAR(20)
);

-- Tabla de Estudiantes
CREATE TABLE estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_apellido VARCHAR(100) NOT NULL,
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

-- Tabla de Trabajos Prácticos / Asignaturas
CREATE TABLE trabajos_practicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    asignatura VARCHAR(100) NOT NULL,
    puntaje_total INT DEFAULT 30,
    fecha_entrega DATE
);

-- Tabla de Evaluaciones y Calificaciones
CREATE TABLE calificaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    tp_id INT,
    puntos_obtenidos INT,
    estado_logro VARCHAR(20), -- Ej: 'Aprobado' o 'Reprobado'
    enlace_web VARCHAR(255),
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
    FOREIGN KEY (tp_id) REFERENCES trabajos_practicos(id)
);

-- Inserción de datos de ejemplo
INSERT INTO cursos (nombre_curso, seccion, turno) VALUES ('2.º BTI', 'A', 'Mañana');

INSERT INTO estudiantes (nombre_apellido, curso_id) VALUES 
('Juan Pérez', 1),
('María González', 1);

INSERT INTO trabajos_practicos (titulo, asignatura, puntaje_total, fecha_entrega) VALUES 
('Trabajo Práctico: Video y Página Web', 'Software / Desarrollo Web', 30, '2026-10-08');

INSERT INTO calificaciones (estudiante_id, tp_id, puntos_obtenidos, estado_logro, enlace_web) VALUES 
(1, 1, 28, 'Aprobado', 'https://tu-enlace-netlify.app'),
(2, 1, 25, 'Aprobado', 'https://tu-enlace-github.io');

-- Consulta para verificar las entregas y puntajes
SELECT 
    e.nombre_apellido AS Estudiante,
    c.nombre_curso,
    c.seccion,
    tp.asignatura,
    cal.puntos_obtenidos,
    tp.puntaje_total,
    cal.estado_logro,
    cal.enlace_web
FROM calificaciones cal
JOIN estudiantes e ON cal.estudiante_id = e.id
JOIN cursos c ON e.curso_id = c.id
JOIN trabajos_practicos tp ON cal.tp_id = tp.id;-- Creación de la Base de Datos
CREATE DATABASE IF NOT EXISTS bti_desarrollo_web;
USE bti_desarrollo_web;

-- Tabla de Cursos / Secciones
CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(50) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    turno VARCHAR(20)
);

-- Tabla de Estudiantes
CREATE TABLE estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_apellido VARCHAR(100) NOT NULL,
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

-- Tabla de Trabajos Prácticos / Asignaturas
CREATE TABLE trabajos_practicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    asignatura VARCHAR(100) NOT NULL,
    puntaje_total INT DEFAULT 30,
    fecha_entrega DATE
);

-- Tabla de Evaluaciones y Calificaciones
CREATE TABLE calificaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    tp_id INT,
    puntos_obtenidos INT,
    estado_logro VARCHAR(20), -- Ej: 'Aprobado' o 'Reprobado'
    enlace_web VARCHAR(255),
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
    FOREIGN KEY (tp_id) REFERENCES trabajos_practicos(id)
);

-- Inserción de datos de ejemplo
INSERT INTO cursos (nombre_curso, seccion, turno) VALUES ('2.º BTI', 'A', 'Mañana');

INSERT INTO estudiantes (nombre_apellido, curso_id) VALUES 
('Juan Pérez', 1),
('María González', 1);

INSERT INTO trabajos_practicos (titulo, asignatura, puntaje_total, fecha_entrega) VALUES 
('Trabajo Práctico: Video y Página Web', 'Software / Desarrollo Web', 30, '2026-10-08');

INSERT INTO calificaciones (estudiante_id, tp_id, puntos_obtenidos, estado_logro, enlace_web) VALUES 
(1, 1, 28, 'Aprobado', 'https://tu-enlace-netlify.app'),
(2, 1, 25, 'Aprobado', 'https://tu-enlace-github.io');

-- Consulta para verificar las entregas y puntajes
SELECT 
    e.nombre_apellido AS Estudiante,
    c.nombre_curso,
    c.seccion,
    tp.asignatura,
    cal.puntos_obtenidos,
    tp.puntaje_total,
    cal.estado_logro,
    cal.enlace_web
FROM calificaciones cal
JOIN estudiantes e ON cal.estudiante_id = e.id
JOIN cursos c ON e.curso_id = c.id
JOIN trabajos_practicos tp ON cal.tp_id = tp.id;