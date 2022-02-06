

-----------------------------------------------------crear tablas y registros---------------------------------------------

CREATE TABLE Ciudadanos (
cedula int primary key,
Nombre varchar(50),
Fecha date,
id_sexo int,
id_provincia int,
id_municipio int,

)


Create table sexo (
ID int primary key,
Descripcion_sexo varchar(11)

)

create table provincia (
 ID int primary key ,
 ip_pronvincia varchar(50)
 
)

create table municipio (
 IID int primary key ,
ip_municipio varchar(50),
ID  int foreign key references provincia (ID)

) 


insert into sexo values
(1,'Mascuclino'),
(2,'Femenino')


 insert into provincia values
(5,'Santo Domingo'),
(6,'samana'),
(7,'santiago')

insert into municipio values
(13,'Santo Domingo Este',5),
(14,' Municipio de Boca Chica',5),
(15,' Alcarrizos',5),
(16,'Pedro Brand',5),
(17,'San Antonio de Guerra',5),
(18,' Santo Domingo Norte',5),
(19,'Santo Domingo Oeste',5),
(20,'santa Barbara',6),
(21,' Las Terrenas',6),
(22,'Sanchez',6),
(23,'EL limon',6),
(24,'Arroyo Barril',6),
(25,'Las Galeras',6),
(30,'Nagua',7),
(31,'san jose de la mata',7),
(32,'Las Gordas',7),
(33,'Arroyo al medio',7)




insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400022,'mario caseres',1,'07/02/1999',5,13)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400023,'maria del carmen',2,'03/07/1987',5,14)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400024,'rosario medina',2,'01/02/2000',5,15)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400025,'sofia guzman',2,'08/03/1991',5,16)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400026,'victoria secret',2,'03/07/2002',5,17)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400027,'samuel sosa',1,'05/05/1995',5,13)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400028,'Rodolfo martinez',1,'09/09/1999',5,13)


insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400031,'sandra castillo',2,'08/02/1999',6,20)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400032,'rosmery duran',2,'07/05/1997',6,20)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400033,'maicol torres',1,'02/07/1994',6,21)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400034,'sandra castillo',2,'08/02/1999',6,23)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400035,'wanner rodiel',1,'08/02/1995',6,24)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400036,'sandra castillo',1,'07/07/1992',6,25)


insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400041,'juan gomez',1,'04/04/1995',7,30)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400042,'gabriel de la rosa',1,'07/08/1998',7,30)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400043,'milka gustieres',2,'02/03/2000',7,32)

insert into Ciudadanos (cedula,Nombre,Id_sexo,Fecha,id_provincia,Id_municipio) values(400046,'rosa iris',1,'03/03/2002',7,33)


---------------------------------Realizar función que obtenga la edad de la persona, al escribir su cédula--------------------------------------




CREATE FUNCTION edad_FECHA (@cedula bigint)
returns int
as
begin
declare @fecha int
SELECT @fecha= datediff(YYYY,Fecha,GETDATE())
from Ciudadanos
where cedula=@cedula
return @fecha
end;

select dbo.edad_FECHA (400026) as edad 




-------- Realizar un trigger que al insertar más de 6 registros simultáneos, dé un error, ya que solo se permiten agregar hasta 5 registros.-------

create trigger TOPCiudadanos on Ciudadanos instead of insert 
as
begin
  declare @Finall int = 5;
  declare @Contador int;
  select @Contador = count(1) from Inserted;
  if @Contador <= @Finall
  begin
    set nocount on;
    insert into Ciudadanos  select * from Inserted;
    set nocount off;
  end
  else
    raiserror('No puede insertar mas de %d registros a la vez', 16, 1, @Finall);
end

insert into Ciudadanos(cedula)values(485515), (40566), (4089985), (47084564), (4089892), (47956232)


/* Realizar una consulta con un control de flujo, para saber si una persona vive en la capital o en el interior, 
dependiendo su municipio de residencia. Usar la vista vwCiudadano*/



create view vwCiudadano
as
select c.cedula,c.Nombre,s.Descripcion_sexo as sexo,m.ip_municipio as Municipio,m.IID as Residencia
from Ciudadanos c
join sexo s on (c.id_sexo=s.ID)
join municipio m on (c.id_municipio=m.IID)


select cedula,Nombre,sexo,municipio,
   case when Residencia between 13 and 14 then'La capital' 
   when Residencia between 17 and 18 then'La capital'
   when Residencia between 18 and 19 then'La capital'
   when Residencia between 20 and 21 then'interior'
   when Residencia between 23 and 24 then'interior'
   when Residencia between 25 and 30 then'interior'
   when Residencia between 32 and 33 then'interior'
   when Residencia between 15 and 16 then'La capital'
     
	 else 'No encontrado' end as Residencia

from vwCiudadano

