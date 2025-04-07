------------------------------------------------------------------------------------
-- Ecuaciones ALU grande
-- Diseñador: María Teresa Hurtado Gallardo
-- Archivo: Alug.vhd
-- Fecha: 02/04/2025--
-- Versión: 1.0
-- Dependencias: Ninguna
-- Cambios: ----
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Alug is
    port
    (
        -- Entradas
        A, B, S : in std_logic_vector(3 downto 0);
		  M, CN,HD: in std_logic;
        -- Salidas
        F: out std_logic_vector(4 downto 0);
		  CO: out std_logic_vector(1 downto 0)
    );
end Alug;

architecture act of Alug is
begin
	Alum : process(A,B,S,M,CN)
	begin
	if(HD='0')then
	
	--primer renglon
			if (S="0000") then
		
				if M='1' then
				
					F<=NOT('0'& A);
				else
					if CN='0' then
					
					F<=('0'& A)-1;
					
					else
					
					F<=('0'& A);
					
					end if;

				end if;
			
	--SEGUNDO RENGLON		
			
			elsif (S="0001") then
				if M='1' then
				
					F<=NOT (('0'& A) AND ('0'& B) );
				else
					if CN='0' then
					
					F<= (('0'& A) AND ('0'& B) )-1;
					
					else
					
					F<=('0'& A) AND ('0'& B);
					
					end if;
				end if;
			
	--TERCER RENGLON
		
			elsif (S="0010") then
				if M='1' then
				
					F<=(NOT ('0'& A)) OR ('0'& B) ;
					
				else
					if CN='0' then
					
					F<= ((NOT ('0'& B)) AND ('0'& A))-1;
					
					else
					
					F<= ((NOT ('0'& B)) AND ('0'& A));
					
					end if;
				end if;	
				
				
	--CUARTO RENGLON
		
			elsif (S="0011") then
				if M='1' then
				
					F<="00001";
					
				else
					if CN='1' then
					
					F<= "01111";
					
					else
					
					F<= "00000";
					
					end if;
				end if;	
		
		
	--QUINTO RENGLON
		
			elsif (S="0100") then
				if M='1' then
				
					F<=NOT(('0'& A) OR ('0'& B));
					
				else
					if CN='1' then
					
					F<=(((NOT ('0'& B)) OR ('0'& A))+ ('0'& A))+1;
					
					else
					
					F<= (((NOT ('0'& B)) OR ('0'& A))+ ('0'& A));
					
					end if;
				end if;	
				
				
	--SEXTO RENGLON
	 
			elsif (S="0101") then
				if M='1' then
				
					F<=NOT('0'& B);
				else
					if CN='1' then
					
					F<= (('0'& A) OR NOT('0'& B))+((('0'& B)) AND ('0'& A))+1;
					
					else
					
					F<=(('0'& A) OR NOT('0'& B))+((('0'& B)) AND ('0'& A));
					
					end if;
				end if; 

			

	--SEPTIMO RENGLON

			elsif (S="0110") then
				if M='1' then
				
					F<=('0'& B)XNOR('0'& A);
				else
					if CN='1' then
					
					F<= ('0'& A)-('0'& B);
					
					else
					
					F<= ('0'& A)-('0'& B)-1;
					
					end if;
				end if;


	--OCTAVO RENGLON

			elsif (S="0111") then
				if M='1' then
				
					F<=((NOT ('0'& B)) OR ('0'& A));
				else
					if CN='1' then
					
					F<= ((NOT ('0'& B)) OR ('0'& A))+1;
					
					else
					
					F<= ((NOT ('0'& B)) OR ('0'& A));
					
					end if;
				end if;

	--NOVENO RENGLON

			elsif (S="1000") then
				if M='1' then
				
					F<=((NOT ('0'& A)) AND ('0'& B));
				else
					if CN='1' then
					
					F<= (('0'& A)+(('0'& A) OR ('0'& B)))+1;
					
					else
					
					F<= ('0'& A)+(('0'& A) OR ('0'& B));
					
					end if;
				end if;		

	--DECIMO RENGLON

			elsif (S="1001") then
				if M='1' then
				
					F<=(('0'& A)XOR ('0'& B));
					
				else
					if CN='1' then
					
					F<= ('0'& B) + ('0'& A)+1;
					
					else
					
					F<= (('0'& B) + ('0'& A));
					
					end if;
				end if;		

	--RENGLON 11
			elsif (S="1010") then
				if M='1' then
				
					F<=('0'& B);
					
				else
					if CN='1' then
					
					F<= ((NOT('0'& B) AND ('0'& A))+(('0'& B) OR ('0'& A)))+1;
					
					else
					
					F<= (NOT('0'& B) AND ('0'& A))+(('0'& B) OR ('0'& A));
					
					end if;
				end if;	
				

	--RENGLON 12			
				
			elsif (S="1011") then
				if M='1' then
				
					F<=('0'& B) OR ('0'& A);
					
				else
					if CN='1' then
					
					F<= (('0'& B) OR ('0'& A))+1;
					
					else
					
					F<= ('0'& B) OR ('0'& A);
					
					end if;
				end if;	
				

			
	--RENGLON 13

			elsif (S="1100") then
				if M='1' then
				
					F<="00001";
					
				else
					if CN='1' then
					
					F<= ('0'& A)+('0'& A);
					
					else
					
					F<= (('0'& A)+('0'& A))+1;
					
					end if;
				end if;
			
	--RENGLON 14

			elsif (S="1101") then
				if M='1' then
				
					F<=(NOT('0'& B))OR('0'& A);
					
				else
					if CN='1' then
					
					F<= (('0'& B)OR('0'& A))+('0'& A);
					
					else
					
					F<= ((('0'& B)OR('0'& A))+('0'& A))+1;
					
					end if;
				end if;
				
	--RENGLON 15

			elsif (S="1110") then
				if M='1' then
				
					F<=('0'& B)OR('0'& A);
					
				else
					if CN='1' then
					
					F<= ((NOT('0'& B))OR('0'& A))+('0'& A);
					
					else
					
					F<= ((('0'& B)AND('0'& A))+('0'& A))+1;
					
					end if;
				end if;			

	--RENGLON 16


			elsif (S="1111") then
				if M='1' then
				
					F<=('0'& A);
					
				else
					if CN='1' then
					
					F<= ('0'& A)-1;
					
					else
					
					F<= ('0'& A);
					
					end if;
				end if;	
		
			end if;
	else
			if (S="0000") then
		
				if M='1' then
				
					F<=NOT('0'& A);
				else
					if CN='0' then
					
					F<=('0'& A)+1;
					
					else
					
					F<=('0'& A);
					
					end if;

				end if;
			
	--SEGUNDO RENGLON		
			
			elsif (S="0001") then
				if M='1' then
				
					F<=NOT (('0'& A) OR ('0'& B) );
				else
					if CN='0' then
					
					F<= (('0'& A) OR ('0'& B) )+1;
					
					else
					
					F<=('0'& A) OR ('0'& B);
					
					end if;
				end if;
			
	--TERCER RENGLON
		
			elsif (S="0010") then
				if M='1' then
				
					F<=(NOT ('0'& A)) AND ('0'& B) ;
					
				else
					if CN='0' then
					
					F<= ((NOT ('0'& B)) OR ('0'& A))+1;
					
					else
					
					F<= ((NOT ('0'& B)) OR ('0'& A));
					
					end if;
				end if;	
				
				
	--CUARTO RENGLON
		
			elsif (S="0011") then
				if M='1' then
				
					F<="00000";
					
				else
					if CN='1' then
					
					F<= "01111";
					
					else
					
					F<= "00000";
					
					end if;
				end if;	
		
		
	--QUINTO RENGLON
		
			elsif (S="0100") then
				if M='1' then
				
					F<=NOT(('0'& A) AND ('0'& B));
					
				else
					if CN='1' then
					
					F<=((NOT ('0'& B)) OR ('0'& A))+ ('0'& A);
					
					else
					
					F<= (((NOT ('0'& B)) OR ('0'& A))+ ('0'& A))+1;
					
					end if;
				end if;	
				
				
	--SEXTO RENGLON
	 
			elsif (S="0101") then
				if M='1' then
				
					F<=NOT('0'& B);
				else
					if CN='1' then
					
					F<= (('0'& A) OR ('0'& B))+((NOT ('0'& B)) AND ('0'& A));
					
					else
					
					F<=(('0'& A) OR ('0'& B))+((NOT ('0'& B)) AND ('0'& A))+1;
					
					end if;
				end if; 

			

	--SEPTIMO RENGLON

			elsif (S="0110") then
				if M='1' then
				
					F<=('0'& B)XOR('0'& A);
				else
					if CN='1' then
					
					F<= ('0'& A)-('0'& B)-1;
					
					else
					
					F<= ('0'& A)-('0'& B);
					
					end if;
				end if;


	--OCTAVO RENGLON

			elsif (S="0111") then
				if M='1' then
				
					F<=((NOT ('0'& B)) AND ('0'& A));
				else
					if CN='1' then
					
					F<= ((NOT ('0'& B)) AND ('0'& A))-1;
					
					else
					
					F<= ((NOT ('0'& B)) AND ('0'& A));
					
					end if;
				end if;

	--NOVENO RENGLON

			elsif (S="1000") then
				if M='1' then
				
					F<=((NOT ('0'& A)) OR ('0'& B));
				else
					if CN='1' then
					
					F<= (('0'& B) AND ('0'& A))+('0'& A);
					
					else
					
					F<= ((('0'& B) AND ('0'& A))+('0'& A))+1;
					
					end if;
				end if;		

	--DECIMO RENGLON

			elsif (S="1001") then
				if M='1' then
				
					F<=(('0'& A)XNOR ('0'& B));
					
				else
					if CN='1' then
					
					F<= ('0'& B) + ('0'& A);
					
					else
					
					F<= (('0'& B) + ('0'& A))+1;
					
					end if;
				end if;		

	--RENGLON 11
			elsif (S="1010") then
				if M='1' then
				
					F<=('0'& B);
					
				else
					if CN='1' then
					
					F<= (NOT('0'& B) OR ('0'& A))+(('0'& B) AND ('0'& A));
					
					else
					
					F<= ((NOT('0'& B) OR ('0'& A))+(('0'& B) AND ('0'& A)))+1;
					
					end if;
				end if;	
				

	--RENGLON 12			
				
			elsif (S="1011") then
				if M='1' then
				
					F<=('0'& B) AND ('0'& A);
					
				else
					if CN='1' then
					
					F<= (('0'& B) AND ('0'& A))-1;
					
					else
					
					F<= ('0'& B) AND ('0'& A);
					
					end if;
				end if;	
				

			
	--RENGLON 13

			elsif (S="1100") then
				if M='1' then
				
					F<="00001";
					
				else
					if CN='1' then
					
					F<= ('0'& A)+('0'& A);
					
					else
					
					F<= (('0'& A)+('0'& A))+1;
					
					end if;
				end if;
			
	--RENGLON 14

			elsif (S="1101") then
				if M='1' then
				
					F<=(NOT('0'& B))OR('0'& A);
					
				else
					if CN='1' then
					
					F<= (('0'& B)OR('0'& A))+('0'& A);
					
					else
					
					F<= ((('0'& B)OR('0'& A))+('0'& A))+1;
					
					end if;
				end if;
				
	--RENGLON 15

			elsif (S="1110") then
				if M='1' then
				
					F<=('0'& B)OR('0'& A);
					
				else
					if CN='1' then
					
					F<= ((NOT('0'& B))OR('0'& A))+('0'& A);
					
					else
					
					F<= ((NOT('0'& B)OR('0'& A))+('0'& A))+1;
					
					end if;
				end if;			

	--RENGLON 16


			elsif (S="1111") then
			if M='1' then
				
					F<=('0'& A);
					
				else
					if CN='1' then
					
					F<= ('0'& A)-1;
					
					else
					
					F<= ('0'& A);
			
	
	end if;
	
	end if;
	 
	end if;
	end if;
	end process;

end act;