--------------------------------------------------------------------------------
-- Title       : <Title Block>
-- Project     : Default Project Name
--------------------------------------------------------------------------------
-- File        : axi_motor_enc_tb.vhd
-- Author      : User Name <user.email@user.company.com>
-- Company     : User Company Name
-- Created     : Sun Jun 13 11:15:39 2021
-- Last update : Sun Jun 13 11:16:19 2021
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

entity axi_motor_enc_tb is

end entity axi_motor_enc_tb;

-----------------------------------------------------------

architecture testbench of axi_motor_enc_tb is

	-- Testbench DUT generics


	-- Testbench DUT ports
	signal clk        : std_logic;
	signal rst        : std_logic;
	signal reset_pos  : std_logic;
	signal CHA        : std_logic;
	signal CHB        : std_logic;
	signal obs_period : std_logic_vector(31 downto 0);
	signal speed      : std_logic_vector(23 downto 0);
	signal position   : std_logic_vector(23 downto 0);
	signal update     : std_logic;

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
		CHA <= '0';
		CHB <= '0';
		obs_period <= "00000000000000000000111111111111";
		reset_pos <= '0';
		wait for 3 us;
		rst <= '0';
		wait for 1 us;
		CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
            
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
            
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    reset_pos <= '1';
                    CHB <= '1';
                    wait for 2 us;
                    reset_pos <= '0';
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                       CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
                    CHA <= '1';
                    wait for 2 us;
                    CHB <= '1';
                    wait for 2 us;
                    CHA <= '0';
                    wait for 2 us;
                    CHB <= '0';
                    wait for 2 us;
		wait;
	end process RESET_GEN;

	-----------------------------------------------------------
	-- Testbench Stimulus
	-----------------------------------------------------------

	-----------------------------------------------------------
	-- Entity Under Test
	-----------------------------------------------------------
	DUT : entity work.axi_motor_enc
		port map (
			clk        => clk,
			rst        => rst,
			reset_pos  => reset_pos,
			CHA        => CHA,
			CHB        => CHB,
			obs_period => obs_period,
			speed      => speed,
			position   => position,
			update     => update
		);

end architecture testbench;