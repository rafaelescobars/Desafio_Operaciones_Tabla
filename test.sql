--Primera Parte

-- Create a new database called 'Post'
CREATE DATABASE Post;

--Conectarse a la base Post
\c post;

--Mostrar lista de bases
--\l;

--Crear tabla post
CREATE TABLE post(
  id INT GENERATED ALWAYS AS IDENTITY,
  nombre_usuario VARCHAR(25) NOT NULL,
  fecha_creacion DATE NOT NULL,
  contenido VARCHAR(240) NOT NULL,
  descripcion VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

--Insertare post de Pamela
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', '1950-08-28','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspic');

--Insertar segundo post de Pamela
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', '1895-03-30','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspic');

--Insertar post de Carlos
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Carlos', '1492-11-05','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspic');

--Agregar columna titulo a tabla post
ALTER TABLE post ADD titulo VARCHAR(50);

--Agregar titulo a primer post de Pamela
UPDATE post SET titulo='Reclamo Situación Loca' WHERE id=1;

--Agregar titulo a segundo post de Pamela
UPDATE post SET titulo='Descripción Situación Académica' WHERE id=2;

--Agregar titulo a primer post de Carlos
UPDATE post SET titulo='Agradecimientos' WHERE id=3;

--Insertar primer post de Pedro
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '1550-06-15','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspic','Consulta Inicio Clases');

--Insertar segundo post de Pedro
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '1999-04-03','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspic', 'Consulta Inicio Sesión');

--Eliminar post de Carlos
DELETE FROM post WHERE nombre_usuario='Carlos';

--Insertar nuevo post de Carlos
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Carlos', '1510-02-18','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspic', 'Insistencia Consulta');




--Segunda Parte

--Crear tabla comentarios
CREATE TABLE comentarios(
  id INT NOT NULL,
  fecha DATE NOT NULL,
  hora_creacion TIME NOT NULL,
  contenido VARCHAR(240),
  FOREIGN KEY (id) REFERENCES post(id)
);

--Crear primer comentario para post de Pamela
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (1,'2001-03-01','10:00:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Crear segundo comentario para post de Pamela
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (1,'2012-08-19','23:53:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Crear primer comentario para post de Carlos
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (6,'2005-07-06','09:00:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Crear segundo comentario para post de Carlos
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (6,'2007-02-15','23:35:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Crear tercer comentario para post de Carlos
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (6,'2009-12-23','13:00:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Crear cuarto comentario para post de Carlos
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (6,'2005-01-26','17:43:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Insertar nuevo post de Margarita
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Margarita', '2013-01-28','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspic', 'Insistencia Consulta');

--Crear primer comentario para post de Margarita
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (7,'2013-07-06','04:06:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Crear segundo comentario para post de Margarita
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (7,'2013-09-01','07:35:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Crear tercer comentario para post de Margarita
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (7,'2013-12-23','19:45:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Crear cuarto comentario para post de Margarita
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (7,'2014-01-26','22:39:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');

--Crear quinto comentario para post de Margarita
INSERT INTO comentarios(id, fecha, hora_creacion, contenido) VALUES (7,'2016-08-25','15:50:00','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, fuga quis. Quod voluptate, perspiciatis adipisci nisi voluptatem, quam repellat assumenda enim facere ut magni perferendis, velit odio dolore eius exercitationem.');