
select*
from aula

create table aula(
id_aulas int primary key not null,
)


insert into aula values(001)
insert into aula values(002)
insert into aula values(004)
insert into aula values(005)
insert into aula values(006)







create table estudiante(

id_matricula int primary key not null,
nombre varchar(40)not null,
apellido varchar(40)not null,
sexo char(1) constraint ck_sexo check(sexo in ('F','M')),
carrera varchar(40)not null,
id_aula int foreign key references aula(id_aulas),

)

insert into estudiante(id_matricula,nombre,apellido,sexo,carrera,id_aula) values(201144,'Morphys','DM','M','Desarollo en sofware',001)
insert into estudiante(id_matricula,nombre,apellido,sexo,carrera,id_aula) values(201147,'rosa','martinez','F','Desarollo en sofwar',002)
insert into estudiante(id_matricula,nombre,apellido,sexo,carrera,id_aula) values(201141,'mario','perez','M','Desarollo en sofwar',004)
insert into estudiante(id_matricula,nombre,apellido,sexo,carrera,id_aula) values(201161,'alberto','martinez','M','Desarollo en sofwar',004)

SELEcT*
FROM ESTUDIANTE