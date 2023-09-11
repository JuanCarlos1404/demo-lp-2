create database gasolinera;

use gasolinera;

create table practicante(
codpract char(3),
nombrepract VARCHAR(50),
apellidopract VARCHAR(50),
dnipract char(8),
fonopract CHAR(9),
direcpract VARCHAR(40),
disponabilidad date
);
insert into practicante values ('111','Johan','Barrueta','71391915','900234876','av 79', '2022-12-12');
select * from practicante;

drop table contrataciones;
create table contrataciones(
CodPrac INT,
nombre VARCHAR(30),
telefono VARCHAR(9),
dni VARCHAR(8),
area VARCHAR(40)
);

insert contrataciones values (1,'Juan Perez','978645213','73651092','Ventas');
insert contrataciones values (2,'Alejandro López','912536708','72688045','Administración');
insert contrataciones values (3,'Rodrigo González','909255278','75700554','Servicio al Cliente');
insert contrataciones values (4,'Diego Sandoval','912365400','72198532','Seguridad');
insert contrataciones values (5,'Lucas Gómez','956721452','79185712','Control de Inventario');
insert contrataciones values (6,'Johan Barrueta','900234876','70172502','Mantenimiento de Equipos');


select * from contrataciones;

create table candidatos(
id int,
nombres VARCHAR(30),
apellidos VARCHAR(9),
edad int,
añosexperiencia int
);

insert into candidatos values (1,'macro','benavidez',16,12);
select * from candidatos;


