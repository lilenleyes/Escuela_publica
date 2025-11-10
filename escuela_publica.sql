mysql> CREATE DATABASE escuela_publica;
Query OK, 1 row affected (0.195 sec)

mysql> use escuela_publica;
Database changed
mysql> CREATE TABLE alumnos (
    ->     id_alumno INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre VARCHAR(50),
    ->     apellido VARCHAR(50),
    ->     fecha_nacimiento DATE
    -> );
Query OK, 0 rows affected (0.625 sec)

mysql> CREATE TABLE docentes (
    ->     id_docente INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre VARCHAR(50),
    ->     apellido VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.358 sec)

mysql> CREATE TABLE materias (
    ->     id_materia INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_materia VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.559 sec)

mysql> CREATE TABLE cursos (
    ->     id_curso INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_curso VARCHAR(50)
    -> );
Query OK, 0 rows affected (1.797 sec)

mysql> CREATE TABLE inscripciones (
    ->     id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_alumno INT,
    ->     id_curso INT,
    ->     FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
    ->     FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
    -> );
Query OK, 0 rows affected (0.920 sec)

mysql> CREATE TABLE calificaciones (
    ->     id_calificacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_alumno INT,
    ->     id_materia INT,
    ->     nota DECIMAL(4,2),
    ->     fecha DATE,
    ->     FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
    ->     FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
    -> );
Query OK, 0 rows affected (0.553 sec)

mysql> INSERT INTO alumnos (nombre, apellido, fecha_nacimiento)
    -> VALUES
    -> ('Juan', 'Pérez', '2006-04-10'),
    -> ('María', 'López', '2005-11-22'),
    -> ('Carlos', 'Gómez', '2006-01-15');
Query OK, 3 rows affected (0.268 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO docentes (nombre, apellido)
    -> VALUES
    -> ('Laura', 'Martínez'),
    -> ('Pedro', 'Rojas');
Query OK, 2 rows affected (0.079 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO materias (nombre_materia)
    -> VALUES
    -> ('Matemática'),
    -> ('Lengua'),
    -> ('Historia');
Query OK, 3 rows affected (0.074 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO cursos (nombre_curso)
    -> VALUES
    -> ('1er Año'),
    -> ('2do Año');
Query OK, 2 rows affected (0.096 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO inscripciones (id_alumno, id_curso)
    -> VALUES
    -> (1,1),
    -> (2,1),
    -> (3,2);
Query OK, 3 rows affected (0.114 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO calificaciones (id_alumno, id_materia, nota, fecha)
    -> VALUES
    -> (1,1,8.5,'2024-11-10'),
    -> (1,2,7.0,'2024-11-11'),
    -> (2,1,6.0,'2024-11-12'),
    -> (3,3,9.0,'2024-11-10');
Query OK, 4 rows affected (0.091 sec)
Records: 4  Duplicates: 0  Warnings: 0