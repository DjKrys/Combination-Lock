library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

entity tutorvhdl_tb is
end tutorvhdl_tb;

architecture TB_ARCHITECTURE of tutorvhdl_tb is

	component tutorvhdl
	port(
		CLK : in std_logic;
		CLR : in std_logic;
		ENTER : in std_logic;
		PASSWORD : in std_logic_vector(3 downto 0);
		Q : out std_logic_vector(2 downto 0));		
	end component;


		signal CLK : std_logic;
		signal CLR : std_logic;
		signal ENTER : std_logic;
		signal PASSWORD : std_logic_vector(3 downto 0);
		signal Q : std_logic_vector(2 downto 0);		

begin
	UUT : tutorvhdl
	port map (
			CLK => CLK,
			CLR => CLR,
			ENTER => ENTER,	
			PASSWORD => PASSWORD,
			Q => Q
		);


CLR_STIMULUS: process
begin
	CLR <= '0';
	wait for 280ns;
	CLR <= '1';
	wait for 40ns;
	CLR <= '0';
	wait for 260ns;
	CLR <= '1';
	wait for 40ns;
	CLR <= '0';
	wait;
end process;

PASSWORD_STIMULUS: process
begin	
	wait for 22.5ns;
	PASSWORD <= "0000";
	wait for 50ns;
	PASSWORD <= "0001";
	wait for 50ns;	
	PASSWORD <= "0010";
	wait for 50ns;
	PASSWORD <= "0011";
	wait for 27.5ns;

end process;

ENTER_STIMMULUS: process
begin
	ENTER <= '0';
	wait for 45ns;
	ENTER <= '1';
	wait for 5ns; 

end process;	

CLK_STIMULUS: process
begin
	CLK <= '0';
	wait for 5ns;	   
	CLK <= '1';
	wait for 5ns;
end process;

		
	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_tutorvhdl of tutorvhdl_tb is
	for TB_ARCHITECTURE
		for UUT : tutorvhdl
			use entity work.tutorvhdl(tutorvhdl);
		end for;
	end for;
end TESTBENCH_FOR_tutorvhdl;

