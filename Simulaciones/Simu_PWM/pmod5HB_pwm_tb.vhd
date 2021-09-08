--------------------------------------------------------------------------------
-- Title       : <Title Block>
-- Project     : Default Project Name
--------------------------------------------------------------------------------
-- File        : pmod5HB_pwm_tb.vhd
-- Author      : User Name <user.email@user.company.com>
-- Company     : User Company Name
-- Created     : Wed May 26 20:05:37 2021
-- Last update : Wed May 26 20:05:53 2021
-- Platform    : Default Part Number
-- Standard    : <VHDL-2008 | VHDL-2002 | VHDL-1993 | VHDL-1987>
--------------------------------------------------------------------------------
-- Copyright (c) 2021 User Company Name
-------------------------------------------------------------------------------
-- Description: 
--------------------------------------------------------------------------------
-- Revisions:  Revisions and documentation are controlled by
-- the revision control system (RCS).  The RCS should be consulted
-- on revision history.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

-----------------------------------------------------------

entity pmod5HB_pwm_tb is

end entity pmod5HB_pwm_tb;

-----------------------------------------------------------

architecture testbench of pmod5HB_pwm_tb is

	-- Testbench DUT generics


	-- Testbench DUT ports
	signal clk            : std_logic;
	signal rst            : std_logic;
	signal enable_pwm     : std_logic;
	signal enable_dead    : std_logic;
	signal carrier_period : std_logic_vector(23 downto 0);
	signal mod_value      : std_logic_vector(23 downto 0);
	signal mod_dir        : std_logic;
	signal deadtime       : std_logic_vector(15 downto 0);
	signal pwm_en         : std_logic;
	signal pwm_dir        : std_logic;

	-- Other constants
	constant C_CLK_PERIOD : real := 10.0e-9; -- NS

begin
	-----------------------------------------------------------
	-- Clocks and Reset
	-----------------------------------------------------------
	CLK_GEN : process
	begin
		clk <= '1';
		wait for C_CLK_PERIOD / 2.0 * (1 SEC);
		clk <= '0';
		wait for C_CLK_PERIOD / 2.0 * (1 SEC);
	end process CLK_GEN;

	RESET_GEN : process
	begin
		rst <= '1';
		carrier_period <= "000000000000000001100100"; --100
		mod_value <= "000000000000000001000110";  --70
		mod_dir <= '0';
		deadtime <= "0000000001010000"; --80
		enable_pwm <= '1';
		enable_dead <= '1';
		wait for 5 us;
		rst <= '0';
		wait for 100 us;
		mod_dir <= '1';
		wait for 50 us;
		mod_dir <= '0';
		wait for 50 us;
		mod_dir <= '1';
        wait for 50 us;
        mod_value <= "000000000000000000001111"; --15
                wait for 50 us;
        mod_dir <= '0';
		wait for 50 us;
		mod_dir <= '1';
                wait for 50 us;
                mod_dir <= '0';
		mod_value <= "000000000000000000001111"; --15
		wait for 100 us;
		enable_dead <= '1';
		mod_dir <= '0';
		carrier_period <= "000000000000000011111111"; --255
		mod_value <= "000000000000000010011011"; --155
		wait;
		wait;
	end process RESET_GEN;

	-----------------------------------------------------------
	-- Testbench Stimulus
	-----------------------------------------------------------

	-----------------------------------------------------------
	-- Entity Under Test
	-----------------------------------------------------------
	DUT : entity work.pmod5HB_pwm
		port map (
			clk            => clk,
			rst            => rst,
			enable_pwm     => enable_pwm,
			enable_dead    => enable_dead,
			carrier_period => carrier_period,
			mod_value      => mod_value,
			mod_dir        => mod_dir,
			deadtime       => deadtime,
			pwm_en         => pwm_en,
			pwm_dir        => pwm_dir
		);

end architecture testbench;