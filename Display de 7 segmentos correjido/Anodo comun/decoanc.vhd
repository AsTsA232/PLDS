-- Decodificador a anodo comun
-- Diseñador: María Teresa Hurtado Gallardo
-- Archivo: deconac.vhd
-- Fecha: 25/03/2025
-- Versión: 1.0
-- Dependencias: Ninguna
-- Cambios: ----


--codigo binario de 4 bits a 7 segmentos anodo comun

library ieee;
use ieee.std_logic_1164.all;

entity decoanc is port(

		--entradas
		b:in std_logic_vector(3 downto 0);
		--salidas
		a,bl,c,d,e,f,g: out std_logic
	);
end decoanc;

architecture act of decoanc is
begin
--display uno (decenas)
	a<=(NOT b(0) AND NOT b(1) AND NOT b(2) AND b(3))OR
	(NOT b(0) AND b(1) AND NOT b(2) AND NOT b(3));
	
	bl<=(NOT b(0) AND b(1) AND NOT b(2) AND b(3))OR
	(b(1) AND b(2) AND NOT b(3))OR
	(b(0) AND b(1) AND NOT b(3))OR
	(b(0) AND b(1) AND b(2));
	
	c<=(NOT b(0) AND NOT b(1) AND b(2) AND b(3))OR
	(b(0) AND b(1) AND NOT b(3))OR
	(b(0) AND b(1) AND b(2));
	
	d<=(NOT b(1) AND NOT b(2) AND b(3))OR
	(NOT b(0) AND b(1) AND NOT b(2) AND NOT b(3))OR
	(b(1) AND b(2) AND b(3))OR
	(b(0) AND NOT b(1) AND b(2) AND NOT b(3));
	
	e<=(NOT b(0) AND b(3))OR
	(NOT b(0) AND b(1) AND NOT b(2));
	
	f<=(NOT b(0) AND NOT b(1) AND b(3))OR
	(NOT b(0) AND NOT b(1) AND b(2))OR
	(NOT b(0) AND b(2) AND b(3));
	
	g<=(NOT b(0) AND NOT b(1) AND NOT b(2))
	OR(b(0) AND b(1) AND NOT b(2));
end act;