--------------------------------------------------------------------------------
-- Title       : <Title Block>
-- Project     : Default Project Name
--------------------------------------------------------------------------------
-- File        : FSM_tb.vhd
-- Author      : User Name <user.email@user.company.com>
-- Company     : User Company Name
-- Created     : Tue May 18 18:51:05 2021
-- Last update : Tue May 18 18:51:05 2021
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

entity FSM_tb is

end entity FSM_tb;

-----------------------------------------------------------

architecture testbench of FSM_tb is

	-- Testbench DUT generics


	-- Testbench DUT ports
	signal clk         : std_logic;
	signal rst         : std_logic;
	signal CHA         : std_logic;
	signal CHB         : std_logic;
	signal pos_cnt_en  : std_logic;
	signal pos_cnt_dir : std_logic;
	signal cambio      : std_logic;

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
	
	--process
	--begin
		--CHA <= '1';
		--wait for 1 ms;
		--CHB <= '1';
		--wait for 3 ms;
		--CHA <= '0';
		--wait for 1 ms;
		--CHB <= '0';
		--wait for 3 ms;
	--end process;

	RESET_GEN : process
	begin
		rst <= '1';
            CHA <= '0';
            CHB <= '0';
            wait for 10 us;
            rst <= '0';
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
		wait;
	end process RESET_GEN;

	-----------------------------------------------------------
	-- Testbench Stimulus
	-----------------------------------------------------------

	-----------------------------------------------------------
	-- Entity Under Test
	-----------------------------------------------------------
	DUT : entity work.FSM
		port map (
			clk         => clk,
			rst         => rst,
			CHA         => CHA,
			CHB         => CHB,
			pos_cnt_en  => pos_cnt_en,
			pos_cnt_dir => pos_cnt_dir,
			cambio      => cambio
		);

end architecture testbench;