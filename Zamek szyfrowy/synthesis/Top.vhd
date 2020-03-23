-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jan 22 22:43:48 2019
-- Host        : Lenovo-Y50 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force Top.vhd
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ERROR_reg : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : in STD_LOGIC;
    \eqOp__26\ : in STD_LOGIC;
    \DIVIDER_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN_LED_OBUF : in STD_LOGIC
  );
end Debouncer;

architecture STRUCTURE of Debouncer is
  signal DELAY : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \DELAY[1]_i_1_n_0\ : STD_LOGIC;
  signal \DELAY[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DELAY[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DELAY[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ERROR_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair0";
begin
\DELAY[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => DELAY(0),
      I1 => \eqOp__26\,
      I2 => EN_LED_OBUF,
      I3 => DELAY(1),
      O => \DELAY[1]_i_1_n_0\
    );
\DELAY[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => DELAY(1),
      I1 => \eqOp__26\,
      I2 => EN_LED_OBUF,
      I3 => DELAY(2),
      O => \DELAY[2]_i_1_n_0\
    );
\DELAY_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \DIVIDER_reg[10]\(0),
      CLR => AR(0),
      D => D(0),
      Q => DELAY(0)
    );
\DELAY_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \DELAY[1]_i_1_n_0\,
      Q => DELAY(1)
    );
\DELAY_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \DELAY[2]_i_1_n_0\,
      Q => DELAY(2)
    );
ERROR_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => DELAY(2),
      I1 => DELAY(1),
      I2 => DELAY(0),
      O => ERROR_reg
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]\,
      I1 => DELAY(2),
      I2 => DELAY(1),
      I3 => DELAY(0),
      I4 => \eqOp__26\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler is
  port (
    \eqOp__26\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN_LED_OBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Prescaler;

architecture STRUCTURE of Prescaler is
  signal \DIVIDER[0]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_6_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_5_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \DIVIDER_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_9_n_0\ : STD_LOGIC;
  signal \^eqop__26\ : STD_LOGIC;
  signal \NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  \eqOp__26\ <= \^eqop__26\;
\DELAY[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^eqop__26\,
      I1 => EN_LED_OBUF,
      O => E(0)
    );
\DIVIDER[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_2_n_0\
    );
\DIVIDER[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_3_n_0\
    );
\DIVIDER[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_4_n_0\
    );
\DIVIDER[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_5_n_0\
    );
\DIVIDER[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => \^eqop__26\,
      O => \DIVIDER[12]_i_2_n_0\
    );
\DIVIDER[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => \^eqop__26\,
      O => \DIVIDER[12]_i_3_n_0\
    );
\DIVIDER[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => \^eqop__26\,
      O => \DIVIDER[12]_i_4_n_0\
    );
\DIVIDER[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(12),
      I1 => \^eqop__26\,
      O => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(19),
      I1 => \^eqop__26\,
      O => \DIVIDER[16]_i_2_n_0\
    );
\DIVIDER[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => \^eqop__26\,
      O => \DIVIDER[16]_i_3_n_0\
    );
\DIVIDER[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => \^eqop__26\,
      O => \DIVIDER[16]_i_4_n_0\
    );
\DIVIDER[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(16),
      I1 => \^eqop__26\,
      O => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(23),
      I1 => \^eqop__26\,
      O => \DIVIDER[20]_i_2_n_0\
    );
\DIVIDER[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(22),
      I1 => \^eqop__26\,
      O => \DIVIDER[20]_i_3_n_0\
    );
\DIVIDER[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => \^eqop__26\,
      O => \DIVIDER[20]_i_4_n_0\
    );
\DIVIDER[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(20),
      I1 => \^eqop__26\,
      O => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(27),
      I1 => \^eqop__26\,
      O => \DIVIDER[24]_i_2_n_0\
    );
\DIVIDER[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(26),
      I1 => \^eqop__26\,
      O => \DIVIDER[24]_i_3_n_0\
    );
\DIVIDER[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(25),
      I1 => \^eqop__26\,
      O => \DIVIDER[24]_i_4_n_0\
    );
\DIVIDER[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(24),
      I1 => \^eqop__26\,
      O => \DIVIDER[24]_i_5_n_0\
    );
\DIVIDER[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => \^eqop__26\,
      O => \DIVIDER[4]_i_2_n_0\
    );
\DIVIDER[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => \^eqop__26\,
      O => \DIVIDER[4]_i_3_n_0\
    );
\DIVIDER[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(5),
      I1 => \^eqop__26\,
      O => \DIVIDER[4]_i_4_n_0\
    );
\DIVIDER[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(4),
      I1 => \^eqop__26\,
      O => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(11),
      I1 => \^eqop__26\,
      O => \DIVIDER[8]_i_2_n_0\
    );
\DIVIDER[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => \^eqop__26\,
      O => \DIVIDER[8]_i_3_n_0\
    );
\DIVIDER[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => \^eqop__26\,
      O => \DIVIDER[8]_i_4_n_0\
    );
\DIVIDER[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => \^eqop__26\,
      O => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_7\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DIVIDER_reg[0]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[0]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[0]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DIVIDER[0]_i_2_n_0\,
      O(3) => \DIVIDER_reg[0]_i_1_n_4\,
      O(2) => \DIVIDER_reg[0]_i_1_n_5\,
      O(1) => \DIVIDER_reg[0]_i_1_n_6\,
      O(0) => \DIVIDER_reg[0]_i_1_n_7\,
      S(3) => \DIVIDER[0]_i_3_n_0\,
      S(2) => \DIVIDER[0]_i_4_n_0\,
      S(1) => \DIVIDER[0]_i_5_n_0\,
      S(0) => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_5\,
      Q => DIVIDER_reg(10)
    );
\DIVIDER_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_4\,
      Q => DIVIDER_reg(11)
    );
\DIVIDER_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_7\,
      Q => DIVIDER_reg(12)
    );
\DIVIDER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[8]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[12]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[12]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[12]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[12]_i_1_n_4\,
      O(2) => \DIVIDER_reg[12]_i_1_n_5\,
      O(1) => \DIVIDER_reg[12]_i_1_n_6\,
      O(0) => \DIVIDER_reg[12]_i_1_n_7\,
      S(3) => \DIVIDER[12]_i_2_n_0\,
      S(2) => \DIVIDER[12]_i_3_n_0\,
      S(1) => \DIVIDER[12]_i_4_n_0\,
      S(0) => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_6\,
      Q => DIVIDER_reg(13)
    );
\DIVIDER_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_5\,
      Q => DIVIDER_reg(14)
    );
\DIVIDER_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_4\,
      Q => DIVIDER_reg(15)
    );
\DIVIDER_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_7\,
      Q => DIVIDER_reg(16)
    );
\DIVIDER_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[12]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[16]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[16]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[16]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[16]_i_1_n_4\,
      O(2) => \DIVIDER_reg[16]_i_1_n_5\,
      O(1) => \DIVIDER_reg[16]_i_1_n_6\,
      O(0) => \DIVIDER_reg[16]_i_1_n_7\,
      S(3) => \DIVIDER[16]_i_2_n_0\,
      S(2) => \DIVIDER[16]_i_3_n_0\,
      S(1) => \DIVIDER[16]_i_4_n_0\,
      S(0) => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_6\,
      Q => DIVIDER_reg(17)
    );
\DIVIDER_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_5\,
      Q => DIVIDER_reg(18)
    );
\DIVIDER_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_4\,
      Q => DIVIDER_reg(19)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_6\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_7\,
      Q => DIVIDER_reg(20)
    );
\DIVIDER_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[16]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[20]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[20]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[20]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[20]_i_1_n_4\,
      O(2) => \DIVIDER_reg[20]_i_1_n_5\,
      O(1) => \DIVIDER_reg[20]_i_1_n_6\,
      O(0) => \DIVIDER_reg[20]_i_1_n_7\,
      S(3) => \DIVIDER[20]_i_2_n_0\,
      S(2) => \DIVIDER[20]_i_3_n_0\,
      S(1) => \DIVIDER[20]_i_4_n_0\,
      S(0) => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_6\,
      Q => DIVIDER_reg(21)
    );
\DIVIDER_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_5\,
      Q => DIVIDER_reg(22)
    );
\DIVIDER_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_4\,
      Q => DIVIDER_reg(23)
    );
\DIVIDER_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_7\,
      Q => DIVIDER_reg(24)
    );
\DIVIDER_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[20]_i_1_n_0\,
      CO(3) => \NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \DIVIDER_reg[24]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[24]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[24]_i_1_n_4\,
      O(2) => \DIVIDER_reg[24]_i_1_n_5\,
      O(1) => \DIVIDER_reg[24]_i_1_n_6\,
      O(0) => \DIVIDER_reg[24]_i_1_n_7\,
      S(3) => \DIVIDER[24]_i_2_n_0\,
      S(2) => \DIVIDER[24]_i_3_n_0\,
      S(1) => \DIVIDER[24]_i_4_n_0\,
      S(0) => \DIVIDER[24]_i_5_n_0\
    );
\DIVIDER_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_6\,
      Q => DIVIDER_reg(25)
    );
\DIVIDER_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_5\,
      Q => DIVIDER_reg(26)
    );
\DIVIDER_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_4\,
      Q => DIVIDER_reg(27)
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_5\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_4\,
      Q => DIVIDER_reg(3)
    );
\DIVIDER_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_7\,
      Q => DIVIDER_reg(4)
    );
\DIVIDER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[0]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[4]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[4]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[4]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[4]_i_1_n_4\,
      O(2) => \DIVIDER_reg[4]_i_1_n_5\,
      O(1) => \DIVIDER_reg[4]_i_1_n_6\,
      O(0) => \DIVIDER_reg[4]_i_1_n_7\,
      S(3) => \DIVIDER[4]_i_2_n_0\,
      S(2) => \DIVIDER[4]_i_3_n_0\,
      S(1) => \DIVIDER[4]_i_4_n_0\,
      S(0) => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_6\,
      Q => DIVIDER_reg(5)
    );
\DIVIDER_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_5\,
      Q => DIVIDER_reg(6)
    );
\DIVIDER_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_4\,
      Q => DIVIDER_reg(7)
    );
\DIVIDER_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_7\,
      Q => DIVIDER_reg(8)
    );
\DIVIDER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[4]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[8]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[8]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[8]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[8]_i_1_n_4\,
      O(2) => \DIVIDER_reg[8]_i_1_n_5\,
      O(1) => \DIVIDER_reg[8]_i_1_n_6\,
      O(0) => \DIVIDER_reg[8]_i_1_n_7\,
      S(3) => \DIVIDER[8]_i_2_n_0\,
      S(2) => \DIVIDER[8]_i_3_n_0\,
      S(1) => \DIVIDER[8]_i_4_n_0\,
      S(0) => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => EN_LED_OBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_6\,
      Q => DIVIDER_reg(9)
    );
\FSM_onehot_state[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => DIVIDER_reg(17),
      I2 => DIVIDER_reg(16),
      I3 => DIVIDER_reg(14),
      O => \FSM_onehot_state[4]_i_10_n_0\
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_5_n_0\,
      I1 => \FSM_onehot_state[4]_i_6_n_0\,
      I2 => \FSM_onehot_state[4]_i_7_n_0\,
      I3 => \FSM_onehot_state[4]_i_8_n_0\,
      I4 => \FSM_onehot_state[4]_i_9_n_0\,
      I5 => \FSM_onehot_state[4]_i_10_n_0\,
      O => \^eqop__26\
    );
\FSM_onehot_state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => DIVIDER_reg(12),
      I2 => DIVIDER_reg(15),
      I3 => DIVIDER_reg(19),
      I4 => DIVIDER_reg(23),
      I5 => DIVIDER_reg(20),
      O => \FSM_onehot_state[4]_i_5_n_0\
    );
\FSM_onehot_state[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => DIVIDER_reg(0),
      I2 => DIVIDER_reg(3),
      I3 => DIVIDER_reg(2),
      O => \FSM_onehot_state[4]_i_6_n_0\
    );
\FSM_onehot_state[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => DIVIDER_reg(6),
      I2 => DIVIDER_reg(5),
      I3 => DIVIDER_reg(4),
      O => \FSM_onehot_state[4]_i_7_n_0\
    );
\FSM_onehot_state[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => DIVIDER_reg(22),
      I2 => DIVIDER_reg(24),
      I3 => DIVIDER_reg(25),
      I4 => DIVIDER_reg(27),
      I5 => DIVIDER_reg(26),
      O => \FSM_onehot_state[4]_i_8_n_0\
    );
\FSM_onehot_state[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => DIVIDER_reg(7),
      I2 => DIVIDER_reg(13),
      I3 => DIVIDER_reg(11),
      O => \FSM_onehot_state[4]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TutorVHDL is
  port (
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    Q_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PASSWORD_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN_LED_OBUF : in STD_LOGIC;
    \DELAY_reg[2]\ : in STD_LOGIC;
    \eqOp__26\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end TutorVHDL;

architecture STRUCTURE of TutorVHDL is
  signal ERROR_i_1_n_0 : STD_LOGIC;
  signal ERROR_reg_n_0 : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[4]\ : signal is "yes";
  signal \__0/i__n_0\ : STD_LOGIC;
  signal \neqOp__0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
begin
ERROR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \__0/i__n_0\,
      I1 => \neqOp__0\,
      I2 => EN_LED_OBUF,
      I3 => \DELAY_reg[2]\,
      I4 => \eqOp__26\,
      I5 => ERROR_reg_n_0,
      O => ERROR_i_1_n_0
    );
ERROR_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => ERROR_i_1_n_0,
      Q => ERROR_reg_n_0
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => EN_LED_OBUF,
      O => \FSM_onehot_state_reg[4]_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => '0',
      PRE => AR(0),
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_onehot_state[4]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
\Q_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ERROR_reg_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => Q_OBUF(0)
    );
\Q_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => ERROR_reg_n_0,
      O => Q_OBUF(1)
    );
\__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \__0/i__n_0\
    );
neqOp: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PASSWORD_IBUF(1),
      I1 => PASSWORD_IBUF(0),
      I2 => PASSWORD_IBUF(2),
      I3 => PASSWORD_IBUF(3),
      O => \neqOp__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    CE : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CLR : in STD_LOGIC;
    ENTER : in STD_LOGIC;
    PASSWORD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLR_LED : out STD_LOGIC;
    EN_LED : out STD_LOGIC;
    PASS_LEDS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_LED_OBUF : STD_LOGIC;
  signal ENTER_IBUF : STD_LOGIC;
  signal EN_LED_OBUF : STD_LOGIC;
  signal NET210 : STD_LOGIC;
  signal PASSWORD_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Q_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal U2_n_0 : STD_LOGIC;
  signal U2_n_1 : STD_LOGIC;
  signal U3_n_0 : STD_LOGIC;
  signal \eqOp__26\ : STD_LOGIC;
begin
CE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CE,
      O => EN_LED_OBUF
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CLR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLR,
      O => CLR_LED_OBUF
    );
CLR_LED_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CLR_LED_OBUF,
      O => CLR_LED
    );
ENTER_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ENTER,
      O => ENTER_IBUF
    );
EN_LED_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => EN_LED_OBUF,
      O => EN_LED
    );
\PASSWORD_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => PASSWORD(0),
      O => PASSWORD_IBUF(0)
    );
\PASSWORD_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => PASSWORD(1),
      O => PASSWORD_IBUF(1)
    );
\PASSWORD_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => PASSWORD(2),
      O => PASSWORD_IBUF(2)
    );
\PASSWORD_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => PASSWORD(3),
      O => PASSWORD_IBUF(3)
    );
\PASS_LEDS_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => PASS_LEDS(0),
      T => '1'
    );
\PASS_LEDS_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => PASS_LEDS(1),
      T => '1'
    );
\PASS_LEDS_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => PASS_LEDS(2),
      T => '1'
    );
\PASS_LEDS_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => PASS_LEDS(3),
      T => '1'
    );
\Q_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(0),
      O => Q(0)
    );
\Q_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(1),
      O => Q(1)
    );
\Q_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => Q(2)
    );
U1: entity work.Prescaler
     port map (
      AR(0) => CLR_LED_OBUF,
      CLK => CLK_IBUF_BUFG,
      E(0) => NET210,
      EN_LED_OBUF => EN_LED_OBUF,
      \eqOp__26\ => \eqOp__26\
    );
U2: entity work.Debouncer
     port map (
      AR(0) => CLR_LED_OBUF,
      CLK => CLK_IBUF_BUFG,
      D(0) => ENTER_IBUF,
      \DIVIDER_reg[10]\(0) => NET210,
      E(0) => U2_n_0,
      EN_LED_OBUF => EN_LED_OBUF,
      ERROR_reg => U2_n_1,
      \FSM_onehot_state_reg[2]\ => U3_n_0,
      \eqOp__26\ => \eqOp__26\
    );
U3: entity work.TutorVHDL
     port map (
      AR(0) => CLR_LED_OBUF,
      CLK => CLK_IBUF_BUFG,
      \DELAY_reg[2]\ => U2_n_1,
      E(0) => U2_n_0,
      EN_LED_OBUF => EN_LED_OBUF,
      \FSM_onehot_state_reg[4]_0\ => U3_n_0,
      PASSWORD_IBUF(3 downto 0) => PASSWORD_IBUF(3 downto 0),
      Q_OBUF(1 downto 0) => Q_OBUF(1 downto 0),
      \eqOp__26\ => \eqOp__26\
    );
end STRUCTURE;
