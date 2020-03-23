library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

entity top_tb is
end top_tb;

architecture TB_ARCHITECTURE of top_tb is

	component top
	port(
		CLK : in std_logic;
		CLR : in std_logic;
		ENTER : in std_logic;		  
		CE : in std_logic;
		PASSWORD : in std_logic_vector(3 downto 0);
		Q : out std_logic_vector(2 downto 0));		
	end component;


		signal CLK : std_logic;
		signal CLR : std_logic;	
		signal CE : std_logic;
		signal ENTER : std_logic;
		signal PASSWORD : std_logic_vector(3 downto 0);
		signal Q : std_logic_vector(2 downto 0);		

begin
	UUT : top
	port map (
			CLK => CLK,
			CLR => CLR,	 
			CE => CE,
			ENTER => ENTER,	
			PASSWORD => PASSWORD,
			Q => Q
		);


CLR_STIMULUS: process
begin
	CLR <= '0';
	wait for 420ns;
	CLR <= '1';
	wait for 40ns;
	CLR <= '0';
	wait for 420ns;
	CLR <= '1';
	wait for 40ns;
	CLR <= '0';
	wait;
end process;

PASSWORD_STIMULUS: process
begin	
	wait for 22.5ns;
	PASSWORD <= "0000";
	wait for 80ns;
	PASSWORD <= "0000";
	wait for 80ns;	
	PASSWORD <= "0000";
	wait for 80ns;
	PASSWORD <= "0000";
	wait for 80ns;
	PASSWORD <= "0000";
	wait for 230ns;
	PASSWORD <= "0001";
	wait for 80ns;	
	PASSWORD <= "0010";
	wait for 80ns;
	PASSWORD <= "0011";
	wait for 80ns;
end process;

CE_STIMULUS: process
begin				
	CE <= '1';	   
	wait;
end process;

ENTER_STIMMULUS: process
begin
	ENTER <= '0';
	wait for 38ns;
	ENTER <= '1';
	wait for 40ns; 

end process;	

CLK_STIMULUS: process
begin
	CLK <= '0';
	wait for 5ns;	   
	CLK <= '1';
	wait for 5ns;
end process;

		
	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_top of top_tb is
	for TB_ARCHITECTURE
		for UUT : top
			use entity work.top(top);
		end for;
	end for;
end TESTBENCH_FOR_top;

