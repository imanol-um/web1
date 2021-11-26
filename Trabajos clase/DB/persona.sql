/*Si la Base de datos existe, eliminala*/
DROP SCHEMA IF EXISTS `fes_ico`;
/*No es sensible a mayusculas o minusculas pero es mejor para la lectura usar mayus*/

/*Creacion de la base de datos*/
CREATE SCHEMA IF NOT EXISTS `fes_ico` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;

/*Usamos la base de datos*/
USE `fes_ico`;

/*Creacion de una tabla*/
CREATE TABLE `alumno`(
    `nombre_usuario` text not null,
    `carrera` text not null,
    `no_cuenta` int(10) not null,
    `direccion` text not null,
    `telefono` varchar(12) not null,
    `email` text not null,
    `password` varchar(8) not null,
    `fecha_registro` datetime not null default current_timestamp,
    `permisos` int(11) not null default '1'

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Insertar valores - agregar registros*/
INSERT INTO `alumno`(`nombre_usuario`,`carrera`,`no_cuenta`,`direccion`,`telefono`,`email`,`password`,`fecha_registro`,`permisos`)values
    ('Imanol Uribe','ICO', '317177262','Ecatepec de Morelos','5579854683','Imanol8678@gmail.com','13042001','2020-01-28 13:45:00','1'),
    ('Alejandra Peralta','Ingenierica Mecanica', '317265732','Metro Ciudad Azteca','5521436365','Ale_PM@gmail.com','21032001','2020-01-28 13:45:02','2'),
    ('Victor Sánchez','ICO','316225717','Ermita Zaragoza','5537352507','chivas.victor.03.08@gmail.com','123456','2020-01-28 13:40:00','3');

/*Definir llave primaria*/
ALTER TABLE `alumno`
    ADD PRIMARY KEY (`no_cuenta`);

    