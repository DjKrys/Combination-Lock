-------------------------------------------------------------------------------
--
-- Title       : Zamek Szyfrowy
-- Design      : Zamek Szyfrowy
-- Author      : Krzysztof Pokora
-- Company     : AGH Kraków
--
-------------------------------------------------------------------------------
--
-- Description : 
-- Zamek Szyfrowy
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;


entity TutorVHDL is
	port(		
		CLK : in std_logic;
		CLR : in std_logic;
		ENTER : in std_logic;
		PASSWORD : in std_logic_vector(3 downto 0):="0000";
		Q : out std_logic_vector(2 downto 0):="000"
		);
end TutorVHDL;


architecture TutorVHDL of TutorVHDL is	
	type state_type is(s0, s1, s2, s3, s4, s5);
	signal state : state_type := s0; 
	signal ERROR : STD_logic:= '0';		  					
	constant PASS1 : STd_logic_vector(3 downto 0):= "0000";		
	constant PASS2 : STd_logic_vector(3 downto 0):= "0000";
	constant PASS3 : STd_logic_vector(3 downto 0):= "0000";
	constant PASS4 : STd_logic_vector(3 downto 0):= "0000";
	
begin
	
	process(CLR, CLK)
	begin
		if CLR = '1' then  
			state <= s0;
			ERROR <= '0';
		elsif CLK'event and CLK = '1' then 
			if ENTER = '1' then
				case state is  
					when s0=>	
						if PASSWORD /= PASS1 then
							ERROR <= '1';
						end if;	
					state <= s1;
					when s1=>	
						if PASSWORD /= PASS2 then
							ERROR <= '1';
						end if;	
					state <= s2;
					when s2=>	
						if PASSWORD /= PASS3 then
							ERROR <= '1';
						end if;	
					state <= s3;
					when s3=>	
						if PASSWORD /= PASS4 then
							ERROR <= '1';
						end if;
					state <= s4;
					when s4=>	
					state <= s4;
					when others =>
					null;	
				end case;		
			end if;	
		end if;
	end process;	
	
	Q <= "010" when (ERROR = '0' and state = s4) else "001" when (ERROR = '1' and state = s4) else "000";	
end TutorVHDL;
