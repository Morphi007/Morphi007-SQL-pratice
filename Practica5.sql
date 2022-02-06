CREATE DATABASE Cedulacion
USE Cedulacion

CREATE TABLE Provincias
(
id int primary key,
Nombre_provincia varchar(50)
)
 

CREATE TABLE Municipios
(
Nombre_municipio varchar (50) primary key,
Codigo_provincia int
)

CREATE TABLE Sectores
(
Nombre_sector varchar (50) primary key,
Codigo_municipio int
)


CREATE TABLE Personas
(
Nombre varchar (50),
Sexo varchar (10),
edad int ,
Provincia int ,
Municipio int ,
Sector int
)

INSERT INTO Provincias
VALUES
(1,'Azua'), 
(2,'Bahoruco'), 
(3,'Barahona'),
(4,'Dajabón' ),
(5,'Distrito Nacional'),
(6,'Duarte'), 
(7,'Elías Piña'), 
(8,'El Seibo'),
(9,'Espaillat'), 
(10,'Hato Mayor'), 
(11,'Hermanas Mirabal'), 
(12,'Independencia'), 
(13,'La Altagracia'), 
(14,'La Romana'), 
(15,'La Vega'), 
(16,'María Trinidad Sánchez'), 
(17,'Monseñor Nouel'), 
(18,'Monte Cristi'), 
(19,'Monte Plata' ),
(20,'Pedernales' ),
(21,'Peravia' ),
(22,'Puerto Plata'), 
(23,'Samaná' ),
(24,'San Cristóbal' ),
(25,'San José de Ocoa' ),
(26,'San Juan' ),
(27,'San Pedro de Macorís' ),
(28,'Sánchez Ramírez' ),
(29,'Santiago' ),
(30,'Santiago Rodríguez' ),
(31,'Santo Domingo' ),
(32,'Valverde' )

INSERT INTO Municipios(Nombre_municipio, Codigo_provincia)
VALUES 
('Santo Domingo Este', 1),
('Santo Domingo Norte', 1),
('Santo Domingo Oeste', 1),
('Boca Chica', 1),
('Los Alcarrizos', 1),
('Pedro Brand', 1),
('San Antonio de Guerra', 1),
('San Luis', 1),
('Las Terrenas', 2),
('Santa Barbara de Samana', 2),
('Sanchez', 2),
('Cabrera', 3),
('El Factor', 3),
('Nagua', 3),
('Rio San Juan', 3),
('Consuelo', 4),
('Guayacanes', 4),
('Los llanos', 4),
('Quisquella', 4),
('Ramon Santana', 4),
('San Pedro de Macoris', 4),
('Guaymate', 5),
('La Romana', 5),
('Villa Hermosa', 5)

INSERT INTO Sectores(Nombre_sector, Codigo_municipio)   
VALUES
('Alma Rosa I', 1),
('Barrio Lindo', 4),
('Km 3 1/2', 4),
('Las Américas', 1),
('Los Mina', 1),
('Naime', 4),
('Punta de Garza', 4),
('Placer Bonito', 4),
('San Isidro', 1),
('San Luis', 1)

INSERT INTO Personas(Nombre, Sexo, edad, Provincia, Municipio, Sector)
VALUES 
('Wilson brea'	     ,'Hombre',		30, 23, 1, 1),
('Erika Mota'	     ,'Mujer',		20, 23, 1, 1),
('Keisy Duran'	     ,'Mujer',		45, 23, 1, 1),
('Karina Perez '     ,'Hombre',		18, 1, 3, 3),
('Francisco Bono'    ,'Hombre',		32, 1, 3, 3),
('Mama Tingo'        ,'Mujer',		25, 1, 3, 3),
('Maria Montes'      ,'Mujer',      28, 1, 3, 3),
('Fredis Beras Goico' ,'Hombre',    40, 1, 3, 3)

truncate table personas
/* Número de Municipios de la Provincia Santo Domingo.*/

SELECT COUNT(Codigo_provincia) Municipios_Provincia_Santo_Domingo
FROM Municipios
WHERE Codigo_provincia = 1

/* Número de Hombres y Mujeres de la Provincia Samaná.*/
SELECT COUNT(Municipio) Hombres_y_Mujeres_de_Samana
FROM Personas
WHERE Municipio = 3
GROUP BY Sexo

/* Número de jóvenes entre 18 y 25 años en el Municipio de Nagua.*/
SELECT COUNT(edad) Personas_Municipio_de_Nagua
FROM Personas
WHERE edad > 18 and edad <= 25
GROUP BY Sexo

/*- Cúantas Provincias tienen más de 5 Municipios.*/
SELECT COUNT(Nombre_municipio) Municipios_mas_de_5
FROM Municipios
WHERE Codigo_provincia <= 5
GROUP BY Codigo_provincia 

/*- numero de municipio por provincia  .*/
SELECT id AS ID	, 
COUNT(*)  Municipio   
FROM Provincias 
GROUP BY Codigo_provincia 


/* - Cuántos sectores tiene el Municipio de Santo Domingo Este. */
SELECT COUNT(Codigo_municipio) Sectores_Santo_Domingo_Este
FROM Sectores
WHERE Codigo_municipio == 1