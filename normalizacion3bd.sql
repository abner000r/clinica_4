create database fs2024_normalizacion3;
use fs2024_normalizacion3;

create table clientes(

codigo_cliente int auto_increment primary key,
apellidos varchar(60) not null,
nombres varchar(60) not null,
correo_electronico varchar(70),
calle_avenida varchar(50),
no_casa varchar(40),
zona tinyint
);

create table planes_contratados(
telefono int primary key,
plan_id smallint,
fecha_pago tinyint,
meses_atraso tinyint,
codigo_cliente int
);

create table planes(
plan_id smallint auto_increment primary key,
nombre_plan varchar(50) not null,
pago_mensual float(8,2),
no_minutos smallint,
no_mensajes smallint,
cantidad_datos varchar(30)
);

alter table planes_contratados
add constraint fk_codigo_cliente foreign key(codigo_cliente)
references clientes(codigo_cliente)
on update cascade
on delete cascade;

alter table planes_contratados
add constraint fk_plan_id foreign key(plan_id)
references planes(plan_id)
on update cascade
on delete cascade;































