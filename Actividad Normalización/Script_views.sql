-- CREATE VIEW conductor_viajes
-- AS
-- SELECT nombre, COUNT(*) AS "Total de viajes" from conductores
-- JOIN viajes
-- ON viajes.id_conductor = conductores.id
-- GROUP BY conductores.id; 


-- CREATE VIEW vehiculo_viajes
-- AS
-- SELECT placa_id, COUNT(*) AS "Total de viajes" from vehiculos
-- JOIN viajes
-- ON viajes.placa = vehiculos.placa_id
-- GROUP BY vehiculos.placa_id
-- ORDER BY 2 DESC; 


-- CREATE VIEW ganancias_mes_año
-- AS
-- SELECT CONCAT(MONTH(fecha_hora), " - ", YEAR(fecha_hora)) AS "Mes_Año", SUM(cantidad) FROM viajes
-- JOIN cobros
-- ON cobros.id_viaje = viajes.id_viaje
-- GROUP BY Mes_Año
-- ORDER BY 1 DESC; 


-- CREATE VIEW viajesitos
-- AS
-- SELECT id_viaje, CONCAT(conductores.nombre, " ", conductores.apellido) AS Conductor, CONCAT(pasajeros.nombre, " ", pasajeros.apellido) AS Pasajero, viajes.placa AS Placa, viajes.fecha_hora AS "Fecha y Hora", CONCAT(direcciones.nombreCalle, " ", direcciones.numExt, " ", direcciones.numInt, " ", codigosPostales.id, " ", ciudades.nombre) AS "Dirección origen", CONCAT(direcciones.nombreCalle, " ", direcciones.numExt, " ", direcciones.numInt, " ", codigosPostales.id, " ", ciudades.nombre) AS "Dirección Destino", cobros.cantidad AS "Cantidad del viaje"
-- FROM viajes 
-- JOIN conductores
-- ON viajes.id_conductor = conductores.id
-- JOIN pasajeros
-- ON viajes.id_pasajero = pasajeros.id
-- JOIN cobros
-- USING(id_viaje)
-- JOIN direcciones
-- ON cobros.id_direccion_origen = direcciones.id_direccion
-- JOIN codigospostales
-- ON codigospostales.id = direcciones.id_codigoPostal
-- JOIN ciudades
-- ON ciudades.id = codigospostales.id_ciudad; 







