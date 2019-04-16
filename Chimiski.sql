CREATE TABLE `envios` (`Numero` int(10) NOT NULL,`pNumero` int(10) NOT NULL,`Cantidad` int(20) NOT NULL);

INSERT INTO `envios` (`Numero`, `pNumero`, `Cantidad`) VALUES (100, 1, 500),(100, 2, 1500),(100, 3, 100),(101, 2, 55),(101, 3, 255),(102, 1, 600),(102, 3, 300);

CREATE TABLE `productos` (`pNumero` int(10) NOT NULL,`pNombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,`Precio` float NOT NULL,`Tamaño` varchar(20) COLLATE utf8_spanish2_ci NOT NULL);

INSERT INTO `productos` (`pNumero`, `pNombre`, `Precio`, `Tamaño`) VALUES(1, 'Caramelos', 1.5, 'Chico'),(2, 'Cigarrillos', 45.89, 'Mediano'),(3, 'Gaseosa', 15.8, 'Grande');

CREATE TABLE `proveedores` (  `Numero` int(10) NOT NULL,`Nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,`Domicilio` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,`Localidad` varchar(80) COLLATE utf8_spanish2_ci NOT NULL);

INSERT INTO `proveedores` (`Numero`, `Nombre`, `Domicilio`, `Localidad`) VALUES(100, 'Perez', 'Peron 876', 'Quilmes'),(101, 'Gimenez', 'Mitre 750', 'Avellaneda'),(102, 'Aguirre', 'Boedo 634', 'Bernal');

ALTER TABLE `envios` ADD PRIMARY KEY (`Numero`,`pNumero`);

ALTER TABLE `productos` ADD PRIMARY KEY (`pNumero`);

ALTER TABLE `proveedores` ADD PRIMARY KEY (`Numero`);

1-SELECT * FROM `productos` ORDER BY pNombre ASC
2-SELECT * FROM `proveedores` WHERE proveedores.Localidad = "Quilmes"
3-SELECT * FROM `envios` WHERE envios.Cantidad>200 AND envios.Cantidad<=300
4-SELECT SUM(Cantidad) as "Cantidad total de envios" FROM `envios`;
5-SELECT Numero FROM `envios` LIMIT 3
6-SELECT Nombre , pNombre FROM `Proveedores` , `Productos` , `Envios` WHERE envios.Numero = proveedores.Numero AND envios.pNumero = productos.pNumero ORDER BY envios.Numero ASC
7-SELECT Numero , envios.pNumero AS pNumero , cast((Cantidad*Precio) as decimal(10,2)) as "Monto total" FROM `Productos` , `Envios` WHERE envios.pNumero = productos.pNumero
8-SELECT Numero, pNumero , SUM(Cantidad) as "Cantidad total" FROM `envios` WHERE Numero = 102 AND pNumero = 1
9-SELECT ENVIOS.pNumero as NumeroProducto FROM `envios`,`proveedores` WHERE envios.Numero = proveedores.Numero AND proveedores.Localidad = "Avellaneda" //SELECT pNumero as "Numeros productos" FROM `envios` WHERE Numero IN (101)
10-SELECT nombre as "Nombre con i" , domicilio, localidad FROM `proveedores` where `nombre` LIKE '%i%'
11-INSERT INTO `productos`(`pNumero`, `pNombre`, `Precio`, `Tamaño`) VALUES (4,"Chocolate",25.35,"Chico")
12-INSERT INTO `proveedores` (`Numero`) VALUES (103);
13-INSERT INTO `proveedores` (`Numero`, `Nombre`, `Localidad`) VALUES (107, 'Rosales', 'La Plata');
14-UPDATE `productos` SET `Precio`=97.50 WHERE productos.Tamaño="Grande"
15-UPDATE `productos` SET `Tamaño`="Mediano" WHERE
16-DELETE FROM `productos` WHERE productos.pNumero = 1
17-
