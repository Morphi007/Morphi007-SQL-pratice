
------------------------------------------------creando tabla direcion--------------------------------------------

create table provincia (
 ID int primary key ,
 ip_pronvincia varchar(50)
 
)

create table municipio (
 IID int primary key,
ip_municipio varchar(50),
ID int
) 


create table sectores (
 ID int primary key ,
ip_sector varchar(50),
IID int

) 

 alter table  municipio
 add constraint pk_ID_pro foreign key(ID) references provincia(ID) 

alter table sectores
 add constraint pk_ID_sect foreign key(IID) references municipio(IID) 


 insert into provincia values
(5,'Santo Domingo'),
(6,'San Pedro de Macorís'),
(7,'santiago'),
(8,'Azua'),
(9,'La Romana'),
(10,'El Seibo'),
(11,'Elías Piña'),
(12,'La Altagracia'),
(13,'Monte Cristi'),
(14,'Monte Plata')


insert into municipio values
(100,'Municipio de Santo Domingo Este',5),
(101,'Municipio de Consuelo',6),
(102,'Municipio de Villa González',7),
(103,'Municipio de Pueblo Viejo',8),
(104,' Municipio de La Romana',9),
(105,'Municipio de Miches',10),
(106,'Municipio de Juan Santiago',11),
(107,' Municipio de Higüey',12),
(108,'Municipio de Montecristi',13),
(109,'Municipio de Bayaguana',14)

insert into sectores values
(401,'sector Santo Domingo Este',100),
(402,'sector petropolis',101),
(403,'sector nueva esperanza',102),
(404,'sector centro #2',103),
(405,'sector villa verde',104),
(406,'sector la jabilla',105),
(407,'Sector del 27 de Febrero',106),
(408,'sector la caoba',107),
(409,'sector Bella vista',108),
(410,'sector suizo',109)



------------------------------------------------------------------------creando tabla cargos-------------------------------------------



create table cargo(
id_CARGO int primary key not null,
Descricion varchar(50)
)


---creando tabla empleado----

create table Empleado(
IDEMPLEADO int primary key not null,
CEDULA int not null,
NOMBRE varchar(50) not null,
APELLIDO varchar(50) not null,
SEXO varchar(2) not null,
FECHA_De_nacimiento date  not null,
DIRECCION varchar(70)  not null,
TELEFONO varchar(16)  not null,
EMAIL varchar(60)  not null,
FECHA_DE_INGRESO date  not null,
id_PROVINCIA int   not null,
id_municipio int not null,
id_SECTOR int  not null,
id_cargo int references cargo(id_cargo)
)

insert into cargo values
(001,'Super visor'),
(002,'en cargado de la producion'),
(003,'en cargado de impresion'),
(004,'tecnico de mantenimiento'),
(005,'Repartidor'),
(006,'conserge'),
(007,'seguridad'),
(008,'vendedor'),
(009,'contable'),
(0010,'en cargado de caja')





------------------------------registro de los empleado------------------------------------------------------

select*
from Empleado


insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971250,40278531,'luiz miguel','martinez','M','05/7/1982','calle segunda #4','820554564565','luizmiguels7@gmail.com','01/05/2009',5,100,401,001)

insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971251,405451,'andres','castillo','M','05/8/1991','avenida calle primera #1','8254645612','eldrescastillo77@gmail.com','01/05/2009',5,100,401,002)

insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971252,4027476,'cristian','alvarez','M','05/1/1972','avenida sanchez#5','82954512235','crisntiams7@gmail.com','02/05/2009',5,100,401,002)


insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971253,4027865,'Daniels','guillermo','M','05/7/1971','calle juan lula#84','820554564565','danielyuls@gmail.com','07/04/2009',6,101,402,002)

insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971254,40278531,'luiz miguel','martinez','M','05/7/1982','calle segunda #4','820554564565','luizmiguels7@gmail.com','01/05/2009',6,101,402,002)

insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971255,40278531,'victor','sanchez','M','07/2/1971','alma rosa#2','80245645561','victorFF@gmail.com','10/01/2008',5,100,401,005)

insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971256,40278531,'agustin','medina','M','05/7/1992','calle lua54','8284561231','jyusjsn7@gmail.com','10/01/2008',5,100,401,005)

insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971257,40278531,'luiz miguel','martinez','M','05/7/1982','calle segunda #4','820554564565','luizmiguels7@gmail.com','05/04/2019',5,100,401,007)


insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971258,40278531,'samuel','martinez loran','M','05/7/1856',' avenida dependecia #2','8465416516','samuelmartines@gmail.com','01/05/2010',5,100,401,006)


insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971259,40278531,'miguel ','samuel de la rosa','M','05/7/1956',' maquiteria calle 2da','845612645654','miguelrosa44@gmail.com','07/05/2010',5,100,401,008)


insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971260,40278531,'jimena ','alcantara guzman','F','05/7/1995',' avenida dependecia #2','854656456512','jimenza8754@hotmail.com','05/06/2010',5,100,401,009)


insert into Empleado(IDEMPLEADO,CEDULA,NOMBRE,APELLIDO,SEXO,FECHA_De_nacimiento,DIRECCION,TELEFONO,EMAIL,FECHA_DE_INGRESO,id_PROVINCIA,id_municipio,id_SECTOR,id_cargo) 
values(971261,40278531,'princila','montes','F','05/7/1993','calle gomez avenida#4','87654654621','princila6658@gmail.com','04/06/2010',5,100,401,010)


select*
from Empleado

----------------------------------------------------------------registro de provincia,municipio,sectores,-------------------------------------





create table Producto 
( 
cod_producto int primary key not null,
Descricion varchar(50) not null,
Precio decimal(10,2)null,
) 


insert into Producto(cod_producto,Descricion,Precio) values(02001,'paquete de 1x100 fundas',cast(400.00 as decimal(10,2)))----------------------/
insert into Producto(cod_producto,Descricion,Precio) values(02002,'bolsa de plastico reutilable 1x200',cast(800.00 as decimal(10,2)))----------/
insert into Producto(cod_producto,Descricion,Precio) values(02003,'plastico con diseño',cast(200.00 as decimal(10,2)))------------------------/
insert into Producto(cod_producto,Descricion,Precio) values(02004,'platos plasticos 1x300',cast(1500 as decimal(10,2)))----------------------/
insert into Producto(cod_producto,Descricion,Precio) values(02005,'baso plastico 1x50',cast(65.50 as decimal(10,2)))------------------------/
insert into Producto(cod_producto,Descricion,Precio) values(02006,'plastico ligero',cast(45.00 as decimal(10,2)))--------------------------/
insert into Producto(cod_producto,Descricion,Precio) values(02007,'Lona de plastico',cast(900.00 as decimal(10,2)))-----------------------/
insert into Producto(cod_producto,Descricion,Precio) values(02008,'cuchillos afilados de plastico',cast(85.00 as decimal(10,2)))---------/
insert into Producto(cod_producto,Descricion,Precio) values(02009,'Rollo plástico de burbujas',cast(100.00 as decimal(10,2)))-----------/
insert into Producto(cod_producto,Descricion,Precio) values(02010,'plastico negro fino 1x100',cast(78.00 as decimal(10,2)))------------/


select*
from Producto

-----------------------------Registro de los clientes------------------------------------------------------

/* CREANDO TABLAS DEL LADO DEL CLIENTE */


create table cliente (
 id_cliente int primary key not null ,
 nombre varchar(50) not null,
 Telefono varchar(16) not null,
 EMAIL varchar(60) not null,
 fecha_de_registro date not null,
 ID_prvincia int not null,
 ID_municipio int not null,
 ID_sector int not null,
)



insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20100,'La sirena','80254565123','sirena51@sirena.do','04/02/2010',5,100,401)
insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20101,'Jumbo','8026861512','jumboespres@jumbo.do','03/08/2011',5,100,401)
insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20102,'Restaurante gert','84564561248','retaurangert@gmail.com','09/03/2016',5,100,401)
insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20103,'comedor guzman','82456455646','comedor845@guzman.do','07/01/2013',7,102,403)
insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20104,'plaza lama','82348645654','plazalama@plazalama.com','02/05/2011',13,108,409)
insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20105,'super nacional','82454564654','sirenamax@sirenamax.do','09/06/2014',14,109,4010)
insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20106,'Bravo','84561221','bravounitrs@bravo.do','07/03/2012',9,104,405)
insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20107,'sirena max','82456455646','nacionsals@supernacional.do','07/03/2013',12,107,408)
insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20108,'plaza lama','82348645654','plazalama@plazalama.com','02/05/2011',14,109,410)
insert into cliente (id_cliente,nombre, Telefono,EMAIL,fecha_de_registro,ID_prvincia, ID_municipio,ID_sector)values(20109,'la cadena','871132132','lacadenasu@lacadena.do','06/07/2011',9,104,405)

select*
from cliente

---------------------------------------------------------Tabla de factura---------------------------------------------------

select*
from factura

select*
from detalle_factura

create table factura
( 
id_factura int primary key not null,
id_cliente int references cliente(id_cliente),
fecha_factura date not null

) 


create table detalle_factura
( 
ID_detalles int primary key not null,
id_factura int references factura(id_factura),
cod_producto int references producto(cod_producto),
Cantidad int not null,
precio decimal(10,2) not null

) 



------------------------------registro de detalle de factura---------------------------


insert into factura(id_factura,id_cliente,fecha_factura) values(701031,20100,'07/04/2020')
insert into factura(id_factura,id_cliente,fecha_factura) values(701032,20101,'09/02/2020')
insert into factura(id_factura,id_cliente,fecha_factura) values(701033,20102,'03/02/2020')
insert into factura(id_factura,id_cliente,fecha_factura) values(701034,20103,'05/04/2020')
insert into factura(id_factura,id_cliente,fecha_factura) values(701035,20104,'08/06/2020')
insert into factura(id_factura,id_cliente,fecha_factura) values(701036,20105,'01/07/2020')
insert into factura(id_factura,id_cliente,fecha_factura) values(701037,20106,'02/08/2020')
insert into factura(id_factura,id_cliente,fecha_factura) values(701038,20107,'06/05/2020')
insert into factura(id_factura,id_cliente,fecha_factura) values(701039,20108,'05/05/2020')
insert into factura(id_factura,id_cliente,fecha_factura) values(701040,20109,'09/07/2020')




------------------------------registro de Tabla detalle_factura---------------------------


insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852360,701031,02001,15,CAST(6000.00 AS decimal(10,2)))
insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852361,701032,02002,10,CAST(8000.00 AS decimal(10,2)))
insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852363,701033,02003,13,CAST(2000.00 AS decimal(10,2)))
insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852362,701034,02004,15,CAST(15000.00 AS decimal(10,2)))
insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852364,701035,02005,15,CAST(3250.00 AS decimal(10,2)))
insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852365,701036,02006,30,CAST(1350.00 AS decimal(10,2)))
insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852366,701037,02007,15,CAST(8100.00 AS decimal(10,2)))
insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852367,701038,02008,14,CAST(1245.00 AS decimal(10,2)))
insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852368,701039,02009,40,CAST(4000.00 AS decimal(10,2)))
insert into detalle_factura(ID_detalles,id_factura,cod_producto,Cantidad,precio) values(852369,701040,02010,50,CAST(3750.00 AS decimal(10,2)))



select*
from detalle_factura

select*
from Producto


--------------------------------Hacer una vista que muestre las compras o los servicios hechos por cada persona, depende el caso.-----------------------------
create view vw_factura
AS
select f.id_factura as Factura,nombre as Clientes,P.Descricion AS [Producto comprado],df.Cantidad as [cantidad comprada],DF.precio as [precio total de producto],fecha_factura AS FECHA
from factura f
join cliente c on (f.id_cliente=c.id_cliente)
join detalle_factura DF on(f.id_factura=DF.id_factura)
join Producto p on (p.cod_producto=DF.cod_producto)


select*
from vw_factura

/*Hacer un store procedure, que a través del ID de la persona, traiga el total de compras o servicios realizados (monto)*/


create procedure proc_Datosclientes @id_cliente int
as
select c.nombre as Cliente,c.Telefono as Telefono,f.fecha_factura as Fecha_de_compra,sum(df.precio)as total
from cliente c
join factura f on (f.id_cliente=c.id_cliente)
join detalle_factura df on (f.id_factura=df.id_factura)
where c.id_cliente=@id_cliente
group by c.nombre,c.Telefono,f.fecha_factura

exec  proc_Datosclientes 20108

----------------------------------------------------

create procedure proc_empleado @IDEMPLEADO int
as
select IDEMPLEADO,NOMBRE,APELLIDO,SEXO,FECHA_DE_INGRESO,DIRECCION,
TELEFONO,EMAIL,FECHA_DE_INGRESO,
ip_pronvincia as provincia,ip_municipio as Municipio
,ip_sector as sector,Descricion as Cargo
from Empleado e
join cargo c on (e.id_cargo=c.id_CARGO)
join provincia p on (e.id_PROVINCIA=p.ID)
join municipio m on (e.id_municipio=m.IID)
join sectores s on (e.id_SECTOR=s.ID)
where e.IDEMPLEADO=@IDEMPLEADO

exec  proc_empleado 971250