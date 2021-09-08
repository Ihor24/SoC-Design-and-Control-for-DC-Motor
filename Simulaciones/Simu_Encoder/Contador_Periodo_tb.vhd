--------------------------------------------------------------------------------
-- Title       : <Title Block>
-- Project     : Default Project Name
--------------------------------------------------------------------------------
-- File        : contador_periodo_tb.vhd
-- Author      : User Name <user.email@user.company.com>
-- Company     : User Company Name
-- Created     : Tue May 18 16:43:27 2021
-- Last update : Tue May 18 16:43:27 2021
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

entity contador_periodo_tb is

end entity contador_periodo_tb;

-----------------------------------------------------------

architecture testbench of contador_periodo_tb is

	-- Testbench DUT generics


	-- Testbench DUT ports
	signal clk        : std_logic;
	signal rst        : std_logic;
	signal obs_period : std_logic_vector(31 downto 0);
	signal period_end : std_logic;

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
		obs_period <= "00000000000000000000000011111111";
		wait for 10 us;
		rst <= '0';
		wait for 80 us;
		obs_period <= "00000000000000000000000000000011";
		wait;
	end process RESET_GEN;

	-----------------------------------------------------------
	-- Testbench Stimulus
	-----------------------------------------------------------

	-----------------------------------------------------------
	-- Entity Under Test
	-----------------------------------------------------------
	DUT : entity work.contador_periodo
		port map (
			clk        => clk,
			rst        => rst,
			obs_period => obs_period,
			period_end => period_end
		);

end architecture testbench;