

------------------------------------------------------------------------------------
-- Multiplexor buses
-- Diseñador: María Teresa Huartado Gallardo
-- Archivo: Muxpp.vhd
-- Fecha: 29/03/2025
-- Versión: 1.0
-- Dependencias: Ninguna
-- Cambios: ----
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity Muxpp is
    port
    (
        -- Entradas
        A, B : in std_logic_vector(3 downto 0);
		  S : in std_logic;
        -- Salidas
        P: out std_logic_vector(3 downto 0));
end Muxpp;

architecture act of Muxpp is
begin
	process (A, B, S)
	begin
		if S='0' then
			P<=A;
		else
			P<=B;
			
		end if;
	end process;
	
end act;