-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : TutorVHDL
-- Author      : krzysiek59999@wp.pl
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : D:\Dokumenty\Pulpit\TutorVHDL\compile\Top.vhd
-- Generated   : Tue Jan 22 22:23:40 2019
-- From        : D:\Dokumenty\Pulpit\TutorVHDL\src\Top.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity Top is
  port(
       CE : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       ENTER : in STD_LOGIC;
       PASSWORD : in STD_LOGIC_VECTOR(3 downto 0);
       CLR_LED : out STD_LOGIC;
       EN_LED : out STD_LOGIC;
       PASS_LEDS : out STD_LOGIC_VECTOR(3 downto 0);
       Q : out STD_LOGIC_VECTOR(2 downto 0)
  );
end Top;

architecture Top of Top is

---- Component declarations -----

component Debouncer
  port (
       CEI : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       PUSH : in STD_LOGIC;
       PE : out STD_LOGIC
  );
end component;
component Prescaler
  port (
       CE : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CEO : out STD_LOGIC
  );
end component;
component TutorVHDL
  port (
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       ENTER : in STD_LOGIC;
       PASSWORD : in STD_LOGIC_VECTOR(3 downto 0) := "0000";
       Q : out STD_LOGIC_VECTOR(2 downto 0) := "000"
  );
end component;

---- Signal declarations used on the diagram ----

signal Input2 : STD_LOGIC;
signal NET105 : STD_LOGIC;
signal NET210 : STD_LOGIC;
signal NET622 : STD_LOGIC;
signal NET89 : STD_LOGIC;
signal BusInput1 : STD_LOGIC_VECTOR(7 downto 0);
signal BusOutput1 : STD_LOGIC_VECTOR(7 downto 0);

begin

----  Component instantiations  ----

U1 : Prescaler
  port map(
       CE => NET622,
       CEO => NET210,
       CLK => NET89,
       CLR => Input2
  );

U2 : Debouncer
  port map(
       CEI => NET210,
       CLK => NET89,
       CLR => Input2,
       PE => NET105,
       PUSH => ENTER
  );

U3 : TutorVHDL
  port map(
       CLK => NET89,
       CLR => Input2,
       ENTER => NET105,
       PASSWORD(0) => BusInput1(4),
       PASSWORD(1) => BusInput1(5),
       PASSWORD(2) => BusInput1(6),
       PASSWORD(3) => BusInput1(7),
       Q(0) => BusOutput1(5),
       Q(1) => BusOutput1(6),
       Q(2) => BusOutput1(7)
  );


---- Terminal assignment ----

    -- Inputs terminals
	NET622 <= CE;
	NET89 <= CLK;
	Input2 <= CLR;
	BusInput1(4) <= PASSWORD(0);
	BusInput1(5) <= PASSWORD(1);
	BusInput1(6) <= PASSWORD(2);
	BusInput1(7) <= PASSWORD(3);

    -- Output\buffer terminals
	CLR_LED <= Input2;
	EN_LED <= NET622;
	PASS_LEDS(0) <= BusInput1(0);
	PASS_LEDS(1) <= BusInput1(1);
	PASS_LEDS(2) <= BusInput1(2);
	PASS_LEDS(3) <= BusInput1(3);
	Q(0) <= BusOutput1(5);
	Q(1) <= BusOutput1(6);
	Q(2) <= BusOutput1(7);


end Top;
