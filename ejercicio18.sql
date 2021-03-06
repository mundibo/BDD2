 drop table if exists libros;

 create table libros(
  codigo serial,
  titulo varchar(40),
  autor varchar(30) not null default 'Desconocido', 
  editorial varchar(20),
  precio decimal(5,2),
  cantidad smallint default 0,
 primary key(codigo)
 );

 insert into libros (titulo,editorial,precio)
  values('Java en 10 minutos','Paidos',50.40);

 insert into libros (titulo,editorial)
  values('Aprenda PHP','Siglo XXI');

 select * from libros;

 select *
  from information_schema.columns 
  where table_name = 'libros';

 insert into libros (titulo,autor,precio,cantidad)
  values ('El gato con botas',default,default,100);
 
 select * from libros;

 insert into libros default values;

 select * from libros;

 insert into libros (titulo,autor,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll',null);

 select * from libros;
