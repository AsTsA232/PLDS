------------------------------------------------------------------------------------
-- SUMADOR RESTADOR
-- Diseñador: María Teresa hurtado Gallardo
-- Archivo: Sumres.vhd
-- Fecha: 02/04/2025
-- Versión: 1.0
-- Dependencias: Ninguna
-- Cambios: ----
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity Sumres is
    port
    (
        -- Entradas
        A, B, CIN, S : in std_logic;
        -- Salidas
        Z, CO : out std_logic
    );
end Sumres;

--selector=1  "suma"
--selector=0  "resta"

architecture rtl  of Sumres is
begin
    Selec : process(A,B,CIN,S)
    begin
        if S = '1' then
            CO<=(B AND CIN)OR(A AND CIN)OR(A AND B);
				
				Z<=(NOT(A AND B)AND CIN)
				OR(NOT A AND B AND NOT CIN)
				OR(NOT (A AND B AND CIN))
				OR(A AND B AND CIN);
        else
            Z<=(NOT(A AND B)AND CIN)OR(NOT A AND NOT B AND NOT CIN)
				OR(A AND NOT B AND NOT CIN)OR(A AND B AND CIN);
				
				CO<=(NOT A AND CIN)
				OR(NOT A AND B)
				OR(B AND CIN);
				
        end if;
    end process Selec;
end rtl;
