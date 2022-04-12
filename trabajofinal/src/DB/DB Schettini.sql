create database Schettini; 
use Schettini;



create table cliente(
idcliente int unsigned not null auto_increment,
nombre varchar(120) not null,
apellido varchar(120) not null,
dni int unsigned not null,
primary key (idcliente)
);

create table productos(
idproductos int unsigned not null auto_increment,
nombreproducto varchar(200),
codigo int unsigned not null,
precio int unsigned not null,
primary key (idproductos)
);

create table importador(
idimportador int unsigned not null auto_increment,
pais varchar(120),
nombre varchar(200),
primary key (idimportador)
);

insert into cliente values (null, "Franco", "Sartori", 35646611);
insert into cliente values (null, "Diego", "Maradona", 15645651);
insert into cliente values (null, "Carlos", "Garcia", 22221265);
insert into cliente values (null, "Mario", "Pergolini", 396654123);

insert into productos values (null, "Maquina de Escribir", 00001, 20000);
insert into productos values (null, "Impresora", 00002, 35000);
insert into productos values (null, "Controladora Fiscal", 00003, 10400);
insert into productos values (null, "Rollo de Controladora Fiscal", 00004, 1000);

insert into importador values (null, "Brasil", "ImportaBra");
insert into importador values (null, "Estados Unidos", "ImportaUsa");
insert into importador values (null, "Chile", "ImportaChi");
insert into importador values (null, "Peru", "ImportaPer");

update cliente set nombre = "Franquicio" where idcliente = 1;

delete from productos where idproductos = 4;

