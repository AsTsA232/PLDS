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

entity decam is port(

		--entradas
		b0,b1,b2,b3:in std_logic;
		--salidas
		a,b,c,d,e,f,g: out std_logic
	);
end decam;

architecture act of decam is
begin
--display uno (decenas)
	a<=NOT((NOT b0 AND NOT b1 AND NOT b2 AND b3)OR
	(NOT b0 AND b1 AND NOT b2 AND NOT b3));
	
	b<=NOT((NOT b0 AND b1 AND NOT b2 AND b3)OR
	(b1 AND b2 AND NOT b3)OR
	(b0 AND b1 AND NOT b3)OR
	(b0 AND b1 AND b2));
	
	c<=NOT((NOT b0 AND NOT b1 AND b2 AND b3)OR
	(b0 AND b1 AND NOT b3)OR
	(b0 AND b1 AND b2));
	
	d<=NOT((NOT b1 AND NOT b2 AND b3)OR
	(NOT b0 AND b1 AND NOT b2 AND NOT b3)OR
	(b1 AND b2 AND b3)OR
	(b0 AND NOT b1 AND b2 AND NOT b3));
	
	e<=NOT((NOT b0 AND b3)OR
	(NOT b0 AND b1 AND NOT b2));
	
	f<=NOT((NOT b0 AND NOT b1 AND b3)OR
	(NOT b0 AND NOT b1 AND b2)OR
	(NOT b0 AND b2 AND b3));
	
	g<=NOT((NOT b0 AND NOT b1 AND NOT b2)
	OR(b0 AND b1 AND NOT b2));
end act;