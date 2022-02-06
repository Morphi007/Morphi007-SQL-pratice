


CREATE TABLE Ciudadano(
cedula int primary key,
Nombre varchar(50),
Fecha_nacimiento date,
id_sexo int,
id_provincia int,
id_municipio int,
id_sector int
)




Create table sexo (
ID int primary key,
Descripcion_sexo varchar(11)
)


insert into sexo values
(1,'Mascuclino'),
(2,'Femenino')





create table provincia (
ID int primary key ,
Descripcion varchar(50)
)


create table municipio (
IID int primary key ,
ip_municipio varchar(50),
ID int foreign key references provincia (ID)
)


create table sector (
ID int primary key ,
Descripcion_sector varchar(50),
IID int foreign key references municipio(IID)
)


insert into provincia values
(5,'Santo Domingo'),
(6,'samana'),
(7,'santiago')

 insert into municipio values
(10,'Santo Domingo Este',5),
(11,'Municipio de Boca Chica',5),
(12,'Municipio de Los Alcarrizos',5),
(13,'Municipio de Pedro Brand',5),
(14,'Municipio de San Antonio de Guerra',5),
(15,'Distrito Nacional',5),
(16,' Santo Domingo Norte',5),
(17,' Municipio de Santo Domingo Oeste',5)

insert into sector values
(20,'24 de abril',10),
(21,'30 de mayo ',11),
(22,'Arroyo Manzano ',12),
(23,'Ciudad Colonial',13),
(24,'Los Ríos',14),
(25,'Palma Real',15),
(26,'Cristo Rey ',16),
(27,'Domingo Savio ',17),
(28,'Gualey ',15),
(29,'Honduras del Oeste',17),
(30,'Honduras del Norte',17)



--------------REGISTRO DE CIUDADANOS----------

insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40057,'Juan martinez',1,'09/05/1996 ',5,16,20)
insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40069,'Diana gomez',2,'04/09/1999 ',5,17,23)
insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40045,'Gabriel sanchez',1,'07/05/1994 ',5,12,26)
insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40075,'girbeto Diaz',1,'08/02/2000 ',5,14,27)
insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40048,'Miguelina castillo',2,'07/04/1992 ',5,14,28)
insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40085,'catalina',2,'01/02/1995 ',5,13,30)
insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40055,'roberto medina',1,'09/05/1999 ',5,15,21)
insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40056,'princila martinez',2,'03/02/1945 ',5,13,24)insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40078,'maicol alvarez',1,'08/02/1997 ',5,16,23)
insert into
Ciudadano(cedula,Nombre,Id_sexo,Fecha_nacimiento,id_provincia,Id_municipio,id_sector)
values(40039,'alexandra castro',2,'04/02/1975 ',5,15,27)









----------------------------------------------------la funciones--------------------------------


select*
from municipio

begin tran
update municipio set ip_municipio='SANTO DOMINGO'
where IID=15
--volver hacia atras
rollback
--confirmar cambio
commit






create procedure proc_Ciudadano @cedula int
as
select cedula,id_municipio,ip_municipio as municipio
from ciudadano c
join municipio m on (c.id_municipio=m.IID)
where cedula =@cedula

exec proc_Ciudadano 40056
