------------------------------------------------------------------------------------
-- Diseño: Controlador de Servomotores
-- Diseñador: María Teresa Hurtado Gallardo
-- Archivo: Top-Level: Controlador de Servomotores
-- Versión: 1.0
-- Fecha: 05/04/2025
-- Revisión: 1.1
------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Componentes.all;

entity Ctrl_Servos is
    port
    (
        sel : in std_logic_vector(1 downto 0); --Seleccion del generador
		  		  
		  clk : in std_logic;         -- Frecuencia principal = 50MHz
        rst : in std_logic;         -- Reset general
        Positivo : in std_logic;    -- Aumenta el ángulo
        Negativo : in std_logic;    -- Disminuye el ángulo
        PWM : out std_logic
    );
end Ctrl_Servos;

architecture rtl of Ctrl_Servos is
    signal A1,A2,A3,A4,A5 : std_logic_vector(19 downto 0);
	 signal PWM1,PWM2,PWM3,PWM4 : std_logic;
begin	
    
    Control : Ctrl_Angulo
    port map
    (
        clk => clk, rst => rst, Positivo => Positivo, Negativo => Negativo,
        Angulo => A1
    );

    Servo_PWM : Generador_PWM
    port map
    (
        clk => clk, rst => rst, Angulo => A1,
        PWM => PWM1
    );
	 
	 
	 
	 Control2 : Ctrl_Angulo
    port map
    (
        clk => clk, rst => rst, Positivo => Positivo, Negativo => Negativo,
        Angulo => A2
    );

    Servo_PWM2 : Generador_PWM
    port map
    (
        clk => clk, rst => rst, Angulo => A2,
        PWM => PWM2
    );
	 
	 
	 
	 Control3 : Ctrl_Angulo
    port map
    (
        clk => clk, rst => rst, Positivo => Positivo, Negativo => Negativo,
        Angulo => A3
    );

    Servo_PWM3 : Generador_PWM
    port map
    (
        clk => clk, rst => rst, Angulo => A3,
        PWM => PWM3
    );
	 
	 

	Control4 : Ctrl_Angulo
    port map
    (
        clk => clk, rst => rst, Positivo => Positivo, Negativo => Negativo,
        Angulo => A4
    );

    Servo_PWM4 : Generador_PWM
    port map
    (
        clk => clk, rst => rst, Angulo => A4,
        PWM => PWM4
    );
	 
	 
	 
	ser : process(sel, clk, rst, Positivo, Negativo)
	begin
	
		case sel is
			when "00" => PWM <= PWM1;
			when "01" => PWM <= PWM2;
			when "10" => PWM <= PWM3;
			when "11" => PWM <= PWM4;
		
		end case;
	
	end process;

end rtl;