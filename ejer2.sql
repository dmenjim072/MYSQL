CREATE DATABASE IF NOT EXISTS ejercicio2;
USE ejercicio2;

create table if not exists asignaturas(
numasigna int unsigned not null, -- Primary key
nomasigna varchar(30),
curso varchar(30),
CONSTRAINT pk_asignaturas PRIMARY KEY (numasigna));

create table if not exists profesores(
numprof int unsigned not null, -- Primary Key
despacho int unsigned not null,
fecnacim date null,
fecingreso date null,
sueldo int unsigned not null,
nomprof varchar(30),
CONSTRAINT pk_profesores PRIMARY KEY (numprof));

create table if not exists deptos(
numdepto int unsigned not null, -- Primary key
presupuesto int unsigned not null,
nomdepto varchar(30),
ubicacion varchar(30),
CONSTRAINT pk_deptos PRIMARY KEY (numdepto));

show tables;


