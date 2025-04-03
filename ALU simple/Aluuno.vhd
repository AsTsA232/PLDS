-- ALU 2 puntos
-- Diseñador: María Teresa Hurtado Gallardo
-- Archivo: Aluuno.vhd
-- Fecha: 22/03/2025
-- Versión: 1.0
-- Dependencias: Ninguna
-- Cambios: ----
------------------------------------------------------------------------------------
-- 2 Puntos Extras para el segundo parcial
-- Realizar la implementación, en el CPLD, de la siguiente ALU
-- -------------------------------------
-- OpCode | M = H           | M = L 
--  0  0  | F = /A          | F = A + 1
--  0  1  | F = /(A or B)   | F = A + B
--  1  0  | F = /(A and B)  | F = A - B
--  1  1  | F = /B          | F = B + 1
-- -------------------------------------
-- 5 puntos extras si se implementa la ALU 74LS181
------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity Aluuno is
    port
    (
        A, B : in std_logic_vector(3 downto 0);     -- Operandos de entrada
        op : in std_logic_vector(1 downto 0);   -- Código de operación
        M : in std_logic;                           -- Selector: Lógico / Aritmético
        C : out std_logic;                           -- Acarreo de salida
		  F : out std_logic_vector(3 downto 0)
    );
end Aluuno;

architecture Comportamiento of Aluuno is
begin
	v : process(op,M)
	variable suma : STD_LOGIC_VECTOR(4 downto 0);
    begin 
	 
--ARITMETICAS
        if (M='0' and op="00") then
			suma := ("0" & A) + 1;
		  F <= suma(3 downto 0);
		  C <= suma(4);
			
		  elsif (M='0' and op="01") then
		  
		  suma := ("0" & A) + ("0" & B);
		  F <= suma(3 downto 0);
		  C <= suma(4);
			
		  elsif (M='0' and op="10") then
		  F<=(A-B);
		  
		  elsif (M='0' and op="11") then
		  F<=(B-1);
		  
--LOGICAS		  
		  elsif (M='1' and op="00") then
		  F<=NOT A;
		  
		  elsif (M='1' and op="01") then
		  F<=NOT(A OR B);
		  
		  elsif (M='1' and op="10") then
		  F<=NOT(A OR B);
		  
		  elsif (M='1' and op="11") then
        F<=NOT B;
        end if;
		  
    end process v;
end Comportamiento;