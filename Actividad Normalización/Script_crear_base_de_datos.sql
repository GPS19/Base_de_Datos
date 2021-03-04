-- CREATE DATABASE Taxis; 
-- USE Taxis; 

-- CREATE TABLE conductores(
-- 	id INT AUTO_INCREMENT PRIMARY KEY, 
--     nombre VARCHAR(50) NOT NULL, 
--     apellido VARCHAR(50) NOT NULL
-- ); 

-- CREATE TABLE pasajeros(
-- 	id INT AUTO_INCREMENT PRIMARY KEY, 
--     nombre VARCHAR(50) NOT NULL, 
--     apellido VARCHAR(50) NOT NULL	
-- ); 


-- CREATE TABLE vehiculos(
-- 	placa_id VARCHAR(10) PRIMARY KEY, 
--     marca VARCHAR(15) NOT NULL, 
--     sub_marca VARCHAR(15) 
-- );


-- CREATE TABLE viajes(
-- 	id_viaje INT AUTO_INCREMENT PRIMARY KEY, 
--     id_conductor INT, 
--     id_pasajero INT, 
--     placa VARCHAR(10), 
-- 	fecha_hora DATETIME,
--     FOREIGN KEY(id_conductor) REFERENCES conductores(id), 
--     FOREIGN KEY(id_pasajero) REFERENCES pasajeros(id), 
--     FOREIGN KEY(placa) REFERENCES vehiculos(placa_id)
-- ); 


-- CREATE TABLE ciudades(
-- 	id INT AUTO_INCREMENT PRIMARY KEY, 	
--     nombre VARCHAR(50)
-- ); 
--     
-- CREATE TABLE codigospostales(
-- 	id INT AUTO_INCREMENT PRIMARY KEY, 
--     id_ciudad INT, 
--     FOREIGN KEY(id_ciudad) REFERENCES ciudades(id)
-- ); 



-- CREATE TABLE direcciones(

-- id_direccion INT AUTO_INCREMENT PRIMARY KEY, 
-- nombreCalle VARCHAR(20) NOT NULL, 
-- numExt INT NOT NULL, 
-- numInt INT, 
-- id_codigoPostal INT, 
-- FOREIGN KEY(id_codigoPostal) REFERENCES codigospostales(id)); 


-- CREATE TABLE cobros(
-- id_viaje INT, 
-- id_direccion_origen INT, 
-- id_direccion_destino INT, 
-- cantidad FLOAT, 
-- FOREIGN KEY(id_viaje) REFERENCES viajes(id_viaje), 
-- FOREIGN KEY(id_direccion_origen) REFERENCES direcciones(id_direccion), 
-- FOREIGN KEY(id_direccion_destino) REFERENCES direcciones(id_direccion)); 



    