-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "03/18/2022 07:45:22"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_entity IS
    PORT (
	clk_f : IN std_logic;
	VGA_R_f : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G_f : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B_f : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_HS_f : BUFFER std_logic;
	VGA_VS_f : BUFFER std_logic;
	GSENSOR_CS_N_f : BUFFER std_logic;
	GSENSOR_SCLK_f : BUFFER std_logic;
	GSENSOR_SDI_f : BUFFER std_logic;
	GSENSOR_SDO_f : BUFFER std_logic;
	BUT1 : IN std_logic;
	BUT2 : IN std_logic
	);
END top_entity;

-- Design Ports Information
-- VGA_R_f[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R_f[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R_f[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R_f[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G_f[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G_f[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G_f[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G_f[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B_f[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B_f[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B_f[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B_f[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS_f	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS_f	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_CS_N_f	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SCLK_f	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- BUT2	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GSENSOR_SDI_f	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SDO_f	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- BUT1	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_f	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_entity IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_f : std_logic;
SIGNAL ww_VGA_R_f : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G_f : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B_f : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS_f : std_logic;
SIGNAL ww_VGA_VS_f : std_logic;
SIGNAL ww_GSENSOR_CS_N_f : std_logic;
SIGNAL ww_GSENSOR_SCLK_f : std_logic;
SIGNAL ww_GSENSOR_SDI_f : std_logic;
SIGNAL ww_GSENSOR_SDO_f : std_logic;
SIGNAL ww_BUT1 : std_logic;
SIGNAL ww_BUT2 : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U0|U0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|f2y2[4]~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|U0|Equal1~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|y2[0]~17clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|fig_xShift[0]~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_f~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~12\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \BUT2~input_o\ : std_logic;
SIGNAL \GSENSOR_SDI_f~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \clk_f~input_o\ : std_logic;
SIGNAL \clk_f~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|U0|U0|u0|clk_counter~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|clk_counter~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|clk_counter~4_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|clk_counter~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|clk_counter~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|spi_clk~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|spi_clk~q\ : std_logic;
SIGNAL \U1|U0|U0|u0|spi_clk_last~q\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_data[7]~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector3~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|idlecount[0]~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|idlecount[0]~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector6~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|idlecount[0]~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector7~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Add1~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector6~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Add1~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|idlecount[3]~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|always2~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector3~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector3~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector3~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|state.ACTIVE~q\ : std_logic;
SIGNAL \U1|U0|U0|u0|count[2]~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|count[0]~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|count[1]~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Add2~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|count[2]~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|state_next~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector4~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|state.TO_IDLE~q\ : std_logic;
SIGNAL \U1|U0|U0|u0|state.IDLE~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|state.IDLE~q\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~14_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~11_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~15_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~10_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~16_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~1\ : std_logic;
SIGNAL \U1|U0|U0|Add0~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~3\ : std_logic;
SIGNAL \U1|U0|U0|Add0~4_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~5\ : std_logic;
SIGNAL \U1|U0|U0|Add0~6_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~7\ : std_logic;
SIGNAL \U1|U0|U0|Add0~8_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~9\ : std_logic;
SIGNAL \U1|U0|U0|Add0~10_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~11\ : std_logic;
SIGNAL \U1|U0|U0|Add0~12_combout\ : std_logic;
SIGNAL \U1|U0|U0|update_clock_counter~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~13\ : std_logic;
SIGNAL \U1|U0|U0|Add0~14_combout\ : std_logic;
SIGNAL \U1|U0|U0|update_clock_counter~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal0~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~15\ : std_logic;
SIGNAL \U1|U0|U0|Add0~16_combout\ : std_logic;
SIGNAL \U1|U0|U0|update_clock_counter~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~17\ : std_logic;
SIGNAL \U1|U0|U0|Add0~18_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~19\ : std_logic;
SIGNAL \U1|U0|U0|Add0~20_combout\ : std_logic;
SIGNAL \U1|U0|U0|update_clock_counter~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~21\ : std_logic;
SIGNAL \U1|U0|U0|Add0~22_combout\ : std_logic;
SIGNAL \U1|U0|U0|update_clock_counter~4_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~23\ : std_logic;
SIGNAL \U1|U0|U0|Add0~24_combout\ : std_logic;
SIGNAL \U1|U0|U0|update_clock_counter~5_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~25\ : std_logic;
SIGNAL \U1|U0|U0|Add0~26_combout\ : std_logic;
SIGNAL \U1|U0|U0|update_clock_counter~6_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~27\ : std_logic;
SIGNAL \U1|U0|U0|Add0~28_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~29\ : std_logic;
SIGNAL \U1|U0|U0|Add0~30_combout\ : std_logic;
SIGNAL \U1|U0|U0|update_clock_counter~7_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal0~5_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal0~4_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~31\ : std_logic;
SIGNAL \U1|U0|U0|Add0~32_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~33\ : std_logic;
SIGNAL \U1|U0|U0|Add0~34_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~35\ : std_logic;
SIGNAL \U1|U0|U0|Add0~36_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add0~37\ : std_logic;
SIGNAL \U1|U0|U0|Add0~38_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal0~6_combout\ : std_logic;
SIGNAL \U1|U0|U0|update~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|update~q\ : std_logic;
SIGNAL \U1|U0|U0|Selector1~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|Selector1~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~1\ : std_logic;
SIGNAL \U1|U0|U0|Add1~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~46_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~8_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal1~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~39_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~38_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~40_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~41_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~42_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~17_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~28_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~29_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~30_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~31_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~32_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~15_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~3\ : std_logic;
SIGNAL \U1|U0|U0|Add1~4_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~35_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~33_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~36_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~34_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~37_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~16_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~5\ : std_logic;
SIGNAL \U1|U0|U0|Add1~6_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~18_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~17_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~19_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~8_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~7\ : std_logic;
SIGNAL \U1|U0|U0|Add1~9_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~24_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~25_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~23_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~26_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~27_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~14_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~10\ : std_logic;
SIGNAL \U1|U0|U0|Add1~11_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~20_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~21_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~22_combout\ : std_logic;
SIGNAL \U1|U0|U0|Add1~13_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~9_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~12_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~13_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal1~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_valid_next~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector2~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|state.TO_ACTIVE~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|state.TO_ACTIVE~q\ : std_logic;
SIGNAL \U1|U0|U0|u0|tx_data_r[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Mux0~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|tx_data_r[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Mux0~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|tx_data_r[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Mux0~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~45_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~43_combout\ : std_logic;
SIGNAL \U1|U0|U0|spi_program~44_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Mux0~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector12~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal1~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|tx_request_r~q\ : std_logic;
SIGNAL \U1|U0|U0|u0|always2~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector12~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|Selector12~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|spi_sdi~q\ : std_logic;
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|Add0~0_combout\ : std_logic;
SIGNAL \U0|U1|h_count~9_combout\ : std_logic;
SIGNAL \U0|U1|Add0~1\ : std_logic;
SIGNAL \U0|U1|Add0~3\ : std_logic;
SIGNAL \U0|U1|Add0~4_combout\ : std_logic;
SIGNAL \U0|U1|h_count~7_combout\ : std_logic;
SIGNAL \U0|U1|Add0~5\ : std_logic;
SIGNAL \U0|U1|Add0~6_combout\ : std_logic;
SIGNAL \U0|U1|h_count~6_combout\ : std_logic;
SIGNAL \U0|U1|Add0~7\ : std_logic;
SIGNAL \U0|U1|Add0~8_combout\ : std_logic;
SIGNAL \U0|U1|h_count~5_combout\ : std_logic;
SIGNAL \U0|U1|Add0~9\ : std_logic;
SIGNAL \U0|U1|Add0~10_combout\ : std_logic;
SIGNAL \U0|U1|h_count~0_combout\ : std_logic;
SIGNAL \U0|U1|Add0~11\ : std_logic;
SIGNAL \U0|U1|Add0~12_combout\ : std_logic;
SIGNAL \U0|U1|h_count~4_combout\ : std_logic;
SIGNAL \U0|U1|Add0~13\ : std_logic;
SIGNAL \U0|U1|Add0~14_combout\ : std_logic;
SIGNAL \U0|U1|h_count~3_combout\ : std_logic;
SIGNAL \U0|U1|h_count[7]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|Add0~15\ : std_logic;
SIGNAL \U0|U1|Add0~16_combout\ : std_logic;
SIGNAL \U0|U1|h_count~2_combout\ : std_logic;
SIGNAL \U0|U1|h_count[8]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U0|U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U0|U1|Add0~17\ : std_logic;
SIGNAL \U0|U1|Add0~18_combout\ : std_logic;
SIGNAL \U0|U1|h_count~1_combout\ : std_logic;
SIGNAL \U0|U1|h_count[9]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U0|U1|Add0~2_combout\ : std_logic;
SIGNAL \U0|U1|h_count~8_combout\ : std_logic;
SIGNAL \U0|U1|LessThan6~0_combout\ : std_logic;
SIGNAL \U0|U1|column[0]~feeder_combout\ : std_logic;
SIGNAL \U0|LessThan8~0_combout\ : std_logic;
SIGNAL \U0|LessThan23~0_combout\ : std_logic;
SIGNAL \U0|LessThan26~0_combout\ : std_logic;
SIGNAL \U0|FSM~11_combout\ : std_logic;
SIGNAL \U0|FSM~12_combout\ : std_logic;
SIGNAL \U0|U1|Add1~0_combout\ : std_logic;
SIGNAL \U0|U1|Add1~30_combout\ : std_logic;
SIGNAL \U0|U1|Add1~1\ : std_logic;
SIGNAL \U0|U1|Add1~2_combout\ : std_logic;
SIGNAL \U0|U1|Add1~29_combout\ : std_logic;
SIGNAL \U0|U1|Add1~3\ : std_logic;
SIGNAL \U0|U1|Add1~4_combout\ : std_logic;
SIGNAL \U0|U1|Add1~28_combout\ : std_logic;
SIGNAL \U0|U1|Add1~5\ : std_logic;
SIGNAL \U0|U1|Add1~7\ : std_logic;
SIGNAL \U0|U1|Add1~8_combout\ : std_logic;
SIGNAL \U0|U1|Add1~27_combout\ : std_logic;
SIGNAL \U0|U1|Add1~9\ : std_logic;
SIGNAL \U0|U1|Add1~10_combout\ : std_logic;
SIGNAL \U0|U1|Add1~22_combout\ : std_logic;
SIGNAL \U0|U1|Add1~11\ : std_logic;
SIGNAL \U0|U1|Add1~12_combout\ : std_logic;
SIGNAL \U0|U1|Add1~23_combout\ : std_logic;
SIGNAL \U0|U1|v_count[6]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|Add1~13\ : std_logic;
SIGNAL \U0|U1|Add1~14_combout\ : std_logic;
SIGNAL \U0|U1|Add1~24_combout\ : std_logic;
SIGNAL \U0|U1|Add1~15\ : std_logic;
SIGNAL \U0|U1|Add1~16_combout\ : std_logic;
SIGNAL \U0|U1|Add1~25_combout\ : std_logic;
SIGNAL \U0|U1|Add1~17\ : std_logic;
SIGNAL \U0|U1|Add1~18_combout\ : std_logic;
SIGNAL \U0|U1|Add1~21_combout\ : std_logic;
SIGNAL \U0|U1|v_count[9]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|LessThan1~1_combout\ : std_logic;
SIGNAL \U0|U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U0|U1|Add1~20_combout\ : std_logic;
SIGNAL \U0|U1|Add1~6_combout\ : std_logic;
SIGNAL \U0|U1|Add1~26_combout\ : std_logic;
SIGNAL \U0|U1|row[3]~feeder_combout\ : std_logic;
SIGNAL \U0|U1|process_0~0_combout\ : std_logic;
SIGNAL \U0|U1|LessThan7~0_combout\ : std_logic;
SIGNAL \U0|FSM~5_combout\ : std_logic;
SIGNAL \U0|FSM~4_combout\ : std_logic;
SIGNAL \U0|FSM~6_combout\ : std_logic;
SIGNAL \U0|LessThan26~1_combout\ : std_logic;
SIGNAL \U0|FSM~13_combout\ : std_logic;
SIGNAL \U0|FSM~14_combout\ : std_logic;
SIGNAL \U0|FSM~9_combout\ : std_logic;
SIGNAL \U0|FSM~8_combout\ : std_logic;
SIGNAL \U0|FSM~7_combout\ : std_logic;
SIGNAL \U0|FSM~10_combout\ : std_logic;
SIGNAL \U0|FSM~15_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal1~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|Equal1~1clkctrl_outclk\ : std_logic;
SIGNAL \GSENSOR_SDO_f~input_o\ : std_logic;
SIGNAL \U1|U0|U0|Equal1~4_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_request_r~q\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_data[7]~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|Selector1~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_valid_next~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|rx_valid~q\ : std_logic;
SIGNAL \U1|U0|U0|monitor_rx_r~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|monitor_rx_r~q\ : std_logic;
SIGNAL \U1|U0|U0|address[4]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|Decoder0~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|address[7]~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|Decoder0~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|Decoder0~4_combout\ : std_logic;
SIGNAL \U1|U0|U0|memory[3][7]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[3][6]~q\ : std_logic;
SIGNAL \U1|U0|U0|Decoder0~5_combout\ : std_logic;
SIGNAL \U1|U0|U0|memory[2][5]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[3][3]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[3][2]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[3][4]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[3][5]~q\ : std_logic;
SIGNAL \U1|arriba~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|memory[2][6]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[3][0]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[2][7]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[3][1]~q\ : std_logic;
SIGNAL \U1|arriba~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|memory[2][4]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[2][3]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[2][2]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[2][1]~q\ : std_logic;
SIGNAL \U1|arriba~2_combout\ : std_logic;
SIGNAL \U1|arriba~3_combout\ : std_logic;
SIGNAL \U1|arriba~4_combout\ : std_logic;
SIGNAL \U1|arriba~combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~32_combout\ : std_logic;
SIGNAL \U1|LessThan2~3_combout\ : std_logic;
SIGNAL \U1|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|memory[2][0]~q\ : std_logic;
SIGNAL \U1|LessThan2~1_combout\ : std_logic;
SIGNAL \U1|LessThan2~2_combout\ : std_logic;
SIGNAL \U1|LessThan2~4_combout\ : std_logic;
SIGNAL \U1|abajo~combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|count[0]~12_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|count~0_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|count~1_combout\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|count~2_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|count~3_combout\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|count~4_combout\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|count~5_combout\ : std_logic;
SIGNAL \U1|Add0~31\ : std_logic;
SIGNAL \U1|Add0~32_combout\ : std_logic;
SIGNAL \U1|Add0~33\ : std_logic;
SIGNAL \U1|Add0~34_combout\ : std_logic;
SIGNAL \U1|count~6_combout\ : std_logic;
SIGNAL \U1|Equal0~5_combout\ : std_logic;
SIGNAL \U1|Add0~35\ : std_logic;
SIGNAL \U1|Add0~36_combout\ : std_logic;
SIGNAL \U1|count~7_combout\ : std_logic;
SIGNAL \U1|Add0~37\ : std_logic;
SIGNAL \U1|Add0~38_combout\ : std_logic;
SIGNAL \U1|count~8_combout\ : std_logic;
SIGNAL \U1|Add0~39\ : std_logic;
SIGNAL \U1|Add0~40_combout\ : std_logic;
SIGNAL \U1|count~9_combout\ : std_logic;
SIGNAL \U1|Add0~41\ : std_logic;
SIGNAL \U1|Add0~42_combout\ : std_logic;
SIGNAL \U1|count~10_combout\ : std_logic;
SIGNAL \U1|Add0~43\ : std_logic;
SIGNAL \U1|Add0~44_combout\ : std_logic;
SIGNAL \U1|Add0~45\ : std_logic;
SIGNAL \U1|Add0~46_combout\ : std_logic;
SIGNAL \U1|count~11_combout\ : std_logic;
SIGNAL \U1|Equal0~6_combout\ : std_logic;
SIGNAL \U1|Equal0~7_combout\ : std_logic;
SIGNAL \U1|Add0~47\ : std_logic;
SIGNAL \U1|Add0~48_combout\ : std_logic;
SIGNAL \U1|Add0~49\ : std_logic;
SIGNAL \U1|Add0~50_combout\ : std_logic;
SIGNAL \U1|Add0~51\ : std_logic;
SIGNAL \U1|Add0~52_combout\ : std_logic;
SIGNAL \U1|Add0~53\ : std_logic;
SIGNAL \U1|Add0~54_combout\ : std_logic;
SIGNAL \U1|Add0~55\ : std_logic;
SIGNAL \U1|Add0~56_combout\ : std_logic;
SIGNAL \U1|Add0~57\ : std_logic;
SIGNAL \U1|Add0~58_combout\ : std_logic;
SIGNAL \U1|Add0~59\ : std_logic;
SIGNAL \U1|Add0~60_combout\ : std_logic;
SIGNAL \U1|Add0~61\ : std_logic;
SIGNAL \U1|Add0~62_combout\ : std_logic;
SIGNAL \U1|Equal0~9_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|Equal0~8_combout\ : std_logic;
SIGNAL \U1|Equal0~10_combout\ : std_logic;
SIGNAL \U1|select_yShift[3]~51\ : std_logic;
SIGNAL \U1|select_yShift[4]~52_combout\ : std_logic;
SIGNAL \U1|select_yShift[4]~53\ : std_logic;
SIGNAL \U1|select_yShift[5]~54_combout\ : std_logic;
SIGNAL \U1|select_yShift[5]~55\ : std_logic;
SIGNAL \U1|select_yShift[6]~56_combout\ : std_logic;
SIGNAL \U1|select_yShift[6]~57\ : std_logic;
SIGNAL \U1|select_yShift[7]~58_combout\ : std_logic;
SIGNAL \U1|select_yShift[7]~59\ : std_logic;
SIGNAL \U1|select_yShift[8]~60_combout\ : std_logic;
SIGNAL \U1|select_yShift[8]~61\ : std_logic;
SIGNAL \U1|select_yShift[9]~62_combout\ : std_logic;
SIGNAL \U1|select_yShift[9]~63\ : std_logic;
SIGNAL \U1|select_yShift[10]~64_combout\ : std_logic;
SIGNAL \U1|select_yShift[10]~65\ : std_logic;
SIGNAL \U1|select_yShift[11]~66_combout\ : std_logic;
SIGNAL \U1|select_yShift[11]~67\ : std_logic;
SIGNAL \U1|select_yShift[12]~68_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~36_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~34_combout\ : std_logic;
SIGNAL \U1|select_yShift[12]~69\ : std_logic;
SIGNAL \U1|select_yShift[13]~70_combout\ : std_logic;
SIGNAL \U1|select_yShift[13]~71\ : std_logic;
SIGNAL \U1|select_yShift[14]~72_combout\ : std_logic;
SIGNAL \U1|select_yShift[14]~73\ : std_logic;
SIGNAL \U1|select_yShift[15]~74_combout\ : std_logic;
SIGNAL \U1|select_yShift[15]~75\ : std_logic;
SIGNAL \U1|select_yShift[16]~76_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~37_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~35_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~38_combout\ : std_logic;
SIGNAL \U1|select_yShift[16]~77\ : std_logic;
SIGNAL \U1|select_yShift[17]~78_combout\ : std_logic;
SIGNAL \U1|select_yShift[17]~79\ : std_logic;
SIGNAL \U1|select_yShift[18]~80_combout\ : std_logic;
SIGNAL \U1|select_yShift[18]~81\ : std_logic;
SIGNAL \U1|select_yShift[19]~82_combout\ : std_logic;
SIGNAL \U1|select_yShift[19]~83\ : std_logic;
SIGNAL \U1|select_yShift[20]~84_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~39_combout\ : std_logic;
SIGNAL \U1|select_yShift[20]~85\ : std_logic;
SIGNAL \U1|select_yShift[21]~86_combout\ : std_logic;
SIGNAL \U1|select_yShift[21]~87\ : std_logic;
SIGNAL \U1|select_yShift[22]~88_combout\ : std_logic;
SIGNAL \U1|select_yShift[22]~89\ : std_logic;
SIGNAL \U1|select_yShift[23]~90_combout\ : std_logic;
SIGNAL \U1|select_yShift[23]~91\ : std_logic;
SIGNAL \U1|select_yShift[24]~92_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~40_combout\ : std_logic;
SIGNAL \U1|select_yShift[24]~93\ : std_logic;
SIGNAL \U1|select_yShift[25]~94_combout\ : std_logic;
SIGNAL \U1|select_yShift[25]~95\ : std_logic;
SIGNAL \U1|select_yShift[26]~96_combout\ : std_logic;
SIGNAL \U1|select_yShift[26]~97\ : std_logic;
SIGNAL \U1|select_yShift[27]~98_combout\ : std_logic;
SIGNAL \U1|select_yShift[27]~99\ : std_logic;
SIGNAL \U1|select_yShift[28]~100_combout\ : std_logic;
SIGNAL \U1|select_yShift[28]~101\ : std_logic;
SIGNAL \U1|select_yShift[29]~102_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~41_combout\ : std_logic;
SIGNAL \U1|select_yShift[29]~103\ : std_logic;
SIGNAL \U1|select_yShift[30]~104_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~42_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~43_combout\ : std_logic;
SIGNAL \U1|select_yShift[30]~105\ : std_logic;
SIGNAL \U1|select_yShift[31]~106_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~44_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~45_combout\ : std_logic;
SIGNAL \U1|select_yShift[0]~33\ : std_logic;
SIGNAL \U1|select_yShift[1]~46_combout\ : std_logic;
SIGNAL \U1|select_yShift[1]~47\ : std_logic;
SIGNAL \U1|select_yShift[2]~48_combout\ : std_logic;
SIGNAL \U1|select_yShift[2]~49\ : std_logic;
SIGNAL \U1|select_yShift[3]~50_combout\ : std_logic;
SIGNAL \U0|Add2~1\ : std_logic;
SIGNAL \U0|Add2~2_combout\ : std_logic;
SIGNAL \U0|Add2~3\ : std_logic;
SIGNAL \U0|Add2~5\ : std_logic;
SIGNAL \U0|Add2~7\ : std_logic;
SIGNAL \U0|Add2~9\ : std_logic;
SIGNAL \U0|Add2~11\ : std_logic;
SIGNAL \U0|Add2~13\ : std_logic;
SIGNAL \U0|Add2~15\ : std_logic;
SIGNAL \U0|Add2~17\ : std_logic;
SIGNAL \U0|Add2~19\ : std_logic;
SIGNAL \U0|Add2~21\ : std_logic;
SIGNAL \U0|Add2~23\ : std_logic;
SIGNAL \U0|Add2~25\ : std_logic;
SIGNAL \U0|Add2~27\ : std_logic;
SIGNAL \U0|Add2~29\ : std_logic;
SIGNAL \U0|Add2~31\ : std_logic;
SIGNAL \U0|Add2~33\ : std_logic;
SIGNAL \U0|Add2~35\ : std_logic;
SIGNAL \U0|Add2~37\ : std_logic;
SIGNAL \U0|Add2~39\ : std_logic;
SIGNAL \U0|Add2~41\ : std_logic;
SIGNAL \U0|Add2~43\ : std_logic;
SIGNAL \U0|Add2~45\ : std_logic;
SIGNAL \U0|Add2~46_combout\ : std_logic;
SIGNAL \U0|Add2~36_combout\ : std_logic;
SIGNAL \U0|Add2~42_combout\ : std_logic;
SIGNAL \U0|Add2~38_combout\ : std_logic;
SIGNAL \U0|Add2~40_combout\ : std_logic;
SIGNAL \U0|LessThan10~5_combout\ : std_logic;
SIGNAL \U0|Add2~44_combout\ : std_logic;
SIGNAL \U0|LessThan10~6_combout\ : std_logic;
SIGNAL \U0|Add2~0_combout\ : std_logic;
SIGNAL \U0|LessThan13~0_combout\ : std_logic;
SIGNAL \U0|LessThan13~1_combout\ : std_logic;
SIGNAL \U0|LessThan13~2_combout\ : std_logic;
SIGNAL \U0|LessThan13~3_combout\ : std_logic;
SIGNAL \U0|FSM~61_combout\ : std_logic;
SIGNAL \U0|LessThan24~0_combout\ : std_logic;
SIGNAL \U0|LessThan24~1_combout\ : std_logic;
SIGNAL \U0|LessThan10~7_combout\ : std_logic;
SIGNAL \U0|LessThan10~8_combout\ : std_logic;
SIGNAL \U0|LessThan10~9_combout\ : std_logic;
SIGNAL \U0|Add2~47\ : std_logic;
SIGNAL \U0|Add2~48_combout\ : std_logic;
SIGNAL \U0|LessThan10~10_combout\ : std_logic;
SIGNAL \U0|Add2~4_combout\ : std_logic;
SIGNAL \U0|Add2~8_combout\ : std_logic;
SIGNAL \U0|Add2~6_combout\ : std_logic;
SIGNAL \U0|Add2~10_combout\ : std_logic;
SIGNAL \U0|LessThan10~0_combout\ : std_logic;
SIGNAL \U0|Add2~18_combout\ : std_logic;
SIGNAL \U0|Add2~12_combout\ : std_logic;
SIGNAL \U0|Add2~14_combout\ : std_logic;
SIGNAL \U0|Add2~16_combout\ : std_logic;
SIGNAL \U0|LessThan10~1_combout\ : std_logic;
SIGNAL \U0|Add2~26_combout\ : std_logic;
SIGNAL \U0|Add2~20_combout\ : std_logic;
SIGNAL \U0|Add2~22_combout\ : std_logic;
SIGNAL \U0|Add2~24_combout\ : std_logic;
SIGNAL \U0|LessThan10~2_combout\ : std_logic;
SIGNAL \U0|Add2~34_combout\ : std_logic;
SIGNAL \U0|Add2~28_combout\ : std_logic;
SIGNAL \U0|Add2~32_combout\ : std_logic;
SIGNAL \U0|Add2~30_combout\ : std_logic;
SIGNAL \U0|LessThan10~3_combout\ : std_logic;
SIGNAL \U0|LessThan10~4_combout\ : std_logic;
SIGNAL \U0|FSM~62_combout\ : std_logic;
SIGNAL \U1|U0|U0|Decoder0~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|memory[1][7]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[1][1]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[1][0]~q\ : std_logic;
SIGNAL \U1|U0|U0|Decoder0~3_combout\ : std_logic;
SIGNAL \U1|U0|U0|memory[0][7]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[0][6]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[1][6]~q\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|U0|U0|memory[0][4]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[0][5]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[0][3]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[0][0]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[0][2]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[0][1]~q\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|U0|U0|memory[1][3]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[1][2]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[1][5]~q\ : std_logic;
SIGNAL \U1|U0|U0|memory[1][4]~q\ : std_logic;
SIGNAL \U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|LessThan0~3_combout\ : std_logic;
SIGNAL \U1|LessThan0~4_combout\ : std_logic;
SIGNAL \U1|izquierda~combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~32_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~41_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~42_combout\ : std_logic;
SIGNAL \U1|select_xShift[23]~91\ : std_logic;
SIGNAL \U1|select_xShift[24]~92_combout\ : std_logic;
SIGNAL \U1|select_xShift[24]~93\ : std_logic;
SIGNAL \U1|select_xShift[25]~94_combout\ : std_logic;
SIGNAL \U1|select_xShift[25]~95\ : std_logic;
SIGNAL \U1|select_xShift[26]~96_combout\ : std_logic;
SIGNAL \U1|select_xShift[26]~97\ : std_logic;
SIGNAL \U1|select_xShift[27]~98_combout\ : std_logic;
SIGNAL \U1|select_xShift[27]~99\ : std_logic;
SIGNAL \U1|select_xShift[28]~100_combout\ : std_logic;
SIGNAL \U1|select_xShift[28]~101\ : std_logic;
SIGNAL \U1|select_xShift[29]~102_combout\ : std_logic;
SIGNAL \U1|select_xShift[29]~103\ : std_logic;
SIGNAL \U1|select_xShift[30]~104_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~34_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~36_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~37_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~35_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~38_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~40_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~39_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~43_combout\ : std_logic;
SIGNAL \U1|select_xShift[30]~105\ : std_logic;
SIGNAL \U1|select_xShift[31]~106_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~44_combout\ : std_logic;
SIGNAL \U1|derecha~3_combout\ : std_logic;
SIGNAL \U1|derecha~2_combout\ : std_logic;
SIGNAL \U1|derecha~0_combout\ : std_logic;
SIGNAL \U1|derecha~1_combout\ : std_logic;
SIGNAL \U1|derecha~4_combout\ : std_logic;
SIGNAL \U1|derecha~combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~45_combout\ : std_logic;
SIGNAL \U1|select_xShift[0]~33\ : std_logic;
SIGNAL \U1|select_xShift[1]~46_combout\ : std_logic;
SIGNAL \U1|select_xShift[1]~47\ : std_logic;
SIGNAL \U1|select_xShift[2]~48_combout\ : std_logic;
SIGNAL \U1|select_xShift[2]~49\ : std_logic;
SIGNAL \U1|select_xShift[3]~50_combout\ : std_logic;
SIGNAL \U1|select_xShift[3]~51\ : std_logic;
SIGNAL \U1|select_xShift[4]~52_combout\ : std_logic;
SIGNAL \U1|select_xShift[4]~53\ : std_logic;
SIGNAL \U1|select_xShift[5]~54_combout\ : std_logic;
SIGNAL \U1|select_xShift[5]~55\ : std_logic;
SIGNAL \U1|select_xShift[6]~56_combout\ : std_logic;
SIGNAL \U1|select_xShift[6]~57\ : std_logic;
SIGNAL \U1|select_xShift[7]~58_combout\ : std_logic;
SIGNAL \U1|select_xShift[7]~59\ : std_logic;
SIGNAL \U1|select_xShift[8]~60_combout\ : std_logic;
SIGNAL \U1|select_xShift[8]~61\ : std_logic;
SIGNAL \U1|select_xShift[9]~62_combout\ : std_logic;
SIGNAL \U1|select_xShift[9]~63\ : std_logic;
SIGNAL \U1|select_xShift[10]~64_combout\ : std_logic;
SIGNAL \U1|select_xShift[10]~65\ : std_logic;
SIGNAL \U1|select_xShift[11]~66_combout\ : std_logic;
SIGNAL \U1|select_xShift[11]~67\ : std_logic;
SIGNAL \U1|select_xShift[12]~68_combout\ : std_logic;
SIGNAL \U1|select_xShift[12]~69\ : std_logic;
SIGNAL \U1|select_xShift[13]~70_combout\ : std_logic;
SIGNAL \U1|select_xShift[13]~71\ : std_logic;
SIGNAL \U1|select_xShift[14]~72_combout\ : std_logic;
SIGNAL \U1|select_xShift[14]~73\ : std_logic;
SIGNAL \U1|select_xShift[15]~74_combout\ : std_logic;
SIGNAL \U1|select_xShift[15]~75\ : std_logic;
SIGNAL \U1|select_xShift[16]~76_combout\ : std_logic;
SIGNAL \U1|select_xShift[16]~77\ : std_logic;
SIGNAL \U1|select_xShift[17]~78_combout\ : std_logic;
SIGNAL \U1|select_xShift[17]~79\ : std_logic;
SIGNAL \U1|select_xShift[18]~80_combout\ : std_logic;
SIGNAL \U1|select_xShift[18]~81\ : std_logic;
SIGNAL \U1|select_xShift[19]~82_combout\ : std_logic;
SIGNAL \U1|select_xShift[19]~83\ : std_logic;
SIGNAL \U1|select_xShift[20]~84_combout\ : std_logic;
SIGNAL \U1|select_xShift[20]~85\ : std_logic;
SIGNAL \U1|select_xShift[21]~86_combout\ : std_logic;
SIGNAL \U1|select_xShift[21]~87\ : std_logic;
SIGNAL \U1|select_xShift[22]~88_combout\ : std_logic;
SIGNAL \U1|select_xShift[22]~89\ : std_logic;
SIGNAL \U1|select_xShift[23]~90_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult3~12\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~1\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~3\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~5\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~9\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \U0|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~17\ : std_logic;
SIGNAL \U0|Add0~19\ : std_logic;
SIGNAL \U0|Add0~21\ : std_logic;
SIGNAL \U0|Add0~23\ : std_logic;
SIGNAL \U0|Add0~25\ : std_logic;
SIGNAL \U0|Add0~27\ : std_logic;
SIGNAL \U0|Add0~29\ : std_logic;
SIGNAL \U0|Add0~31\ : std_logic;
SIGNAL \U0|Add0~33\ : std_logic;
SIGNAL \U0|Add0~35\ : std_logic;
SIGNAL \U0|Add0~37\ : std_logic;
SIGNAL \U0|Add0~39\ : std_logic;
SIGNAL \U0|Add0~41\ : std_logic;
SIGNAL \U0|Add0~43\ : std_logic;
SIGNAL \U0|Add0~45\ : std_logic;
SIGNAL \U0|Add0~47\ : std_logic;
SIGNAL \U0|Add0~49\ : std_logic;
SIGNAL \U0|Add0~51\ : std_logic;
SIGNAL \U0|Add0~53\ : std_logic;
SIGNAL \U0|Add0~55\ : std_logic;
SIGNAL \U0|Add0~56_combout\ : std_logic;
SIGNAL \U0|Add0~54_combout\ : std_logic;
SIGNAL \U0|Add0~52_combout\ : std_logic;
SIGNAL \U0|Add0~50_combout\ : std_logic;
SIGNAL \U0|Add0~48_combout\ : std_logic;
SIGNAL \U0|Add0~46_combout\ : std_logic;
SIGNAL \U0|Add0~44_combout\ : std_logic;
SIGNAL \U0|Add0~42_combout\ : std_logic;
SIGNAL \U0|Add0~40_combout\ : std_logic;
SIGNAL \U0|Add0~38_combout\ : std_logic;
SIGNAL \U0|Add0~36_combout\ : std_logic;
SIGNAL \U0|Add0~34_combout\ : std_logic;
SIGNAL \U0|Add0~32_combout\ : std_logic;
SIGNAL \U0|Add0~30_combout\ : std_logic;
SIGNAL \U0|Add0~28_combout\ : std_logic;
SIGNAL \U0|Add0~26_combout\ : std_logic;
SIGNAL \U0|Add0~24_combout\ : std_logic;
SIGNAL \U0|Add0~22_combout\ : std_logic;
SIGNAL \U0|Add0~20_combout\ : std_logic;
SIGNAL \U0|Add0~18_combout\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|Add1~1\ : std_logic;
SIGNAL \U0|Add1~3\ : std_logic;
SIGNAL \U0|Add1~5\ : std_logic;
SIGNAL \U0|Add1~7\ : std_logic;
SIGNAL \U0|Add1~9\ : std_logic;
SIGNAL \U0|Add1~11\ : std_logic;
SIGNAL \U0|Add1~13\ : std_logic;
SIGNAL \U0|Add1~15\ : std_logic;
SIGNAL \U0|Add1~17\ : std_logic;
SIGNAL \U0|Add1~19\ : std_logic;
SIGNAL \U0|Add1~21\ : std_logic;
SIGNAL \U0|Add1~23\ : std_logic;
SIGNAL \U0|Add1~25\ : std_logic;
SIGNAL \U0|Add1~27\ : std_logic;
SIGNAL \U0|Add1~29\ : std_logic;
SIGNAL \U0|Add1~31\ : std_logic;
SIGNAL \U0|Add1~33\ : std_logic;
SIGNAL \U0|Add1~35\ : std_logic;
SIGNAL \U0|Add1~37\ : std_logic;
SIGNAL \U0|Add1~39\ : std_logic;
SIGNAL \U0|Add1~41\ : std_logic;
SIGNAL \U0|Add1~43\ : std_logic;
SIGNAL \U0|Add1~45\ : std_logic;
SIGNAL \U0|Add1~47\ : std_logic;
SIGNAL \U0|Add1~49\ : std_logic;
SIGNAL \U0|Add1~51\ : std_logic;
SIGNAL \U0|Add1~53\ : std_logic;
SIGNAL \U0|Add1~55\ : std_logic;
SIGNAL \U0|Add1~56_combout\ : std_logic;
SIGNAL \U0|Add1~54_combout\ : std_logic;
SIGNAL \U0|Add1~52_combout\ : std_logic;
SIGNAL \U0|Add1~50_combout\ : std_logic;
SIGNAL \U0|Add1~48_combout\ : std_logic;
SIGNAL \U0|Add1~46_combout\ : std_logic;
SIGNAL \U0|Add1~44_combout\ : std_logic;
SIGNAL \U0|Add1~42_combout\ : std_logic;
SIGNAL \U0|Add1~40_combout\ : std_logic;
SIGNAL \U0|Add1~38_combout\ : std_logic;
SIGNAL \U0|Add1~36_combout\ : std_logic;
SIGNAL \U0|Add1~34_combout\ : std_logic;
SIGNAL \U0|Add1~32_combout\ : std_logic;
SIGNAL \U0|Add1~30_combout\ : std_logic;
SIGNAL \U0|Add1~28_combout\ : std_logic;
SIGNAL \U0|Add1~26_combout\ : std_logic;
SIGNAL \U0|Add1~24_combout\ : std_logic;
SIGNAL \U0|Add1~22_combout\ : std_logic;
SIGNAL \U0|Add1~20_combout\ : std_logic;
SIGNAL \U0|Add1~18_combout\ : std_logic;
SIGNAL \U0|Add1~16_combout\ : std_logic;
SIGNAL \U0|Add1~14_combout\ : std_logic;
SIGNAL \U0|Add1~12_combout\ : std_logic;
SIGNAL \U0|Add1~10_combout\ : std_logic;
SIGNAL \U0|Add1~8_combout\ : std_logic;
SIGNAL \U0|Add1~6_combout\ : std_logic;
SIGNAL \U0|Add1~4_combout\ : std_logic;
SIGNAL \U0|Add1~2_combout\ : std_logic;
SIGNAL \U0|Add1~0_combout\ : std_logic;
SIGNAL \U0|Add6~1\ : std_logic;
SIGNAL \U0|Add6~3\ : std_logic;
SIGNAL \U0|Add6~5\ : std_logic;
SIGNAL \U0|Add6~7\ : std_logic;
SIGNAL \U0|Add6~9\ : std_logic;
SIGNAL \U0|Add6~11\ : std_logic;
SIGNAL \U0|Add6~13\ : std_logic;
SIGNAL \U0|Add6~15\ : std_logic;
SIGNAL \U0|Add6~17\ : std_logic;
SIGNAL \U0|Add6~19\ : std_logic;
SIGNAL \U0|Add6~21\ : std_logic;
SIGNAL \U0|Add6~23\ : std_logic;
SIGNAL \U0|Add6~25\ : std_logic;
SIGNAL \U0|Add6~27\ : std_logic;
SIGNAL \U0|Add6~29\ : std_logic;
SIGNAL \U0|Add6~31\ : std_logic;
SIGNAL \U0|Add6~33\ : std_logic;
SIGNAL \U0|Add6~35\ : std_logic;
SIGNAL \U0|Add6~37\ : std_logic;
SIGNAL \U0|Add6~39\ : std_logic;
SIGNAL \U0|Add6~41\ : std_logic;
SIGNAL \U0|Add6~43\ : std_logic;
SIGNAL \U0|Add6~45\ : std_logic;
SIGNAL \U0|Add6~47\ : std_logic;
SIGNAL \U0|Add6~49\ : std_logic;
SIGNAL \U0|Add6~51\ : std_logic;
SIGNAL \U0|Add6~53\ : std_logic;
SIGNAL \U0|Add6~55\ : std_logic;
SIGNAL \U0|Add6~56_combout\ : std_logic;
SIGNAL \U0|Add6~54_combout\ : std_logic;
SIGNAL \U0|Add6~52_combout\ : std_logic;
SIGNAL \U0|LessThan12~22_combout\ : std_logic;
SIGNAL \U0|Add6~34_combout\ : std_logic;
SIGNAL \U0|Add6~28_combout\ : std_logic;
SIGNAL \U0|Add6~32_combout\ : std_logic;
SIGNAL \U0|Add6~30_combout\ : std_logic;
SIGNAL \U0|LessThan12~18_combout\ : std_logic;
SIGNAL \U0|Add6~42_combout\ : std_logic;
SIGNAL \U0|Add6~38_combout\ : std_logic;
SIGNAL \U0|Add6~40_combout\ : std_logic;
SIGNAL \U0|Add6~36_combout\ : std_logic;
SIGNAL \U0|LessThan12~19_combout\ : std_logic;
SIGNAL \U0|Add6~26_combout\ : std_logic;
SIGNAL \U0|Add6~24_combout\ : std_logic;
SIGNAL \U0|Add6~22_combout\ : std_logic;
SIGNAL \U0|Add6~20_combout\ : std_logic;
SIGNAL \U0|LessThan12~17_combout\ : std_logic;
SIGNAL \U0|Add6~18_combout\ : std_logic;
SIGNAL \U0|Add6~16_combout\ : std_logic;
SIGNAL \U0|Add6~12_combout\ : std_logic;
SIGNAL \U0|Add6~10_combout\ : std_logic;
SIGNAL \U0|Add6~8_combout\ : std_logic;
SIGNAL \U0|Add6~6_combout\ : std_logic;
SIGNAL \U0|Add6~4_combout\ : std_logic;
SIGNAL \U0|Add6~2_combout\ : std_logic;
SIGNAL \U0|Add6~0_combout\ : std_logic;
SIGNAL \U0|LessThan12~1_cout\ : std_logic;
SIGNAL \U0|LessThan12~3_cout\ : std_logic;
SIGNAL \U0|LessThan12~5_cout\ : std_logic;
SIGNAL \U0|LessThan12~7_cout\ : std_logic;
SIGNAL \U0|LessThan12~9_cout\ : std_logic;
SIGNAL \U0|LessThan12~11_cout\ : std_logic;
SIGNAL \U0|LessThan12~13_cout\ : std_logic;
SIGNAL \U0|LessThan12~14_combout\ : std_logic;
SIGNAL \U0|Add6~14_combout\ : std_logic;
SIGNAL \U0|LessThan12~16_combout\ : std_logic;
SIGNAL \U0|LessThan12~20_combout\ : std_logic;
SIGNAL \U0|Add6~50_combout\ : std_logic;
SIGNAL \U0|Add6~48_combout\ : std_logic;
SIGNAL \U0|Add6~46_combout\ : std_logic;
SIGNAL \U0|Add6~44_combout\ : std_logic;
SIGNAL \U0|LessThan12~21_combout\ : std_logic;
SIGNAL \U0|FSM~51_combout\ : std_logic;
SIGNAL \U0|LessThan8~21_combout\ : std_logic;
SIGNAL \U0|LessThan8~2_cout\ : std_logic;
SIGNAL \U0|LessThan8~4_cout\ : std_logic;
SIGNAL \U0|LessThan8~6_cout\ : std_logic;
SIGNAL \U0|LessThan8~8_cout\ : std_logic;
SIGNAL \U0|LessThan8~10_cout\ : std_logic;
SIGNAL \U0|LessThan8~12_cout\ : std_logic;
SIGNAL \U0|LessThan8~14_cout\ : std_logic;
SIGNAL \U0|LessThan8~16_cout\ : std_logic;
SIGNAL \U0|LessThan8~17_combout\ : std_logic;
SIGNAL \U0|LessThan8~19_combout\ : std_logic;
SIGNAL \U0|LessThan8~20_combout\ : std_logic;
SIGNAL \U0|LessThan8~22_combout\ : std_logic;
SIGNAL \U0|LessThan8~23_combout\ : std_logic;
SIGNAL \U0|LessThan8~25_combout\ : std_logic;
SIGNAL \U0|LessThan8~24_combout\ : std_logic;
SIGNAL \U0|LessThan8~26_combout\ : std_logic;
SIGNAL \U0|FSM~63_combout\ : std_logic;
SIGNAL \U0|LessThan10~11_combout\ : std_logic;
SIGNAL \U0|Add3~1\ : std_logic;
SIGNAL \U0|Add3~3\ : std_logic;
SIGNAL \U0|Add3~5\ : std_logic;
SIGNAL \U0|Add3~7\ : std_logic;
SIGNAL \U0|Add3~9\ : std_logic;
SIGNAL \U0|Add3~11\ : std_logic;
SIGNAL \U0|Add3~13\ : std_logic;
SIGNAL \U0|Add3~15\ : std_logic;
SIGNAL \U0|Add3~17\ : std_logic;
SIGNAL \U0|Add3~19\ : std_logic;
SIGNAL \U0|Add3~21\ : std_logic;
SIGNAL \U0|Add3~22_combout\ : std_logic;
SIGNAL \U0|Add3~23\ : std_logic;
SIGNAL \U0|Add3~24_combout\ : std_logic;
SIGNAL \U0|Add3~20_combout\ : std_logic;
SIGNAL \U0|Add3~25\ : std_logic;
SIGNAL \U0|Add3~26_combout\ : std_logic;
SIGNAL \U0|FSM~52_combout\ : std_logic;
SIGNAL \U0|Add3~14_combout\ : std_logic;
SIGNAL \U0|Add3~27\ : std_logic;
SIGNAL \U0|Add3~29\ : std_logic;
SIGNAL \U0|Add3~31\ : std_logic;
SIGNAL \U0|Add3~33\ : std_logic;
SIGNAL \U0|Add3~35\ : std_logic;
SIGNAL \U0|Add3~36_combout\ : std_logic;
SIGNAL \U0|Add3~18_combout\ : std_logic;
SIGNAL \U0|Add3~37\ : std_logic;
SIGNAL \U0|Add3~39\ : std_logic;
SIGNAL \U0|Add3~40_combout\ : std_logic;
SIGNAL \U0|FSM~55_combout\ : std_logic;
SIGNAL \U0|Add3~16_combout\ : std_logic;
SIGNAL \U0|Add3~4_combout\ : std_logic;
SIGNAL \U0|Add3~8_combout\ : std_logic;
SIGNAL \U0|Add3~6_combout\ : std_logic;
SIGNAL \U0|Add3~10_combout\ : std_logic;
SIGNAL \U0|FSM~54_combout\ : std_logic;
SIGNAL \U0|Add3~12_combout\ : std_logic;
SIGNAL \U0|FSM~56_combout\ : std_logic;
SIGNAL \U0|Add3~30_combout\ : std_logic;
SIGNAL \U0|Add3~32_combout\ : std_logic;
SIGNAL \U0|Add3~28_combout\ : std_logic;
SIGNAL \U0|Add3~34_combout\ : std_logic;
SIGNAL \U0|FSM~53_combout\ : std_logic;
SIGNAL \U0|Add3~38_combout\ : std_logic;
SIGNAL \U0|FSM~57_combout\ : std_logic;
SIGNAL \U0|Add3~2_combout\ : std_logic;
SIGNAL \U0|LessThan11~3_combout\ : std_logic;
SIGNAL \U0|LessThan11~0_combout\ : std_logic;
SIGNAL \U0|LessThan11~1_combout\ : std_logic;
SIGNAL \U0|LessThan11~2_combout\ : std_logic;
SIGNAL \U0|Add3~0_combout\ : std_logic;
SIGNAL \U0|LessThan11~4_combout\ : std_logic;
SIGNAL \U0|LessThan11~5_combout\ : std_logic;
SIGNAL \U0|Add3~41\ : std_logic;
SIGNAL \U0|Add3~42_combout\ : std_logic;
SIGNAL \U0|Add3~43\ : std_logic;
SIGNAL \U0|Add3~45\ : std_logic;
SIGNAL \U0|Add3~46_combout\ : std_logic;
SIGNAL \U0|Add3~44_combout\ : std_logic;
SIGNAL \U0|FSM~58_combout\ : std_logic;
SIGNAL \U0|LessThan11~6_combout\ : std_logic;
SIGNAL \U0|Add3~47\ : std_logic;
SIGNAL \U0|Add3~48_combout\ : std_logic;
SIGNAL \U0|FSM~59_combout\ : std_logic;
SIGNAL \U0|FSM~49_combout\ : std_logic;
SIGNAL \U0|FSM~47_combout\ : std_logic;
SIGNAL \U0|FSM~45_combout\ : std_logic;
SIGNAL \U0|LessThan14~1_cout\ : std_logic;
SIGNAL \U0|LessThan14~3_cout\ : std_logic;
SIGNAL \U0|LessThan14~5_cout\ : std_logic;
SIGNAL \U0|LessThan14~7_cout\ : std_logic;
SIGNAL \U0|LessThan14~9_cout\ : std_logic;
SIGNAL \U0|LessThan14~11_cout\ : std_logic;
SIGNAL \U0|LessThan14~13_cout\ : std_logic;
SIGNAL \U0|LessThan14~14_combout\ : std_logic;
SIGNAL \U0|FSM~44_combout\ : std_logic;
SIGNAL \U0|FSM~46_combout\ : std_logic;
SIGNAL \U0|FSM~48_combout\ : std_logic;
SIGNAL \U0|FSM~50_combout\ : std_logic;
SIGNAL \U0|FSM~60_combout\ : std_logic;
SIGNAL \U0|Add4~1_cout\ : std_logic;
SIGNAL \U0|Add4~3_cout\ : std_logic;
SIGNAL \U0|Add4~5\ : std_logic;
SIGNAL \U0|Add4~7\ : std_logic;
SIGNAL \U0|Add4~9\ : std_logic;
SIGNAL \U0|Add4~11\ : std_logic;
SIGNAL \U0|Add4~13\ : std_logic;
SIGNAL \U0|Add4~15\ : std_logic;
SIGNAL \U0|Add4~17\ : std_logic;
SIGNAL \U0|Add4~19\ : std_logic;
SIGNAL \U0|Add4~21\ : std_logic;
SIGNAL \U0|Add4~23\ : std_logic;
SIGNAL \U0|Add4~25\ : std_logic;
SIGNAL \U0|Add4~27\ : std_logic;
SIGNAL \U0|Add4~29\ : std_logic;
SIGNAL \U0|Add4~31\ : std_logic;
SIGNAL \U0|Add4~33\ : std_logic;
SIGNAL \U0|Add4~35\ : std_logic;
SIGNAL \U0|Add4~37\ : std_logic;
SIGNAL \U0|Add4~39\ : std_logic;
SIGNAL \U0|Add4~41\ : std_logic;
SIGNAL \U0|Add4~43\ : std_logic;
SIGNAL \U0|Add4~45\ : std_logic;
SIGNAL \U0|Add4~47\ : std_logic;
SIGNAL \U0|Add4~49\ : std_logic;
SIGNAL \U0|Add4~51\ : std_logic;
SIGNAL \U0|Add4~53\ : std_logic;
SIGNAL \U0|Add4~55\ : std_logic;
SIGNAL \U0|Add4~56_combout\ : std_logic;
SIGNAL \U0|Add4~52_combout\ : std_logic;
SIGNAL \U0|Add4~46_combout\ : std_logic;
SIGNAL \U0|Add4~50_combout\ : std_logic;
SIGNAL \U0|Add4~48_combout\ : std_logic;
SIGNAL \U0|Add4~44_combout\ : std_logic;
SIGNAL \U0|LessThan9~23_combout\ : std_logic;
SIGNAL \U0|Add4~18_combout\ : std_logic;
SIGNAL \U0|Add4~16_combout\ : std_logic;
SIGNAL \U0|Add4~12_combout\ : std_logic;
SIGNAL \U0|Add4~10_combout\ : std_logic;
SIGNAL \U0|Add4~8_combout\ : std_logic;
SIGNAL \U0|Add4~6_combout\ : std_logic;
SIGNAL \U0|Add4~4_combout\ : std_logic;
SIGNAL \U0|LessThan9~1_cout\ : std_logic;
SIGNAL \U0|LessThan9~3_cout\ : std_logic;
SIGNAL \U0|LessThan9~5_cout\ : std_logic;
SIGNAL \U0|LessThan9~7_cout\ : std_logic;
SIGNAL \U0|LessThan9~9_cout\ : std_logic;
SIGNAL \U0|LessThan9~11_cout\ : std_logic;
SIGNAL \U0|LessThan9~13_cout\ : std_logic;
SIGNAL \U0|LessThan9~15_cout\ : std_logic;
SIGNAL \U0|LessThan9~16_combout\ : std_logic;
SIGNAL \U0|Add4~14_combout\ : std_logic;
SIGNAL \U0|LessThan9~18_combout\ : std_logic;
SIGNAL \U0|Add4~34_combout\ : std_logic;
SIGNAL \U0|Add4~28_combout\ : std_logic;
SIGNAL \U0|Add4~32_combout\ : std_logic;
SIGNAL \U0|Add4~30_combout\ : std_logic;
SIGNAL \U0|LessThan9~20_combout\ : std_logic;
SIGNAL \U0|Add4~26_combout\ : std_logic;
SIGNAL \U0|Add4~24_combout\ : std_logic;
SIGNAL \U0|Add4~22_combout\ : std_logic;
SIGNAL \U0|Add4~20_combout\ : std_logic;
SIGNAL \U0|LessThan9~19_combout\ : std_logic;
SIGNAL \U0|Add4~42_combout\ : std_logic;
SIGNAL \U0|Add4~38_combout\ : std_logic;
SIGNAL \U0|Add4~40_combout\ : std_logic;
SIGNAL \U0|Add4~36_combout\ : std_logic;
SIGNAL \U0|LessThan9~21_combout\ : std_logic;
SIGNAL \U0|LessThan9~22_combout\ : std_logic;
SIGNAL \U0|Add4~54_combout\ : std_logic;
SIGNAL \U0|LessThan9~24_combout\ : std_logic;
SIGNAL \U0|FSM~64_combout\ : std_logic;
SIGNAL \U0|FSM~17_combout\ : std_logic;
SIGNAL \U0|FSM~65_combout\ : std_logic;
SIGNAL \U0|FSM~66_combout\ : std_logic;
SIGNAL \U0|FSM~67_combout\ : std_logic;
SIGNAL \U0|FSM~68_combout\ : std_logic;
SIGNAL \U0|FSM~69_combout\ : std_logic;
SIGNAL \U0|FSM~70_combout\ : std_logic;
SIGNAL \U0|FSM~71_combout\ : std_logic;
SIGNAL \U0|U1|process_0~1_combout\ : std_logic;
SIGNAL \U0|U1|disp_ena~feeder_combout\ : std_logic;
SIGNAL \U0|U1|disp_ena~q\ : std_logic;
SIGNAL \U0|FSM~31_combout\ : std_logic;
SIGNAL \U0|FSM~30_combout\ : std_logic;
SIGNAL \U0|FSM~32_combout\ : std_logic;
SIGNAL \U0|FSM~33_combout\ : std_logic;
SIGNAL \U0|FSM~37_combout\ : std_logic;
SIGNAL \U0|FSM~36_combout\ : std_logic;
SIGNAL \U0|FSM~38_combout\ : std_logic;
SIGNAL \U1|index[0]~32_combout\ : std_logic;
SIGNAL \U1|Add1~1\ : std_logic;
SIGNAL \U1|Add1~3\ : std_logic;
SIGNAL \U1|Add1~4_combout\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|index[0]~33\ : std_logic;
SIGNAL \U1|index[1]~35\ : std_logic;
SIGNAL \U1|index[2]~37\ : std_logic;
SIGNAL \U1|index[3]~38_combout\ : std_logic;
SIGNAL \BUT1~input_o\ : std_logic;
SIGNAL \U1|p~2_combout\ : std_logic;
SIGNAL \U1|Add1~5\ : std_logic;
SIGNAL \U1|Add1~7\ : std_logic;
SIGNAL \U1|Add1~9\ : std_logic;
SIGNAL \U1|Add1~11\ : std_logic;
SIGNAL \U1|Add1~13\ : std_logic;
SIGNAL \U1|Add1~15\ : std_logic;
SIGNAL \U1|Add1~17\ : std_logic;
SIGNAL \U1|Add1~19\ : std_logic;
SIGNAL \U1|Add1~21\ : std_logic;
SIGNAL \U1|Add1~23\ : std_logic;
SIGNAL \U1|Add1~25\ : std_logic;
SIGNAL \U1|Add1~27\ : std_logic;
SIGNAL \U1|Add1~29\ : std_logic;
SIGNAL \U1|Add1~30_combout\ : std_logic;
SIGNAL \U1|Add1~28_combout\ : std_logic;
SIGNAL \U1|Add1~26_combout\ : std_logic;
SIGNAL \U1|Add1~24_combout\ : std_logic;
SIGNAL \U1|Add1~22_combout\ : std_logic;
SIGNAL \U1|Add1~20_combout\ : std_logic;
SIGNAL \U1|Add1~18_combout\ : std_logic;
SIGNAL \U1|Add1~16_combout\ : std_logic;
SIGNAL \U1|Add1~14_combout\ : std_logic;
SIGNAL \U1|Add1~12_combout\ : std_logic;
SIGNAL \U1|Add1~10_combout\ : std_logic;
SIGNAL \U1|Add1~8_combout\ : std_logic;
SIGNAL \U1|Add1~6_combout\ : std_logic;
SIGNAL \U1|index[3]~39\ : std_logic;
SIGNAL \U1|index[4]~41\ : std_logic;
SIGNAL \U1|index[5]~43\ : std_logic;
SIGNAL \U1|index[6]~45\ : std_logic;
SIGNAL \U1|index[7]~47\ : std_logic;
SIGNAL \U1|index[8]~49\ : std_logic;
SIGNAL \U1|index[9]~51\ : std_logic;
SIGNAL \U1|index[10]~53\ : std_logic;
SIGNAL \U1|index[11]~55\ : std_logic;
SIGNAL \U1|index[12]~57\ : std_logic;
SIGNAL \U1|index[13]~59\ : std_logic;
SIGNAL \U1|index[14]~61\ : std_logic;
SIGNAL \U1|index[15]~63\ : std_logic;
SIGNAL \U1|index[16]~64_combout\ : std_logic;
SIGNAL \U1|Add1~31\ : std_logic;
SIGNAL \U1|Add1~33\ : std_logic;
SIGNAL \U1|Add1~34_combout\ : std_logic;
SIGNAL \U1|Add1~32_combout\ : std_logic;
SIGNAL \U1|index[16]~65\ : std_logic;
SIGNAL \U1|index[17]~67\ : std_logic;
SIGNAL \U1|index[18]~68_combout\ : std_logic;
SIGNAL \U1|index[17]~66_combout\ : std_logic;
SIGNAL \U1|Add1~35\ : std_logic;
SIGNAL \U1|Add1~36_combout\ : std_logic;
SIGNAL \U1|index[18]~69\ : std_logic;
SIGNAL \U1|index[19]~70_combout\ : std_logic;
SIGNAL \U1|Equal1~3_combout\ : std_logic;
SIGNAL \U1|index[14]~60_combout\ : std_logic;
SIGNAL \U1|index[12]~56_combout\ : std_logic;
SIGNAL \U1|index[13]~58_combout\ : std_logic;
SIGNAL \U1|index[15]~62_combout\ : std_logic;
SIGNAL \U1|Equal1~2_combout\ : std_logic;
SIGNAL \U1|index[10]~52_combout\ : std_logic;
SIGNAL \U1|index[11]~54_combout\ : std_logic;
SIGNAL \U1|index[9]~50_combout\ : std_logic;
SIGNAL \U1|index[8]~48_combout\ : std_logic;
SIGNAL \U1|Equal1~1_combout\ : std_logic;
SIGNAL \U1|index[6]~44_combout\ : std_logic;
SIGNAL \U1|index[4]~40_combout\ : std_logic;
SIGNAL \U1|index[5]~42_combout\ : std_logic;
SIGNAL \U1|index[7]~46_combout\ : std_logic;
SIGNAL \U1|Equal1~0_combout\ : std_logic;
SIGNAL \U1|Equal1~4_combout\ : std_logic;
SIGNAL \U1|Add1~37\ : std_logic;
SIGNAL \U1|Add1~39\ : std_logic;
SIGNAL \U1|Add1~41\ : std_logic;
SIGNAL \U1|Add1~42_combout\ : std_logic;
SIGNAL \U1|Add1~40_combout\ : std_logic;
SIGNAL \U1|Add1~38_combout\ : std_logic;
SIGNAL \U1|index[19]~71\ : std_logic;
SIGNAL \U1|index[20]~73\ : std_logic;
SIGNAL \U1|index[21]~75\ : std_logic;
SIGNAL \U1|index[22]~76_combout\ : std_logic;
SIGNAL \U1|Add1~43\ : std_logic;
SIGNAL \U1|Add1~44_combout\ : std_logic;
SIGNAL \U1|index[22]~77\ : std_logic;
SIGNAL \U1|index[23]~78_combout\ : std_logic;
SIGNAL \U1|index[21]~74_combout\ : std_logic;
SIGNAL \U1|index[20]~72_combout\ : std_logic;
SIGNAL \U1|Equal1~5_combout\ : std_logic;
SIGNAL \U1|Add1~45\ : std_logic;
SIGNAL \U1|Add1~47\ : std_logic;
SIGNAL \U1|Add1~49\ : std_logic;
SIGNAL \U1|Add1~51\ : std_logic;
SIGNAL \U1|Add1~53\ : std_logic;
SIGNAL \U1|Add1~55\ : std_logic;
SIGNAL \U1|Add1~57\ : std_logic;
SIGNAL \U1|Add1~58_combout\ : std_logic;
SIGNAL \U1|Add1~56_combout\ : std_logic;
SIGNAL \U1|Add1~54_combout\ : std_logic;
SIGNAL \U1|Add1~52_combout\ : std_logic;
SIGNAL \U1|Add1~50_combout\ : std_logic;
SIGNAL \U1|Add1~48_combout\ : std_logic;
SIGNAL \U1|Add1~46_combout\ : std_logic;
SIGNAL \U1|index[23]~79\ : std_logic;
SIGNAL \U1|index[24]~81\ : std_logic;
SIGNAL \U1|index[25]~83\ : std_logic;
SIGNAL \U1|index[26]~85\ : std_logic;
SIGNAL \U1|index[27]~87\ : std_logic;
SIGNAL \U1|index[28]~89\ : std_logic;
SIGNAL \U1|index[29]~91\ : std_logic;
SIGNAL \U1|index[30]~92_combout\ : std_logic;
SIGNAL \U1|index[29]~90_combout\ : std_logic;
SIGNAL \U1|Add1~59\ : std_logic;
SIGNAL \U1|Add1~60_combout\ : std_logic;
SIGNAL \U1|index[30]~93\ : std_logic;
SIGNAL \U1|index[31]~94_combout\ : std_logic;
SIGNAL \U1|index[28]~88_combout\ : std_logic;
SIGNAL \U1|Equal1~7_combout\ : std_logic;
SIGNAL \U1|index[27]~86_combout\ : std_logic;
SIGNAL \U1|index[26]~84_combout\ : std_logic;
SIGNAL \U1|index[25]~82_combout\ : std_logic;
SIGNAL \U1|index[24]~80_combout\ : std_logic;
SIGNAL \U1|Equal1~6_combout\ : std_logic;
SIGNAL \U1|Equal1~8_combout\ : std_logic;
SIGNAL \U1|index[2]~36_combout\ : std_logic;
SIGNAL \U1|index[1]~34_combout\ : std_logic;
SIGNAL \U1|Equal1~9_combout\ : std_logic;
SIGNAL \U1|WideNor0~combout\ : std_logic;
SIGNAL \U1|Equal1~11_combout\ : std_logic;
SIGNAL \U1|used[0]~26_combout\ : std_logic;
SIGNAL \U0|VGA_R~20_combout\ : std_logic;
SIGNAL \U0|LessThan26~2_combout\ : std_logic;
SIGNAL \U0|FSM~24_combout\ : std_logic;
SIGNAL \U0|FSM~25_combout\ : std_logic;
SIGNAL \U0|FSM~26_combout\ : std_logic;
SIGNAL \U0|LessThan23~1_combout\ : std_logic;
SIGNAL \U0|FSM~22_combout\ : std_logic;
SIGNAL \U0|FSM~23_combout\ : std_logic;
SIGNAL \U0|FSM~78_combout\ : std_logic;
SIGNAL \U0|FSM~79_combout\ : std_logic;
SIGNAL \U0|fig_yShift[0]~2_combout\ : std_logic;
SIGNAL \U0|FSM~20_combout\ : std_logic;
SIGNAL \U0|FSM~21_combout\ : std_logic;
SIGNAL \U0|FSM~27_combout\ : std_logic;
SIGNAL \U0|FSM~40_combout\ : std_logic;
SIGNAL \U0|f2y2[4]~11_combout\ : std_logic;
SIGNAL \U0|y2[0]~5_combout\ : std_logic;
SIGNAL \U0|fig_yShift[0]~5_combout\ : std_logic;
SIGNAL \U0|fig_yShift[0]~4_combout\ : std_logic;
SIGNAL \U1|Equal1~10_combout\ : std_logic;
SIGNAL \U1|Equal5~0_combout\ : std_logic;
SIGNAL \U1|used[4]~25_combout\ : std_logic;
SIGNAL \U1|Equal2~0_combout\ : std_logic;
SIGNAL \U1|Equal4~0_combout\ : std_logic;
SIGNAL \U1|used[3]~23_combout\ : std_logic;
SIGNAL \U0|FSM~28_combout\ : std_logic;
SIGNAL \U0|FSM~29_combout\ : std_logic;
SIGNAL \U0|y2[0]~4_combout\ : std_logic;
SIGNAL \U1|Equal8~0_combout\ : std_logic;
SIGNAL \U1|used[7]~19_combout\ : std_logic;
SIGNAL \U1|Equal6~0_combout\ : std_logic;
SIGNAL \U1|used[5]~24_combout\ : std_logic;
SIGNAL \U1|Equal9~0_combout\ : std_logic;
SIGNAL \U1|used[8]~18_combout\ : std_logic;
SIGNAL \U0|y2[0]~3_combout\ : std_logic;
SIGNAL \U0|y2[0]~2_combout\ : std_logic;
SIGNAL \U1|Equal7~0_combout\ : std_logic;
SIGNAL \U1|used[6]~22_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~4_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~5_combout\ : std_logic;
SIGNAL \U0|FSM~39_combout\ : std_logic;
SIGNAL \U0|y2[0]~18_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~6_combout\ : std_logic;
SIGNAL \U1|Equal3~0_combout\ : std_logic;
SIGNAL \U1|used[2]~21_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~7_combout\ : std_logic;
SIGNAL \U1|Equal2~1_combout\ : std_logic;
SIGNAL \U1|used[1]~20_combout\ : std_logic;
SIGNAL \U0|f2y2[4]~10_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~8_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~9_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~9clkctrl_outclk\ : std_logic;
SIGNAL \U0|FSM~43_combout\ : std_logic;
SIGNAL \U0|fig_yShift[1]~3_combout\ : std_logic;
SIGNAL \U0|Add23~0_combout\ : std_logic;
SIGNAL \U1|Selector0~6_combout\ : std_logic;
SIGNAL \U1|Selector0~7_combout\ : std_logic;
SIGNAL \U1|Selector0~8_combout\ : std_logic;
SIGNAL \U1|Selector0~4_combout\ : std_logic;
SIGNAL \U1|Selector0~5_combout\ : std_logic;
SIGNAL \U1|Selector0~2_combout\ : std_logic;
SIGNAL \U1|Selector0~3_combout\ : std_logic;
SIGNAL \U1|WideNor0~12_combout\ : std_logic;
SIGNAL \U1|Selector0~0_combout\ : std_logic;
SIGNAL \U1|Selector0~1_combout\ : std_logic;
SIGNAL \U1|Selector0~9_combout\ : std_logic;
SIGNAL \U1|p~3_combout\ : std_logic;
SIGNAL \U1|p~q\ : std_logic;
SIGNAL \U1|player[2]~1_combout\ : std_logic;
SIGNAL \U1|player[1]~11_combout\ : std_logic;
SIGNAL \U1|player[1]~12_combout\ : std_logic;
SIGNAL \U1|player[0]~17_combout\ : std_logic;
SIGNAL \U1|player[0]~18_combout\ : std_logic;
SIGNAL \U0|f2y2[4]~4_combout\ : std_logic;
SIGNAL \U0|VGA_B[0]~0_combout\ : std_logic;
SIGNAL \U1|player[2]~5_combout\ : std_logic;
SIGNAL \U1|player[2]~6_combout\ : std_logic;
SIGNAL \U0|VGA_R~17_combout\ : std_logic;
SIGNAL \U1|player[4]~15_combout\ : std_logic;
SIGNAL \U1|player[4]~16_combout\ : std_logic;
SIGNAL \U0|VGA_R~15_combout\ : std_logic;
SIGNAL \U1|player[7]~3_combout\ : std_logic;
SIGNAL \U1|player[7]~4_combout\ : std_logic;
SIGNAL \U0|VGA_R~3_combout\ : std_logic;
SIGNAL \U1|player[5]~13_combout\ : std_logic;
SIGNAL \U1|player[5]~14_combout\ : std_logic;
SIGNAL \U0|VGA_R~12_combout\ : std_logic;
SIGNAL \U1|player[8]~0_combout\ : std_logic;
SIGNAL \U1|player[8]~2_combout\ : std_logic;
SIGNAL \U0|VGA_R~2_combout\ : std_logic;
SIGNAL \U1|player[6]~7_combout\ : std_logic;
SIGNAL \U1|player[6]~8_combout\ : std_logic;
SIGNAL \U0|VGA_R~6_combout\ : std_logic;
SIGNAL \U0|f2y2[4]~5_combout\ : std_logic;
SIGNAL \U0|f2y2[4]~6_combout\ : std_logic;
SIGNAL \U1|player[3]~9_combout\ : std_logic;
SIGNAL \U1|player[3]~10_combout\ : std_logic;
SIGNAL \U0|VGA_R~7_combout\ : std_logic;
SIGNAL \U0|f2y2[4]~7_combout\ : std_logic;
SIGNAL \U0|f2y2[4]~8_combout\ : std_logic;
SIGNAL \U0|f2y2[4]~9_combout\ : std_logic;
SIGNAL \U0|f2y2[4]~9clkctrl_outclk\ : std_logic;
SIGNAL \U0|Add23~1_combout\ : std_logic;
SIGNAL \U0|Add20~1_combout\ : std_logic;
SIGNAL \U0|LessThan36~0_combout\ : std_logic;
SIGNAL \U0|LessThan36~1_combout\ : std_logic;
SIGNAL \U0|LessThan36~2_combout\ : std_logic;
SIGNAL \U0|LessThan36~3_combout\ : std_logic;
SIGNAL \U0|FSM~34_combout\ : std_logic;
SIGNAL \U0|FSM~35_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~23_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~3_combout\ : std_logic;
SIGNAL \U0|FSM~42_combout\ : std_logic;
SIGNAL \U0|FSM~41_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~10_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~11_combout\ : std_logic;
SIGNAL \U0|VGA_G~41_combout\ : std_logic;
SIGNAL \U0|fig_xShift[1]~13_combout\ : std_logic;
SIGNAL \U0|fig_xShift[1]~12_combout\ : std_logic;
SIGNAL \U0|Mult1|mult_core|_~0_combout\ : std_logic;
SIGNAL \U0|Mult1|mult_core|_~1_combout\ : std_logic;
SIGNAL \U0|Mult1|mult_core|romout[0][7]~0_combout\ : std_logic;
SIGNAL \U0|Add21~1\ : std_logic;
SIGNAL \U0|Add21~3\ : std_logic;
SIGNAL \U0|Add21~5\ : std_logic;
SIGNAL \U0|Add21~6_combout\ : std_logic;
SIGNAL \U0|Add21~4_combout\ : std_logic;
SIGNAL \U0|Add21~2_combout\ : std_logic;
SIGNAL \U0|Add21~0_combout\ : std_logic;
SIGNAL \U0|Add21~11_cout\ : std_logic;
SIGNAL \U0|Add21~13\ : std_logic;
SIGNAL \U0|Add21~14_combout\ : std_logic;
SIGNAL \U0|Add21~12_combout\ : std_logic;
SIGNAL \U0|LessThan34~1_cout\ : std_logic;
SIGNAL \U0|LessThan34~3_cout\ : std_logic;
SIGNAL \U0|LessThan34~5_cout\ : std_logic;
SIGNAL \U0|LessThan34~7_cout\ : std_logic;
SIGNAL \U0|LessThan34~9_cout\ : std_logic;
SIGNAL \U0|LessThan34~11_cout\ : std_logic;
SIGNAL \U0|LessThan34~13_cout\ : std_logic;
SIGNAL \U0|LessThan34~15_cout\ : std_logic;
SIGNAL \U0|LessThan34~17_cout\ : std_logic;
SIGNAL \U0|LessThan34~18_combout\ : std_logic;
SIGNAL \U0|Add24~1_cout\ : std_logic;
SIGNAL \U0|Add24~3\ : std_logic;
SIGNAL \U0|Add24~5\ : std_logic;
SIGNAL \U0|Add24~6_combout\ : std_logic;
SIGNAL \U0|Add24~4_combout\ : std_logic;
SIGNAL \U0|Add24~2_combout\ : std_logic;
SIGNAL \U0|LessThan37~1_combout\ : std_logic;
SIGNAL \U0|LessThan37~2_combout\ : std_logic;
SIGNAL \U0|LessThan37~3_combout\ : std_logic;
SIGNAL \U0|Add20~0_combout\ : std_logic;
SIGNAL \U0|Add24~7\ : std_logic;
SIGNAL \U0|Add24~9\ : std_logic;
SIGNAL \U0|Add24~10_combout\ : std_logic;
SIGNAL \U0|Add24~8_combout\ : std_logic;
SIGNAL \U0|LessThan37~0_combout\ : std_logic;
SIGNAL \U0|LessThan37~4_combout\ : std_logic;
SIGNAL \U0|Add21~7\ : std_logic;
SIGNAL \U0|Add21~8_combout\ : std_logic;
SIGNAL \U0|Add22~1\ : std_logic;
SIGNAL \U0|Add22~3\ : std_logic;
SIGNAL \U0|Add22~5\ : std_logic;
SIGNAL \U0|Add22~7\ : std_logic;
SIGNAL \U0|Add22~9\ : std_logic;
SIGNAL \U0|Add22~11\ : std_logic;
SIGNAL \U0|Add22~13\ : std_logic;
SIGNAL \U0|Add22~14_combout\ : std_logic;
SIGNAL \U0|Add22~12_combout\ : std_logic;
SIGNAL \U0|Add22~10_combout\ : std_logic;
SIGNAL \U0|Add22~8_combout\ : std_logic;
SIGNAL \U0|Add22~6_combout\ : std_logic;
SIGNAL \U0|Add22~4_combout\ : std_logic;
SIGNAL \U0|Add22~2_combout\ : std_logic;
SIGNAL \U0|Add22~0_combout\ : std_logic;
SIGNAL \U0|LessThan35~1_cout\ : std_logic;
SIGNAL \U0|LessThan35~3_cout\ : std_logic;
SIGNAL \U0|LessThan35~5_cout\ : std_logic;
SIGNAL \U0|LessThan35~7_cout\ : std_logic;
SIGNAL \U0|LessThan35~9_cout\ : std_logic;
SIGNAL \U0|LessThan35~11_cout\ : std_logic;
SIGNAL \U0|LessThan35~13_cout\ : std_logic;
SIGNAL \U0|LessThan35~15_cout\ : std_logic;
SIGNAL \U0|LessThan35~16_combout\ : std_logic;
SIGNAL \U0|Add22~15\ : std_logic;
SIGNAL \U0|Add22~17\ : std_logic;
SIGNAL \U0|Add22~18_combout\ : std_logic;
SIGNAL \U0|Add22~16_combout\ : std_logic;
SIGNAL \U0|FSM~16_combout\ : std_logic;
SIGNAL \U0|FSM~18_combout\ : std_logic;
SIGNAL \U0|FSM~19_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~16_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~11_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~13_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~14_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~18_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~8_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~4_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~5_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~9_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~10_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~19_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~21_combout\ : std_logic;
SIGNAL \U0|VGA_R[0]~22_combout\ : std_logic;
SIGNAL \U0|fig_xShift[0]~2_combout\ : std_logic;
SIGNAL \U0|VGA_G~29_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~30_combout\ : std_logic;
SIGNAL \U0|VGA_G~32_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~33_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~34_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~35_combout\ : std_logic;
SIGNAL \U0|VGA_G~40_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~31_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~39_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~36_combout\ : std_logic;
SIGNAL \U0|Add16~1\ : std_logic;
SIGNAL \U0|Add16~3\ : std_logic;
SIGNAL \U0|Add16~5\ : std_logic;
SIGNAL \U0|Add16~7\ : std_logic;
SIGNAL \U0|Add16~9\ : std_logic;
SIGNAL \U0|Add16~11\ : std_logic;
SIGNAL \U0|Add16~13\ : std_logic;
SIGNAL \U0|Add16~15\ : std_logic;
SIGNAL \U0|Add16~16_combout\ : std_logic;
SIGNAL \U0|Add16~14_combout\ : std_logic;
SIGNAL \U0|Add16~12_combout\ : std_logic;
SIGNAL \U0|Add16~10_combout\ : std_logic;
SIGNAL \U0|Add16~8_combout\ : std_logic;
SIGNAL \U0|Add16~6_combout\ : std_logic;
SIGNAL \U0|Add16~4_combout\ : std_logic;
SIGNAL \U0|Add16~2_combout\ : std_logic;
SIGNAL \U0|Add16~0_combout\ : std_logic;
SIGNAL \U0|Add17~1_cout\ : std_logic;
SIGNAL \U0|Add17~3\ : std_logic;
SIGNAL \U0|Add17~5\ : std_logic;
SIGNAL \U0|Add17~7\ : std_logic;
SIGNAL \U0|Add17~9\ : std_logic;
SIGNAL \U0|Add17~11\ : std_logic;
SIGNAL \U0|Add17~13\ : std_logic;
SIGNAL \U0|Add17~15\ : std_logic;
SIGNAL \U0|Add17~17\ : std_logic;
SIGNAL \U0|Add17~18_combout\ : std_logic;
SIGNAL \U0|Add17~16_combout\ : std_logic;
SIGNAL \U0|Add17~14_combout\ : std_logic;
SIGNAL \U0|Add17~12_combout\ : std_logic;
SIGNAL \U0|Add17~10_combout\ : std_logic;
SIGNAL \U0|Add18~1\ : std_logic;
SIGNAL \U0|Add18~3\ : std_logic;
SIGNAL \U0|Add18~5\ : std_logic;
SIGNAL \U0|Add18~7\ : std_logic;
SIGNAL \U0|Add18~8_combout\ : std_logic;
SIGNAL \U0|y2[0]~10_combout\ : std_logic;
SIGNAL \U0|y2[0]~8_combout\ : std_logic;
SIGNAL \U0|y2[0]~9_combout\ : std_logic;
SIGNAL \U0|y2[0]~7_combout\ : std_logic;
SIGNAL \U0|y2[0]~11_combout\ : std_logic;
SIGNAL \U0|y2[0]~12_combout\ : std_logic;
SIGNAL \U0|y2[0]~13_combout\ : std_logic;
SIGNAL \U0|y2[0]~6_combout\ : std_logic;
SIGNAL \U0|y2[0]~14_combout\ : std_logic;
SIGNAL \U0|y2[0]~15_combout\ : std_logic;
SIGNAL \U0|y2[0]~16_combout\ : std_logic;
SIGNAL \U0|y2[0]~17_combout\ : std_logic;
SIGNAL \U0|y2[0]~17clkctrl_outclk\ : std_logic;
SIGNAL \U0|Add16~17\ : std_logic;
SIGNAL \U0|Add16~19\ : std_logic;
SIGNAL \U0|Add16~20_combout\ : std_logic;
SIGNAL \U0|Add16~18_combout\ : std_logic;
SIGNAL \U0|Add17~19\ : std_logic;
SIGNAL \U0|Add17~21\ : std_logic;
SIGNAL \U0|Add17~22_combout\ : std_logic;
SIGNAL \U0|Add17~20_combout\ : std_logic;
SIGNAL \U0|Add18~9\ : std_logic;
SIGNAL \U0|Add18~11\ : std_logic;
SIGNAL \U0|Add18~12_combout\ : std_logic;
SIGNAL \U0|Add18~10_combout\ : std_logic;
SIGNAL \U0|Add16~21\ : std_logic;
SIGNAL \U0|Add16~22_combout\ : std_logic;
SIGNAL \U0|Add17~23\ : std_logic;
SIGNAL \U0|Add17~24_combout\ : std_logic;
SIGNAL \U0|Add18~13\ : std_logic;
SIGNAL \U0|Add18~14_combout\ : std_logic;
SIGNAL \U0|FSM~76_combout\ : std_logic;
SIGNAL \U0|Add17~25\ : std_logic;
SIGNAL \U0|Add17~26_combout\ : std_logic;
SIGNAL \U0|Add18~15\ : std_logic;
SIGNAL \U0|Add18~16_combout\ : std_logic;
SIGNAL \U0|Add18~6_combout\ : std_logic;
SIGNAL \U0|Add18~4_combout\ : std_logic;
SIGNAL \U0|Add18~2_combout\ : std_logic;
SIGNAL \U0|Add18~0_combout\ : std_logic;
SIGNAL \U0|Add17~8_combout\ : std_logic;
SIGNAL \U0|Add17~6_combout\ : std_logic;
SIGNAL \U0|Add17~4_combout\ : std_logic;
SIGNAL \U0|Add17~2_combout\ : std_logic;
SIGNAL \U0|LessThan31~1_cout\ : std_logic;
SIGNAL \U0|LessThan31~3_cout\ : std_logic;
SIGNAL \U0|LessThan31~5_cout\ : std_logic;
SIGNAL \U0|LessThan31~7_cout\ : std_logic;
SIGNAL \U0|LessThan31~9_cout\ : std_logic;
SIGNAL \U0|LessThan31~11_cout\ : std_logic;
SIGNAL \U0|LessThan31~13_cout\ : std_logic;
SIGNAL \U0|LessThan31~15_cout\ : std_logic;
SIGNAL \U0|LessThan31~16_combout\ : std_logic;
SIGNAL \U0|Add14~1\ : std_logic;
SIGNAL \U0|Add14~3\ : std_logic;
SIGNAL \U0|Add14~5\ : std_logic;
SIGNAL \U0|Add14~7\ : std_logic;
SIGNAL \U0|Add14~9\ : std_logic;
SIGNAL \U0|Add14~11\ : std_logic;
SIGNAL \U0|Add14~13\ : std_logic;
SIGNAL \U0|Add14~15\ : std_logic;
SIGNAL \U0|Add14~17\ : std_logic;
SIGNAL \U0|Add14~19\ : std_logic;
SIGNAL \U0|Add14~21\ : std_logic;
SIGNAL \U0|Add14~23\ : std_logic;
SIGNAL \U0|Add14~24_combout\ : std_logic;
SIGNAL \U0|Add14~22_combout\ : std_logic;
SIGNAL \U0|Add14~20_combout\ : std_logic;
SIGNAL \U0|Add14~18_combout\ : std_logic;
SIGNAL \U0|Add14~16_combout\ : std_logic;
SIGNAL \U0|Add14~14_combout\ : std_logic;
SIGNAL \U0|Add14~12_combout\ : std_logic;
SIGNAL \U0|Add14~10_combout\ : std_logic;
SIGNAL \U0|Add14~8_combout\ : std_logic;
SIGNAL \U0|Add15~1\ : std_logic;
SIGNAL \U0|Add15~3\ : std_logic;
SIGNAL \U0|Add15~5\ : std_logic;
SIGNAL \U0|Add15~7\ : std_logic;
SIGNAL \U0|Add15~9\ : std_logic;
SIGNAL \U0|Add15~11\ : std_logic;
SIGNAL \U0|Add15~13\ : std_logic;
SIGNAL \U0|Add15~15\ : std_logic;
SIGNAL \U0|Add15~16_combout\ : std_logic;
SIGNAL \U0|Add15~6_combout\ : std_logic;
SIGNAL \U0|Add15~4_combout\ : std_logic;
SIGNAL \U0|Add15~2_combout\ : std_logic;
SIGNAL \U0|Add15~0_combout\ : std_logic;
SIGNAL \U0|Add14~6_combout\ : std_logic;
SIGNAL \U0|Add14~4_combout\ : std_logic;
SIGNAL \U0|Add14~2_combout\ : std_logic;
SIGNAL \U0|Add14~0_combout\ : std_logic;
SIGNAL \U0|LessThan30~2_cout\ : std_logic;
SIGNAL \U0|LessThan30~4_cout\ : std_logic;
SIGNAL \U0|LessThan30~6_cout\ : std_logic;
SIGNAL \U0|LessThan30~8_cout\ : std_logic;
SIGNAL \U0|LessThan30~10_cout\ : std_logic;
SIGNAL \U0|LessThan30~12_cout\ : std_logic;
SIGNAL \U0|LessThan30~14_cout\ : std_logic;
SIGNAL \U0|LessThan30~16_cout\ : std_logic;
SIGNAL \U0|LessThan30~17_combout\ : std_logic;
SIGNAL \U0|Add15~17\ : std_logic;
SIGNAL \U0|Add15~18_combout\ : std_logic;
SIGNAL \U0|Add15~12_combout\ : std_logic;
SIGNAL \U0|Add15~14_combout\ : std_logic;
SIGNAL \U0|Add15~8_combout\ : std_logic;
SIGNAL \U0|Add15~10_combout\ : std_logic;
SIGNAL \U0|LessThan30~0_combout\ : std_logic;
SIGNAL \U0|FSM~73_combout\ : std_logic;
SIGNAL \U0|FSM~77_combout\ : std_logic;
SIGNAL \U0|Add10~1_cout\ : std_logic;
SIGNAL \U0|Add10~3\ : std_logic;
SIGNAL \U0|Add10~5\ : std_logic;
SIGNAL \U0|Add10~7\ : std_logic;
SIGNAL \U0|Add10~9\ : std_logic;
SIGNAL \U0|Add10~11\ : std_logic;
SIGNAL \U0|Add10~13\ : std_logic;
SIGNAL \U0|Add10~15\ : std_logic;
SIGNAL \U0|Add10~17\ : std_logic;
SIGNAL \U0|Add10~19\ : std_logic;
SIGNAL \U0|Add10~21\ : std_logic;
SIGNAL \U0|Add10~23\ : std_logic;
SIGNAL \U0|Add10~24_combout\ : std_logic;
SIGNAL \U0|Add10~22_combout\ : std_logic;
SIGNAL \U0|Add10~20_combout\ : std_logic;
SIGNAL \U0|Add10~18_combout\ : std_logic;
SIGNAL \U0|Add10~16_combout\ : std_logic;
SIGNAL \U0|Add10~14_combout\ : std_logic;
SIGNAL \U0|Add10~12_combout\ : std_logic;
SIGNAL \U0|Add10~10_combout\ : std_logic;
SIGNAL \U0|Add10~8_combout\ : std_logic;
SIGNAL \U0|Add10~6_combout\ : std_logic;
SIGNAL \U0|Add10~4_combout\ : std_logic;
SIGNAL \U0|Add10~2_combout\ : std_logic;
SIGNAL \U0|Add11~1\ : std_logic;
SIGNAL \U0|Add11~3\ : std_logic;
SIGNAL \U0|Add11~5\ : std_logic;
SIGNAL \U0|Add11~7\ : std_logic;
SIGNAL \U0|Add11~9\ : std_logic;
SIGNAL \U0|Add11~11\ : std_logic;
SIGNAL \U0|Add11~13\ : std_logic;
SIGNAL \U0|Add11~15\ : std_logic;
SIGNAL \U0|Add11~17\ : std_logic;
SIGNAL \U0|Add11~19\ : std_logic;
SIGNAL \U0|Add11~21\ : std_logic;
SIGNAL \U0|Add11~22_combout\ : std_logic;
SIGNAL \U0|Add11~20_combout\ : std_logic;
SIGNAL \U0|Add11~18_combout\ : std_logic;
SIGNAL \U0|Add11~16_combout\ : std_logic;
SIGNAL \U0|Add11~14_combout\ : std_logic;
SIGNAL \U0|Add11~12_combout\ : std_logic;
SIGNAL \U0|Add11~10_combout\ : std_logic;
SIGNAL \U0|Add11~8_combout\ : std_logic;
SIGNAL \U0|Add11~6_combout\ : std_logic;
SIGNAL \U0|Add11~4_combout\ : std_logic;
SIGNAL \U0|Add11~2_combout\ : std_logic;
SIGNAL \U0|Add11~0_combout\ : std_logic;
SIGNAL \U0|Add8~1_cout\ : std_logic;
SIGNAL \U0|Add8~3\ : std_logic;
SIGNAL \U0|Add8~5\ : std_logic;
SIGNAL \U0|Add8~7\ : std_logic;
SIGNAL \U0|Add8~9\ : std_logic;
SIGNAL \U0|Add8~11\ : std_logic;
SIGNAL \U0|Add8~13\ : std_logic;
SIGNAL \U0|Add8~15\ : std_logic;
SIGNAL \U0|Add8~17\ : std_logic;
SIGNAL \U0|Add8~19\ : std_logic;
SIGNAL \U0|Add8~21\ : std_logic;
SIGNAL \U0|Add8~23\ : std_logic;
SIGNAL \U0|Add8~25\ : std_logic;
SIGNAL \U0|Add8~26_combout\ : std_logic;
SIGNAL \U0|Add8~24_combout\ : std_logic;
SIGNAL \U0|Add8~22_combout\ : std_logic;
SIGNAL \U0|Add8~20_combout\ : std_logic;
SIGNAL \U0|Add8~18_combout\ : std_logic;
SIGNAL \U0|Add8~16_combout\ : std_logic;
SIGNAL \U0|Add8~14_combout\ : std_logic;
SIGNAL \U0|Add8~12_combout\ : std_logic;
SIGNAL \U0|Add8~10_combout\ : std_logic;
SIGNAL \U0|Add9~1\ : std_logic;
SIGNAL \U0|Add9~3\ : std_logic;
SIGNAL \U0|Add9~5\ : std_logic;
SIGNAL \U0|Add9~7\ : std_logic;
SIGNAL \U0|Add9~9\ : std_logic;
SIGNAL \U0|Add9~11\ : std_logic;
SIGNAL \U0|Add9~13\ : std_logic;
SIGNAL \U0|Add9~15\ : std_logic;
SIGNAL \U0|Add9~16_combout\ : std_logic;
SIGNAL \U0|Add9~17\ : std_logic;
SIGNAL \U0|Add9~18_combout\ : std_logic;
SIGNAL \U0|Add9~6_combout\ : std_logic;
SIGNAL \U0|Add9~4_combout\ : std_logic;
SIGNAL \U0|Add9~2_combout\ : std_logic;
SIGNAL \U0|Add9~0_combout\ : std_logic;
SIGNAL \U0|Add8~8_combout\ : std_logic;
SIGNAL \U0|Add8~6_combout\ : std_logic;
SIGNAL \U0|Add8~4_combout\ : std_logic;
SIGNAL \U0|Add8~2_combout\ : std_logic;
SIGNAL \U0|LessThan28~2_cout\ : std_logic;
SIGNAL \U0|LessThan28~4_cout\ : std_logic;
SIGNAL \U0|LessThan28~6_cout\ : std_logic;
SIGNAL \U0|LessThan28~8_cout\ : std_logic;
SIGNAL \U0|LessThan28~10_cout\ : std_logic;
SIGNAL \U0|LessThan28~12_cout\ : std_logic;
SIGNAL \U0|LessThan28~14_cout\ : std_logic;
SIGNAL \U0|LessThan28~16_cout\ : std_logic;
SIGNAL \U0|LessThan28~17_combout\ : std_logic;
SIGNAL \U0|Add9~8_combout\ : std_logic;
SIGNAL \U0|Add9~10_combout\ : std_logic;
SIGNAL \U0|Add9~12_combout\ : std_logic;
SIGNAL \U0|Add9~14_combout\ : std_logic;
SIGNAL \U0|LessThan28~0_combout\ : std_logic;
SIGNAL \U0|FSM~72_combout\ : std_logic;
SIGNAL \U0|Add12~1\ : std_logic;
SIGNAL \U0|Add12~3\ : std_logic;
SIGNAL \U0|Add12~5\ : std_logic;
SIGNAL \U0|Add12~7\ : std_logic;
SIGNAL \U0|Add12~9\ : std_logic;
SIGNAL \U0|Add12~11\ : std_logic;
SIGNAL \U0|Add12~13\ : std_logic;
SIGNAL \U0|Add12~15\ : std_logic;
SIGNAL \U0|Add12~17\ : std_logic;
SIGNAL \U0|Add12~19\ : std_logic;
SIGNAL \U0|Add12~21\ : std_logic;
SIGNAL \U0|Add12~23\ : std_logic;
SIGNAL \U0|Add12~24_combout\ : std_logic;
SIGNAL \U0|Add12~22_combout\ : std_logic;
SIGNAL \U0|Add12~20_combout\ : std_logic;
SIGNAL \U0|Add12~18_combout\ : std_logic;
SIGNAL \U0|Add12~16_combout\ : std_logic;
SIGNAL \U0|Add12~14_combout\ : std_logic;
SIGNAL \U0|Add12~12_combout\ : std_logic;
SIGNAL \U0|Add12~10_combout\ : std_logic;
SIGNAL \U0|Add12~8_combout\ : std_logic;
SIGNAL \U0|Add13~1\ : std_logic;
SIGNAL \U0|Add13~3\ : std_logic;
SIGNAL \U0|Add13~5\ : std_logic;
SIGNAL \U0|Add13~7\ : std_logic;
SIGNAL \U0|Add13~9\ : std_logic;
SIGNAL \U0|Add13~11\ : std_logic;
SIGNAL \U0|Add13~13\ : std_logic;
SIGNAL \U0|Add13~15\ : std_logic;
SIGNAL \U0|Add13~16_combout\ : std_logic;
SIGNAL \U0|Add13~12_combout\ : std_logic;
SIGNAL \U0|Add13~10_combout\ : std_logic;
SIGNAL \U0|Add13~14_combout\ : std_logic;
SIGNAL \U0|Add13~8_combout\ : std_logic;
SIGNAL \U0|FSM~74_combout\ : std_logic;
SIGNAL \U0|Add13~6_combout\ : std_logic;
SIGNAL \U0|Add13~4_combout\ : std_logic;
SIGNAL \U0|Add13~2_combout\ : std_logic;
SIGNAL \U0|Add13~0_combout\ : std_logic;
SIGNAL \U0|Add12~6_combout\ : std_logic;
SIGNAL \U0|Add12~4_combout\ : std_logic;
SIGNAL \U0|Add12~2_combout\ : std_logic;
SIGNAL \U0|Add12~0_combout\ : std_logic;
SIGNAL \U0|LessThan29~1_cout\ : std_logic;
SIGNAL \U0|LessThan29~3_cout\ : std_logic;
SIGNAL \U0|LessThan29~5_cout\ : std_logic;
SIGNAL \U0|LessThan29~7_cout\ : std_logic;
SIGNAL \U0|LessThan29~9_cout\ : std_logic;
SIGNAL \U0|LessThan29~11_cout\ : std_logic;
SIGNAL \U0|LessThan29~13_cout\ : std_logic;
SIGNAL \U0|LessThan29~15_cout\ : std_logic;
SIGNAL \U0|LessThan29~16_combout\ : std_logic;
SIGNAL \U0|FSM~75_combout\ : std_logic;
SIGNAL \U0|Add18~17\ : std_logic;
SIGNAL \U0|Add18~18_combout\ : std_logic;
SIGNAL \U0|Add13~17\ : std_logic;
SIGNAL \U0|Add13~18_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~20_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~16_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~17_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~44_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~45_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~14_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~15_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~18_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~19_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~42_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~43_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~21_combout\ : std_logic;
SIGNAL \U0|VGA_G~24_combout\ : std_logic;
SIGNAL \U0|VGA_G~22_combout\ : std_logic;
SIGNAL \U0|VGA_G~23_combout\ : std_logic;
SIGNAL \U0|VGA_G~25_combout\ : std_logic;
SIGNAL \U0|VGA_G~26_combout\ : std_logic;
SIGNAL \U0|VGA_G~38_combout\ : std_logic;
SIGNAL \U0|VGA_G~27_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~28_combout\ : std_logic;
SIGNAL \U0|VGA_G[0]~37_combout\ : std_logic;
SIGNAL \U0|U1|process_0~2_combout\ : std_logic;
SIGNAL \U0|U1|process_0~3_combout\ : std_logic;
SIGNAL \U0|U1|h_sync~q\ : std_logic;
SIGNAL \U0|U1|process_0~4_combout\ : std_logic;
SIGNAL \U0|U1|process_0~5_combout\ : std_logic;
SIGNAL \U0|U1|v_sync~q\ : std_logic;
SIGNAL \U1|U0|U0|u0|spi_csn_next~2_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|spi_csn~feeder_combout\ : std_logic;
SIGNAL \U1|U0|U0|u0|spi_csn~q\ : std_logic;
SIGNAL \U1|select_xShift\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|Mult0|auto_generated|w260w\ : std_logic_vector(41 DOWNTO 0);
SIGNAL \U1|select_yShift\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|U0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|U1|row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U1|index\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|U1|column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|used\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U1|player\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U0|U1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U0|U1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|x1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|U0|U0|current_instruction.opcode\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|U0|U0|u0|idlecount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|U0|u0|clk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|fig_yShift\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|U0|U0|current_instruction.immediate\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U0|y1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|U0|U0|pc\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U1|U0|U0|u0|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U0|y2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|U0|U0|update_clock_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|U0|U0|u0|tx_data_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|U0|U0|u0|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U0|fig_xShift\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|U0|U0|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U0|f2y1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|f2x2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|f2x1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|f2y2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|x2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|x_value\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|y_value\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk_f <= clk_f;
VGA_R_f <= ww_VGA_R_f;
VGA_G_f <= ww_VGA_G_f;
VGA_B_f <= ww_VGA_B_f;
VGA_HS_f <= ww_VGA_HS_f;
VGA_VS_f <= ww_VGA_VS_f;
GSENSOR_CS_N_f <= ww_GSENSOR_CS_N_f;
GSENSOR_SCLK_f <= ww_GSENSOR_SCLK_f;
GSENSOR_SDI_f <= ww_GSENSOR_SDI_f;
GSENSOR_SDO_f <= ww_GSENSOR_SDO_f;
ww_BUT1 <= BUT1;
ww_BUT2 <= BUT2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U0|Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\U0|Mult0|auto_generated|mac_mult3~DATAOUT22\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT21\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT20\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT19\ & 
\U0|Mult0|auto_generated|mac_mult3~DATAOUT18\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT17\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT16\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT15\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT14\ & 
\U0|Mult0|auto_generated|mac_mult3~DATAOUT13\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT12\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT11\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT10\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT9\ & 
\U0|Mult0|auto_generated|mac_mult3~DATAOUT8\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT7\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT6\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT5\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT4\ & 
\U0|Mult0|auto_generated|mac_mult3~DATAOUT3\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT2\ & \U0|Mult0|auto_generated|mac_mult3~DATAOUT1\ & \U0|Mult0|auto_generated|mac_mult3~dataout\ & \U0|Mult0|auto_generated|mac_mult3~12\ & 
\U0|Mult0|auto_generated|mac_mult3~11\ & \U0|Mult0|auto_generated|mac_mult3~10\ & \U0|Mult0|auto_generated|mac_mult3~9\ & \U0|Mult0|auto_generated|mac_mult3~8\ & \U0|Mult0|auto_generated|mac_mult3~7\ & \U0|Mult0|auto_generated|mac_mult3~6\ & 
\U0|Mult0|auto_generated|mac_mult3~5\ & \U0|Mult0|auto_generated|mac_mult3~4\ & \U0|Mult0|auto_generated|mac_mult3~3\ & \U0|Mult0|auto_generated|mac_mult3~2\ & \U0|Mult0|auto_generated|mac_mult3~1\ & \U0|Mult0|auto_generated|mac_mult3~0\);

\U0|Mult0|auto_generated|mac_out4~0\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\U0|Mult0|auto_generated|mac_out4~1\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\U0|Mult0|auto_generated|mac_out4~2\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\U0|Mult0|auto_generated|mac_out4~3\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\U0|Mult0|auto_generated|mac_out4~4\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\U0|Mult0|auto_generated|mac_out4~5\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\U0|Mult0|auto_generated|mac_out4~6\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\U0|Mult0|auto_generated|mac_out4~7\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\U0|Mult0|auto_generated|mac_out4~8\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\U0|Mult0|auto_generated|mac_out4~9\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\U0|Mult0|auto_generated|mac_out4~10\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\U0|Mult0|auto_generated|mac_out4~11\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\U0|Mult0|auto_generated|mac_out4~12\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\U0|Mult0|auto_generated|mac_out4~dataout\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\U0|Mult0|auto_generated|mac_out4~DATAOUT1\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\U0|Mult0|auto_generated|mac_out4~DATAOUT2\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\U0|Mult0|auto_generated|mac_out4~DATAOUT3\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\U0|Mult0|auto_generated|mac_out4~DATAOUT4\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\U0|Mult0|auto_generated|mac_out4~DATAOUT5\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\U0|Mult0|auto_generated|mac_out4~DATAOUT6\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\U0|Mult0|auto_generated|mac_out4~DATAOUT7\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\U0|Mult0|auto_generated|mac_out4~DATAOUT8\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\U0|Mult0|auto_generated|mac_out4~DATAOUT9\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\U0|Mult0|auto_generated|mac_out4~DATAOUT10\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\U0|Mult0|auto_generated|mac_out4~DATAOUT11\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\U0|Mult0|auto_generated|mac_out4~DATAOUT12\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\U0|Mult0|auto_generated|mac_out4~DATAOUT13\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\U0|Mult0|auto_generated|mac_out4~DATAOUT14\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\U0|Mult0|auto_generated|mac_out4~DATAOUT15\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\U0|Mult0|auto_generated|mac_out4~DATAOUT16\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\U0|Mult0|auto_generated|mac_out4~DATAOUT17\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\U0|Mult0|auto_generated|mac_out4~DATAOUT18\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\U0|Mult0|auto_generated|mac_out4~DATAOUT19\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\U0|Mult0|auto_generated|mac_out4~DATAOUT20\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\U0|Mult0|auto_generated|mac_out4~DATAOUT21\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\U0|Mult0|auto_generated|mac_out4~DATAOUT22\ <= \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\U0|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\U0|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\U0|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\U0|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\U0|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\U0|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\U0|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \U0|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \U0|Mult0|auto_generated|mac_mult1~dataout\ & \U0|Mult0|auto_generated|mac_mult1~8\ & \U0|Mult0|auto_generated|mac_mult1~7\ & 
\U0|Mult0|auto_generated|mac_mult1~6\ & \U0|Mult0|auto_generated|mac_mult1~5\ & \U0|Mult0|auto_generated|mac_mult1~4\ & \U0|Mult0|auto_generated|mac_mult1~3\ & \U0|Mult0|auto_generated|mac_mult1~2\ & \U0|Mult0|auto_generated|mac_mult1~1\ & 
\U0|Mult0|auto_generated|mac_mult1~0\);

\U0|Mult0|auto_generated|mac_out2~0\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\U0|Mult0|auto_generated|mac_out2~1\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\U0|Mult0|auto_generated|mac_out2~2\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\U0|Mult0|auto_generated|mac_out2~3\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\U0|Mult0|auto_generated|mac_out2~4\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\U0|Mult0|auto_generated|mac_out2~5\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\U0|Mult0|auto_generated|mac_out2~6\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\U0|Mult0|auto_generated|mac_out2~7\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\U0|Mult0|auto_generated|mac_out2~8\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\U0|Mult0|auto_generated|w260w\(0) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\U0|Mult0|auto_generated|w260w\(1) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\U0|Mult0|auto_generated|w260w\(2) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\U0|Mult0|auto_generated|w260w\(3) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\U0|Mult0|auto_generated|w260w\(4) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\U0|Mult0|auto_generated|w260w\(5) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\U0|Mult0|auto_generated|w260w\(6) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\U0|Mult0|auto_generated|w260w\(7) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\U0|Mult0|auto_generated|w260w\(8) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\U0|Mult0|auto_generated|w260w\(9) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\U0|Mult0|auto_generated|w260w\(10) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\U0|Mult0|auto_generated|w260w\(11) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\U0|Mult0|auto_generated|w260w\(12) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\U0|Mult0|auto_generated|w260w\(13) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\U0|Mult0|auto_generated|w260w\(14) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\U0|Mult0|auto_generated|w260w\(15) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\U0|Mult0|auto_generated|w260w\(16) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\U0|Mult0|auto_generated|w260w\(17) <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\U0|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\U0|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\U0|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\U0|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\U0|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\U0|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\U0|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\U0|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\U0|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\U0|U0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_f~input_o\);

\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U0|U0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\U0|Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\U1|select_xShift\(31) & \U1|select_xShift\(30) & \U1|select_xShift\(29) & \U1|select_xShift\(28) & \U1|select_xShift\(27) & \U1|select_xShift\(26) & \U1|select_xShift\(25) & \U1|select_xShift\(24)
& \U1|select_xShift\(23) & \U1|select_xShift\(22) & \U1|select_xShift\(21) & \U1|select_xShift\(20) & \U1|select_xShift\(19) & \U1|select_xShift\(18) & gnd & gnd & gnd & gnd);

\U0|Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (gnd & vcc & vcc & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\U0|Mult0|auto_generated|mac_mult3~0\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\U0|Mult0|auto_generated|mac_mult3~1\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\U0|Mult0|auto_generated|mac_mult3~2\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\U0|Mult0|auto_generated|mac_mult3~3\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\U0|Mult0|auto_generated|mac_mult3~4\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\U0|Mult0|auto_generated|mac_mult3~5\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\U0|Mult0|auto_generated|mac_mult3~6\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\U0|Mult0|auto_generated|mac_mult3~7\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\U0|Mult0|auto_generated|mac_mult3~8\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\U0|Mult0|auto_generated|mac_mult3~9\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\U0|Mult0|auto_generated|mac_mult3~10\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\U0|Mult0|auto_generated|mac_mult3~11\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\U0|Mult0|auto_generated|mac_mult3~12\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\U0|Mult0|auto_generated|mac_mult3~dataout\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\U0|Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\U0|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\U1|select_xShift\(17) & \U1|select_xShift\(16) & \U1|select_xShift\(15) & \U1|select_xShift\(14) & \U1|select_xShift\(13) & \U1|select_xShift\(12) & \U1|select_xShift\(11) & \U1|select_xShift\(10)
& \U1|select_xShift\(9) & \U1|select_xShift\(8) & \U1|select_xShift\(7) & \U1|select_xShift\(6) & \U1|select_xShift\(5) & \U1|select_xShift\(4) & \U1|select_xShift\(3) & \U1|select_xShift\(2) & \U1|select_xShift\(1) & 
\U1|select_xShift\(0));

\U0|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\U0|Mult0|auto_generated|mac_mult1~0\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\U0|Mult0|auto_generated|mac_mult1~1\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\U0|Mult0|auto_generated|mac_mult1~2\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\U0|Mult0|auto_generated|mac_mult1~3\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\U0|Mult0|auto_generated|mac_mult1~4\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\U0|Mult0|auto_generated|mac_mult1~5\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\U0|Mult0|auto_generated|mac_mult1~6\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\U0|Mult0|auto_generated|mac_mult1~7\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\U0|Mult0|auto_generated|mac_mult1~8\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\U0|Mult0|auto_generated|mac_mult1~dataout\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\U0|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U0|f2y2[4]~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|f2y2[4]~9_combout\);

\U1|U0|U0|Equal1~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|U0|U0|Equal1~1_combout\);

\U0|y2[0]~17clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|y2[0]~17_combout\);

\U0|fig_xShift[0]~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|fig_xShift[0]~9_combout\);

\U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U0|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk_f~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_f~input_o\);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X18_Y0_N30
\VGA_R_f[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_R[0]~22_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R_f(0));

-- Location: IOOBUF_X0_Y12_N9
\VGA_R_f[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_R[0]~22_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R_f(1));

-- Location: IOOBUF_X16_Y0_N16
\VGA_R_f[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_R[0]~22_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R_f(2));

-- Location: IOOBUF_X16_Y0_N23
\VGA_R_f[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_R[0]~22_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R_f(3));

-- Location: IOOBUF_X0_Y9_N2
\VGA_G_f[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_G[0]~37_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G_f(0));

-- Location: IOOBUF_X0_Y15_N9
\VGA_G_f[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_G[0]~37_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G_f(1));

-- Location: IOOBUF_X0_Y3_N9
\VGA_G_f[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_G[0]~37_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G_f(2));

-- Location: IOOBUF_X0_Y3_N2
\VGA_G_f[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_G[0]~37_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G_f(3));

-- Location: IOOBUF_X0_Y13_N2
\VGA_B_f[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_B[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B_f(0));

-- Location: IOOBUF_X0_Y15_N2
\VGA_B_f[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_B[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B_f(1));

-- Location: IOOBUF_X0_Y23_N2
\VGA_B_f[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_B[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B_f(2));

-- Location: IOOBUF_X0_Y18_N9
\VGA_B_f[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|VGA_B[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B_f(3));

-- Location: IOOBUF_X0_Y18_N2
\VGA_HS_f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U1|h_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS_f);

-- Location: IOOBUF_X0_Y13_N9
\VGA_VS_f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U1|v_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS_f);

-- Location: IOOBUF_X54_Y0_N2
\GSENSOR_CS_N_f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U0|U0|u0|spi_csn~q\,
	devoe => ww_devoe,
	o => ww_GSENSOR_CS_N_f);

-- Location: IOOBUF_X51_Y0_N16
\GSENSOR_SCLK_f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U0|U0|u0|spi_clk~q\,
	devoe => ww_devoe,
	o => ww_GSENSOR_SCLK_f);

-- Location: IOOBUF_X38_Y0_N30
\GSENSOR_SDI_f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U0|U0|u0|spi_sdi~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_GSENSOR_SDI_f);

-- Location: IOOBUF_X38_Y0_N23
\GSENSOR_SDO_f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_GSENSOR_SDO_f);

-- Location: IOIBUF_X34_Y0_N29
\clk_f~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_f,
	o => \clk_f~input_o\);

-- Location: CLKCTRL_G19
\clk_f~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_f~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_f~inputclkctrl_outclk\);

-- Location: FF_X46_Y9_N21
\U1|U0|U0|pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|Add1~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|pc\(5));

-- Location: LCCOMB_X49_Y8_N0
\U1|U0|U0|u0|clk_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|clk_counter~0_combout\ = (\U1|U0|U0|u0|state.IDLE~q\ & !\U1|U0|U0|u0|state.TO_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|u0|state.IDLE~q\,
	datad => \U1|U0|U0|u0|state.TO_IDLE~q\,
	combout => \U1|U0|U0|u0|clk_counter~0_combout\);

-- Location: LCCOMB_X49_Y9_N28
\U1|U0|U0|u0|clk_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|clk_counter~3_combout\ = (\U1|U0|U0|u0|state.IDLE~q\ & (!\U1|U0|U0|u0|clk_counter\(0) & !\U1|U0|U0|u0|state.TO_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|u0|state.IDLE~q\,
	datac => \U1|U0|U0|u0|clk_counter\(0),
	datad => \U1|U0|U0|u0|state.TO_IDLE~q\,
	combout => \U1|U0|U0|u0|clk_counter~3_combout\);

-- Location: FF_X49_Y9_N29
\U1|U0|U0|u0|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|clk_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|clk_counter\(0));

-- Location: LCCOMB_X49_Y9_N22
\U1|U0|U0|u0|clk_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|clk_counter~4_combout\ = (\U1|U0|U0|u0|clk_counter~0_combout\ & ((\U1|U0|U0|u0|clk_counter\(0) $ (!\U1|U0|U0|u0|clk_counter\(1))) # (!\U1|U0|U0|u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|clk_counter~0_combout\,
	datab => \U1|U0|U0|u0|clk_counter\(0),
	datac => \U1|U0|U0|u0|clk_counter\(1),
	datad => \U1|U0|U0|u0|Equal0~0_combout\,
	combout => \U1|U0|U0|u0|clk_counter~4_combout\);

-- Location: FF_X49_Y9_N23
\U1|U0|U0|u0|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|clk_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|clk_counter\(1));

-- Location: LCCOMB_X49_Y9_N26
\U1|U0|U0|u0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Equal0~1_combout\ = (!\U1|U0|U0|u0|clk_counter\(1) & !\U1|U0|U0|u0|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|U0|u0|clk_counter\(1),
	datad => \U1|U0|U0|u0|clk_counter\(0),
	combout => \U1|U0|U0|u0|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y9_N10
\U1|U0|U0|u0|clk_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|clk_counter~2_combout\ = (\U1|U0|U0|u0|clk_counter~0_combout\ & (\U1|U0|U0|u0|Equal0~0_combout\ & (\U1|U0|U0|u0|Equal0~1_combout\ $ (\U1|U0|U0|u0|clk_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|Equal0~1_combout\,
	datab => \U1|U0|U0|u0|clk_counter~0_combout\,
	datac => \U1|U0|U0|u0|clk_counter\(2),
	datad => \U1|U0|U0|u0|Equal0~0_combout\,
	combout => \U1|U0|U0|u0|clk_counter~2_combout\);

-- Location: FF_X49_Y9_N11
\U1|U0|U0|u0|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|clk_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|clk_counter\(2));

-- Location: LCCOMB_X49_Y9_N8
\U1|U0|U0|u0|clk_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|clk_counter~1_combout\ = (\U1|U0|U0|u0|clk_counter~0_combout\ & (\U1|U0|U0|u0|clk_counter\(3) $ (((\U1|U0|U0|u0|Equal0~1_combout\ & !\U1|U0|U0|u0|clk_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|Equal0~1_combout\,
	datab => \U1|U0|U0|u0|clk_counter~0_combout\,
	datac => \U1|U0|U0|u0|clk_counter\(3),
	datad => \U1|U0|U0|u0|clk_counter\(2),
	combout => \U1|U0|U0|u0|clk_counter~1_combout\);

-- Location: FF_X49_Y9_N9
\U1|U0|U0|u0|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|clk_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|clk_counter\(3));

-- Location: LCCOMB_X49_Y9_N16
\U1|U0|U0|u0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Equal0~0_combout\ = (\U1|U0|U0|u0|clk_counter\(1)) # ((\U1|U0|U0|u0|clk_counter\(0)) # ((\U1|U0|U0|u0|clk_counter\(3)) # (\U1|U0|U0|u0|clk_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|clk_counter\(1),
	datab => \U1|U0|U0|u0|clk_counter\(0),
	datac => \U1|U0|U0|u0|clk_counter\(3),
	datad => \U1|U0|U0|u0|clk_counter\(2),
	combout => \U1|U0|U0|u0|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y8_N10
\U1|U0|U0|u0|spi_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|spi_clk~2_combout\ = ((\U1|U0|U0|u0|state.TO_IDLE~q\) # (\U1|U0|U0|u0|spi_clk~q\ $ (!\U1|U0|U0|u0|Equal0~0_combout\))) # (!\U1|U0|U0|u0|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.IDLE~q\,
	datab => \U1|U0|U0|u0|state.TO_IDLE~q\,
	datac => \U1|U0|U0|u0|spi_clk~q\,
	datad => \U1|U0|U0|u0|Equal0~0_combout\,
	combout => \U1|U0|U0|u0|spi_clk~2_combout\);

-- Location: FF_X50_Y8_N11
\U1|U0|U0|u0|spi_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|spi_clk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|spi_clk~q\);

-- Location: FF_X50_Y8_N15
\U1|U0|U0|u0|spi_clk_last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|spi_clk~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|spi_clk_last~q\);

-- Location: LCCOMB_X50_Y8_N14
\U1|U0|U0|u0|rx_data[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|rx_data[7]~0_combout\ = (\U1|U0|U0|u0|spi_clk~q\ & !\U1|U0|U0|u0|spi_clk_last~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|u0|spi_clk~q\,
	datac => \U1|U0|U0|u0|spi_clk_last~q\,
	combout => \U1|U0|U0|u0|rx_data[7]~0_combout\);

-- Location: LCCOMB_X50_Y8_N18
\U1|U0|U0|u0|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector3~0_combout\ = (\U1|U0|U0|u0|state.ACTIVE~q\ & (((\U1|U0|U0|u0|spi_clk_last~q\) # (!\U1|U0|U0|u0|state_next~2_combout\)) # (!\U1|U0|U0|u0|spi_clk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|spi_clk~q\,
	datab => \U1|U0|U0|u0|state_next~2_combout\,
	datac => \U1|U0|U0|u0|spi_clk_last~q\,
	datad => \U1|U0|U0|u0|state.ACTIVE~q\,
	combout => \U1|U0|U0|u0|Selector3~0_combout\);

-- Location: LCCOMB_X50_Y9_N24
\U1|U0|U0|u0|idlecount[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|idlecount[0]~0_combout\ = (\U1|U0|U0|u0|state.TO_ACTIVE~q\) # ((\U1|U0|U0|u0|state.ACTIVE~q\) # ((\U1|U0|U0|u0|always2~0_combout\ & !\U1|U0|U0|u0|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.TO_ACTIVE~q\,
	datab => \U1|U0|U0|u0|state.ACTIVE~q\,
	datac => \U1|U0|U0|u0|always2~0_combout\,
	datad => \U1|U0|U0|u0|state.IDLE~q\,
	combout => \U1|U0|U0|u0|idlecount[0]~0_combout\);

-- Location: LCCOMB_X50_Y9_N22
\U1|U0|U0|u0|idlecount[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|idlecount[0]~3_combout\ = (\U1|U0|U0|u0|idlecount\(0) & ((\U1|U0|U0|u0|state.TO_IDLE~q\) # (\U1|U0|U0|u0|idlecount[0]~0_combout\))) # (!\U1|U0|U0|u0|idlecount\(0) & ((!\U1|U0|U0|u0|idlecount[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.TO_IDLE~q\,
	datac => \U1|U0|U0|u0|idlecount\(0),
	datad => \U1|U0|U0|u0|idlecount[0]~0_combout\,
	combout => \U1|U0|U0|u0|idlecount[0]~3_combout\);

-- Location: FF_X50_Y9_N23
\U1|U0|U0|u0|idlecount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|idlecount[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|idlecount\(0));

-- Location: LCCOMB_X50_Y9_N10
\U1|U0|U0|u0|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector6~0_combout\ = (!\U1|U0|U0|u0|state.IDLE~q\ & !\U1|U0|U0|u0|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.IDLE~q\,
	datac => \U1|U0|U0|u0|always2~0_combout\,
	combout => \U1|U0|U0|u0|Selector6~0_combout\);

-- Location: LCCOMB_X50_Y9_N0
\U1|U0|U0|u0|idlecount[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|idlecount[0]~2_combout\ = (!\U1|U0|U0|u0|state.ACTIVE~q\ & !\U1|U0|U0|u0|state.TO_ACTIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|u0|state.ACTIVE~q\,
	datad => \U1|U0|U0|u0|state.TO_ACTIVE~q\,
	combout => \U1|U0|U0|u0|idlecount[0]~2_combout\);

-- Location: LCCOMB_X50_Y9_N4
\U1|U0|U0|u0|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector7~0_combout\ = (\U1|U0|U0|u0|idlecount\(1) & (((\U1|U0|U0|u0|idlecount\(0) & \U1|U0|U0|u0|Selector6~0_combout\)) # (!\U1|U0|U0|u0|idlecount[0]~2_combout\))) # (!\U1|U0|U0|u0|idlecount\(1) & (!\U1|U0|U0|u0|idlecount\(0) & 
-- ((\U1|U0|U0|u0|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|idlecount\(0),
	datab => \U1|U0|U0|u0|idlecount[0]~2_combout\,
	datac => \U1|U0|U0|u0|idlecount\(1),
	datad => \U1|U0|U0|u0|Selector6~0_combout\,
	combout => \U1|U0|U0|u0|Selector7~0_combout\);

-- Location: FF_X50_Y9_N5
\U1|U0|U0|u0|idlecount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|idlecount\(1));

-- Location: LCCOMB_X50_Y9_N6
\U1|U0|U0|u0|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Add1~1_combout\ = \U1|U0|U0|u0|idlecount\(2) $ (((\U1|U0|U0|u0|idlecount\(0)) # (\U1|U0|U0|u0|idlecount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|idlecount\(0),
	datac => \U1|U0|U0|u0|idlecount\(1),
	datad => \U1|U0|U0|u0|idlecount\(2),
	combout => \U1|U0|U0|u0|Add1~1_combout\);

-- Location: LCCOMB_X50_Y9_N28
\U1|U0|U0|u0|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector6~1_combout\ = (\U1|U0|U0|u0|Selector6~0_combout\ & (((!\U1|U0|U0|u0|idlecount[0]~2_combout\ & \U1|U0|U0|u0|idlecount\(2))) # (!\U1|U0|U0|u0|Add1~1_combout\))) # (!\U1|U0|U0|u0|Selector6~0_combout\ & 
-- (!\U1|U0|U0|u0|idlecount[0]~2_combout\ & (\U1|U0|U0|u0|idlecount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|Selector6~0_combout\,
	datab => \U1|U0|U0|u0|idlecount[0]~2_combout\,
	datac => \U1|U0|U0|u0|idlecount\(2),
	datad => \U1|U0|U0|u0|Add1~1_combout\,
	combout => \U1|U0|U0|u0|Selector6~1_combout\);

-- Location: FF_X50_Y9_N29
\U1|U0|U0|u0|idlecount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|idlecount\(2));

-- Location: LCCOMB_X50_Y9_N2
\U1|U0|U0|u0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Add1~0_combout\ = \U1|U0|U0|u0|idlecount\(3) $ (((\U1|U0|U0|u0|idlecount\(0)) # ((\U1|U0|U0|u0|idlecount\(2)) # (\U1|U0|U0|u0|idlecount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|idlecount\(0),
	datab => \U1|U0|U0|u0|idlecount\(2),
	datac => \U1|U0|U0|u0|idlecount\(1),
	datad => \U1|U0|U0|u0|idlecount\(3),
	combout => \U1|U0|U0|u0|Add1~0_combout\);

-- Location: LCCOMB_X50_Y9_N18
\U1|U0|U0|u0|idlecount[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|idlecount[3]~1_combout\ = (\U1|U0|U0|u0|idlecount[0]~0_combout\ & (((\U1|U0|U0|u0|idlecount\(3))))) # (!\U1|U0|U0|u0|idlecount[0]~0_combout\ & ((\U1|U0|U0|u0|state.TO_IDLE~q\) # ((!\U1|U0|U0|u0|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.TO_IDLE~q\,
	datab => \U1|U0|U0|u0|Add1~0_combout\,
	datac => \U1|U0|U0|u0|idlecount\(3),
	datad => \U1|U0|U0|u0|idlecount[0]~0_combout\,
	combout => \U1|U0|U0|u0|idlecount[3]~1_combout\);

-- Location: FF_X50_Y9_N19
\U1|U0|U0|u0|idlecount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|idlecount[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|idlecount\(3));

-- Location: LCCOMB_X50_Y9_N30
\U1|U0|U0|u0|always2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|always2~0_combout\ = (!\U1|U0|U0|u0|idlecount\(0) & (!\U1|U0|U0|u0|idlecount\(2) & (!\U1|U0|U0|u0|idlecount\(1) & !\U1|U0|U0|u0|idlecount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|idlecount\(0),
	datab => \U1|U0|U0|u0|idlecount\(2),
	datac => \U1|U0|U0|u0|idlecount\(1),
	datad => \U1|U0|U0|u0|idlecount\(3),
	combout => \U1|U0|U0|u0|always2~0_combout\);

-- Location: LCCOMB_X50_Y8_N4
\U1|U0|U0|u0|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector3~1_combout\ = (!\U1|U0|U0|u0|state.ACTIVE~q\ & ((\U1|U0|U0|current_instruction.opcode\(1)) # ((\U1|U0|U0|current_instruction.opcode\(2)) # (!\U1|U0|U0|u0|always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|current_instruction.opcode\(1),
	datab => \U1|U0|U0|current_instruction.opcode\(2),
	datac => \U1|U0|U0|u0|always2~0_combout\,
	datad => \U1|U0|U0|u0|state.ACTIVE~q\,
	combout => \U1|U0|U0|u0|Selector3~1_combout\);

-- Location: LCCOMB_X50_Y8_N16
\U1|U0|U0|u0|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector3~2_combout\ = (!\U1|U0|U0|u0|state.TO_ACTIVE~q\ & (!\U1|U0|U0|u0|state.TO_IDLE~q\ & ((\U1|U0|U0|u0|Selector3~0_combout\) # (\U1|U0|U0|u0|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.TO_ACTIVE~q\,
	datab => \U1|U0|U0|u0|Selector3~0_combout\,
	datac => \U1|U0|U0|u0|Selector3~1_combout\,
	datad => \U1|U0|U0|u0|state.TO_IDLE~q\,
	combout => \U1|U0|U0|u0|Selector3~2_combout\);

-- Location: LCCOMB_X50_Y8_N0
\U1|U0|U0|u0|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector3~3_combout\ = (\U1|U0|U0|u0|state.TO_ACTIVE~q\ & (((\U1|U0|U0|u0|state.ACTIVE~q\ & \U1|U0|U0|u0|Selector3~2_combout\)) # (!\U1|U0|U0|u0|state.TO_IDLE~q\))) # (!\U1|U0|U0|u0|state.TO_ACTIVE~q\ & (((\U1|U0|U0|u0|state.ACTIVE~q\ & 
-- \U1|U0|U0|u0|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.TO_ACTIVE~q\,
	datab => \U1|U0|U0|u0|state.TO_IDLE~q\,
	datac => \U1|U0|U0|u0|state.ACTIVE~q\,
	datad => \U1|U0|U0|u0|Selector3~2_combout\,
	combout => \U1|U0|U0|u0|Selector3~3_combout\);

-- Location: FF_X50_Y8_N1
\U1|U0|U0|u0|state.ACTIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|state.ACTIVE~q\);

-- Location: LCCOMB_X49_Y8_N6
\U1|U0|U0|u0|count[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|count[2]~0_combout\ = ((\U1|U0|U0|u0|state.ACTIVE~q\ & ((\U1|U0|U0|u0|state_next~2_combout\) # (!\U1|U0|U0|u0|rx_data[7]~0_combout\)))) # (!\U1|U0|U0|u0|clk_counter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|clk_counter~0_combout\,
	datab => \U1|U0|U0|u0|state_next~2_combout\,
	datac => \U1|U0|U0|u0|state.ACTIVE~q\,
	datad => \U1|U0|U0|u0|rx_data[7]~0_combout\,
	combout => \U1|U0|U0|u0|count[2]~0_combout\);

-- Location: LCCOMB_X49_Y8_N8
\U1|U0|U0|u0|count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|count[0]~2_combout\ = (\U1|U0|U0|u0|count[2]~0_combout\ & (\U1|U0|U0|u0|count\(0))) # (!\U1|U0|U0|u0|count[2]~0_combout\ & ((!\U1|U0|U0|u0|state.ACTIVE~q\) # (!\U1|U0|U0|u0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|count[2]~0_combout\,
	datac => \U1|U0|U0|u0|count\(0),
	datad => \U1|U0|U0|u0|state.ACTIVE~q\,
	combout => \U1|U0|U0|u0|count[0]~2_combout\);

-- Location: FF_X49_Y8_N9
\U1|U0|U0|u0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|count\(0));

-- Location: LCCOMB_X49_Y8_N18
\U1|U0|U0|u0|count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|count[1]~3_combout\ = (\U1|U0|U0|u0|count[2]~0_combout\ & (((\U1|U0|U0|u0|count\(1))))) # (!\U1|U0|U0|u0|count[2]~0_combout\ & ((\U1|U0|U0|u0|count\(0) $ (!\U1|U0|U0|u0|count\(1))) # (!\U1|U0|U0|u0|state.ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|count[2]~0_combout\,
	datab => \U1|U0|U0|u0|count\(0),
	datac => \U1|U0|U0|u0|count\(1),
	datad => \U1|U0|U0|u0|state.ACTIVE~q\,
	combout => \U1|U0|U0|u0|count[1]~3_combout\);

-- Location: FF_X49_Y8_N19
\U1|U0|U0|u0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|count\(1));

-- Location: LCCOMB_X49_Y8_N20
\U1|U0|U0|u0|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Add2~0_combout\ = (!\U1|U0|U0|u0|count\(0) & !\U1|U0|U0|u0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|U0|u0|count\(0),
	datad => \U1|U0|U0|u0|count\(1),
	combout => \U1|U0|U0|u0|Add2~0_combout\);

-- Location: LCCOMB_X49_Y8_N30
\U1|U0|U0|u0|count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|count[2]~1_combout\ = (\U1|U0|U0|u0|count[2]~0_combout\ & (((\U1|U0|U0|u0|count\(2))))) # (!\U1|U0|U0|u0|count[2]~0_combout\ & ((\U1|U0|U0|u0|Add2~0_combout\ $ (\U1|U0|U0|u0|count\(2))) # (!\U1|U0|U0|u0|state.ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|count[2]~0_combout\,
	datab => \U1|U0|U0|u0|Add2~0_combout\,
	datac => \U1|U0|U0|u0|count\(2),
	datad => \U1|U0|U0|u0|state.ACTIVE~q\,
	combout => \U1|U0|U0|u0|count[2]~1_combout\);

-- Location: FF_X49_Y8_N31
\U1|U0|U0|u0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|count\(2));

-- Location: LCCOMB_X49_Y8_N24
\U1|U0|U0|u0|state_next~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|state_next~2_combout\ = (!\U1|U0|U0|u0|count\(0) & (!\U1|U0|U0|u0|count\(2) & !\U1|U0|U0|u0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|u0|count\(0),
	datac => \U1|U0|U0|u0|count\(2),
	datad => \U1|U0|U0|u0|count\(1),
	combout => \U1|U0|U0|u0|state_next~2_combout\);

-- Location: LCCOMB_X50_Y8_N6
\U1|U0|U0|u0|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector4~0_combout\ = (\U1|U0|U0|u0|rx_data[7]~0_combout\ & (\U1|U0|U0|u0|state_next~2_combout\ & (!\U1|U0|U0|Equal1~0_combout\ & \U1|U0|U0|u0|state.ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|rx_data[7]~0_combout\,
	datab => \U1|U0|U0|u0|state_next~2_combout\,
	datac => \U1|U0|U0|Equal1~0_combout\,
	datad => \U1|U0|U0|u0|state.ACTIVE~q\,
	combout => \U1|U0|U0|u0|Selector4~0_combout\);

-- Location: FF_X50_Y8_N7
\U1|U0|U0|u0|state.TO_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|state.TO_IDLE~q\);

-- Location: LCCOMB_X50_Y8_N12
\U1|U0|U0|u0|state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|state.IDLE~0_combout\ = (\U1|U0|U0|u0|Selector3~2_combout\ & ((\U1|U0|U0|u0|state.IDLE~q\))) # (!\U1|U0|U0|u0|Selector3~2_combout\ & (!\U1|U0|U0|u0|state.TO_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|u0|state.TO_IDLE~q\,
	datac => \U1|U0|U0|u0|state.IDLE~q\,
	datad => \U1|U0|U0|u0|Selector3~2_combout\,
	combout => \U1|U0|U0|u0|state.IDLE~0_combout\);

-- Location: FF_X50_Y8_N13
\U1|U0|U0|u0|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|state.IDLE~q\);

-- Location: LCCOMB_X45_Y9_N4
\U1|U0|U0|spi_program~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~14_combout\ = (!\U1|U0|U0|Add1~16_combout\ & ((\U1|U0|U0|Add1~17_combout\ & (!\U1|U0|U0|Add1~15_combout\ & !\U1|U0|U0|Add1~8_combout\)) # (!\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~17_combout\,
	datab => \U1|U0|U0|Add1~15_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|Add1~8_combout\,
	combout => \U1|U0|U0|spi_program~14_combout\);

-- Location: LCCOMB_X46_Y9_N24
\U1|U0|U0|spi_program~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~11_combout\ = (\U1|U0|U0|Add1~8_combout\ & ((\U1|U0|U0|Add1~17_combout\ & (!\U1|U0|U0|Add1~16_combout\ & \U1|U0|U0|Add1~15_combout\)) # (!\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~16_combout\ $ (!\U1|U0|U0|Add1~15_combout\))))) # 
-- (!\U1|U0|U0|Add1~8_combout\ & ((\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~16_combout\ & !\U1|U0|U0|Add1~15_combout\)) # (!\U1|U0|U0|Add1~17_combout\ & (!\U1|U0|U0|Add1~16_combout\ & \U1|U0|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~8_combout\,
	datab => \U1|U0|U0|Add1~17_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|Add1~15_combout\,
	combout => \U1|U0|U0|spi_program~11_combout\);

-- Location: LCCOMB_X45_Y9_N30
\U1|U0|U0|spi_program~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~15_combout\ = (!\U1|U0|U0|Add1~14_combout\ & ((\U1|U0|U0|Add1~13_combout\ & (\U1|U0|U0|spi_program~14_combout\)) # (!\U1|U0|U0|Add1~13_combout\ & ((!\U1|U0|U0|spi_program~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~14_combout\,
	datab => \U1|U0|U0|Add1~13_combout\,
	datac => \U1|U0|U0|spi_program~14_combout\,
	datad => \U1|U0|U0|spi_program~11_combout\,
	combout => \U1|U0|U0|spi_program~15_combout\);

-- Location: LCCOMB_X46_Y9_N26
\U1|U0|U0|spi_program~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~10_combout\ = (\U1|U0|U0|Add1~8_combout\ & ((\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~16_combout\ & !\U1|U0|U0|Add1~15_combout\)) # (!\U1|U0|U0|Add1~17_combout\ & (!\U1|U0|U0|Add1~16_combout\ & \U1|U0|U0|Add1~15_combout\)))) # 
-- (!\U1|U0|U0|Add1~8_combout\ & ((\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~16_combout\ $ (!\U1|U0|U0|Add1~15_combout\))) # (!\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~16_combout\ & !\U1|U0|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~8_combout\,
	datab => \U1|U0|U0|Add1~17_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|Add1~15_combout\,
	combout => \U1|U0|U0|spi_program~10_combout\);

-- Location: LCCOMB_X46_Y9_N8
\U1|U0|U0|spi_program~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~16_combout\ = (\U1|U0|U0|spi_program~15_combout\) # ((!\U1|U0|U0|Add1~13_combout\ & (\U1|U0|U0|Add1~14_combout\ & !\U1|U0|U0|spi_program~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~13_combout\,
	datab => \U1|U0|U0|Add1~14_combout\,
	datac => \U1|U0|U0|spi_program~15_combout\,
	datad => \U1|U0|U0|spi_program~10_combout\,
	combout => \U1|U0|U0|spi_program~16_combout\);

-- Location: FF_X46_Y9_N9
\U1|U0|U0|current_instruction.opcode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|spi_program~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.opcode\(0));

-- Location: LCCOMB_X39_Y5_N12
\U1|U0|U0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~0_combout\ = \U1|U0|U0|update_clock_counter\(0) $ (VCC)
-- \U1|U0|U0|Add0~1\ = CARRY(\U1|U0|U0|update_clock_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(0),
	datad => VCC,
	combout => \U1|U0|U0|Add0~0_combout\,
	cout => \U1|U0|U0|Add0~1\);

-- Location: FF_X39_Y5_N13
\U1|U0|U0|update_clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(0));

-- Location: LCCOMB_X39_Y5_N14
\U1|U0|U0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~2_combout\ = (\U1|U0|U0|update_clock_counter\(1) & (\U1|U0|U0|Add0~1\ & VCC)) # (!\U1|U0|U0|update_clock_counter\(1) & (!\U1|U0|U0|Add0~1\))
-- \U1|U0|U0|Add0~3\ = CARRY((!\U1|U0|U0|update_clock_counter\(1) & !\U1|U0|U0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(1),
	datad => VCC,
	cin => \U1|U0|U0|Add0~1\,
	combout => \U1|U0|U0|Add0~2_combout\,
	cout => \U1|U0|U0|Add0~3\);

-- Location: FF_X39_Y5_N15
\U1|U0|U0|update_clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(1));

-- Location: LCCOMB_X39_Y5_N16
\U1|U0|U0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~4_combout\ = (\U1|U0|U0|update_clock_counter\(2) & ((GND) # (!\U1|U0|U0|Add0~3\))) # (!\U1|U0|U0|update_clock_counter\(2) & (\U1|U0|U0|Add0~3\ $ (GND)))
-- \U1|U0|U0|Add0~5\ = CARRY((\U1|U0|U0|update_clock_counter\(2)) # (!\U1|U0|U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(2),
	datad => VCC,
	cin => \U1|U0|U0|Add0~3\,
	combout => \U1|U0|U0|Add0~4_combout\,
	cout => \U1|U0|U0|Add0~5\);

-- Location: FF_X39_Y5_N17
\U1|U0|U0|update_clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(2));

-- Location: LCCOMB_X39_Y5_N18
\U1|U0|U0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~6_combout\ = (\U1|U0|U0|update_clock_counter\(3) & (\U1|U0|U0|Add0~5\ & VCC)) # (!\U1|U0|U0|update_clock_counter\(3) & (!\U1|U0|U0|Add0~5\))
-- \U1|U0|U0|Add0~7\ = CARRY((!\U1|U0|U0|update_clock_counter\(3) & !\U1|U0|U0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(3),
	datad => VCC,
	cin => \U1|U0|U0|Add0~5\,
	combout => \U1|U0|U0|Add0~6_combout\,
	cout => \U1|U0|U0|Add0~7\);

-- Location: FF_X39_Y5_N19
\U1|U0|U0|update_clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(3));

-- Location: LCCOMB_X39_Y5_N20
\U1|U0|U0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~8_combout\ = (\U1|U0|U0|update_clock_counter\(4) & ((GND) # (!\U1|U0|U0|Add0~7\))) # (!\U1|U0|U0|update_clock_counter\(4) & (\U1|U0|U0|Add0~7\ $ (GND)))
-- \U1|U0|U0|Add0~9\ = CARRY((\U1|U0|U0|update_clock_counter\(4)) # (!\U1|U0|U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(4),
	datad => VCC,
	cin => \U1|U0|U0|Add0~7\,
	combout => \U1|U0|U0|Add0~8_combout\,
	cout => \U1|U0|U0|Add0~9\);

-- Location: FF_X39_Y5_N21
\U1|U0|U0|update_clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(4));

-- Location: LCCOMB_X39_Y5_N22
\U1|U0|U0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~10_combout\ = (\U1|U0|U0|update_clock_counter\(5) & (\U1|U0|U0|Add0~9\ & VCC)) # (!\U1|U0|U0|update_clock_counter\(5) & (!\U1|U0|U0|Add0~9\))
-- \U1|U0|U0|Add0~11\ = CARRY((!\U1|U0|U0|update_clock_counter\(5) & !\U1|U0|U0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(5),
	datad => VCC,
	cin => \U1|U0|U0|Add0~9\,
	combout => \U1|U0|U0|Add0~10_combout\,
	cout => \U1|U0|U0|Add0~11\);

-- Location: FF_X39_Y5_N23
\U1|U0|U0|update_clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(5));

-- Location: LCCOMB_X39_Y5_N24
\U1|U0|U0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~12_combout\ = (\U1|U0|U0|update_clock_counter\(6) & ((GND) # (!\U1|U0|U0|Add0~11\))) # (!\U1|U0|U0|update_clock_counter\(6) & (\U1|U0|U0|Add0~11\ $ (GND)))
-- \U1|U0|U0|Add0~13\ = CARRY((\U1|U0|U0|update_clock_counter\(6)) # (!\U1|U0|U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(6),
	datad => VCC,
	cin => \U1|U0|U0|Add0~11\,
	combout => \U1|U0|U0|Add0~12_combout\,
	cout => \U1|U0|U0|Add0~13\);

-- Location: LCCOMB_X39_Y5_N6
\U1|U0|U0|update_clock_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|update_clock_counter~0_combout\ = (!\U1|U0|U0|Equal0~6_combout\ & \U1|U0|U0|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|U0|Equal0~6_combout\,
	datad => \U1|U0|U0|Add0~12_combout\,
	combout => \U1|U0|U0|update_clock_counter~0_combout\);

-- Location: FF_X39_Y5_N7
\U1|U0|U0|update_clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|update_clock_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(6));

-- Location: LCCOMB_X39_Y5_N26
\U1|U0|U0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~14_combout\ = (\U1|U0|U0|update_clock_counter\(7) & (\U1|U0|U0|Add0~13\ & VCC)) # (!\U1|U0|U0|update_clock_counter\(7) & (!\U1|U0|U0|Add0~13\))
-- \U1|U0|U0|Add0~15\ = CARRY((!\U1|U0|U0|update_clock_counter\(7) & !\U1|U0|U0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(7),
	datad => VCC,
	cin => \U1|U0|U0|Add0~13\,
	combout => \U1|U0|U0|Add0~14_combout\,
	cout => \U1|U0|U0|Add0~15\);

-- Location: LCCOMB_X39_Y5_N0
\U1|U0|U0|update_clock_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|update_clock_counter~1_combout\ = (!\U1|U0|U0|Equal0~6_combout\ & \U1|U0|U0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|Equal0~6_combout\,
	datac => \U1|U0|U0|Add0~14_combout\,
	combout => \U1|U0|U0|update_clock_counter~1_combout\);

-- Location: FF_X39_Y5_N1
\U1|U0|U0|update_clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|update_clock_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(7));

-- Location: LCCOMB_X39_Y5_N10
\U1|U0|U0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal0~2_combout\ = (!\U1|U0|U0|update_clock_counter\(6) & (!\U1|U0|U0|update_clock_counter\(7) & (!\U1|U0|U0|update_clock_counter\(5) & !\U1|U0|U0|update_clock_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(6),
	datab => \U1|U0|U0|update_clock_counter\(7),
	datac => \U1|U0|U0|update_clock_counter\(5),
	datad => \U1|U0|U0|update_clock_counter\(4),
	combout => \U1|U0|U0|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y5_N8
\U1|U0|U0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal0~1_combout\ = (!\U1|U0|U0|update_clock_counter\(3) & !\U1|U0|U0|update_clock_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(3),
	datad => \U1|U0|U0|update_clock_counter\(2),
	combout => \U1|U0|U0|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y5_N4
\U1|U0|U0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal0~3_combout\ = (\U1|U0|U0|Equal0~2_combout\ & (\U1|U0|U0|Equal0~1_combout\ & (!\U1|U0|U0|update_clock_counter\(1) & !\U1|U0|U0|update_clock_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Equal0~2_combout\,
	datab => \U1|U0|U0|Equal0~1_combout\,
	datac => \U1|U0|U0|update_clock_counter\(1),
	datad => \U1|U0|U0|update_clock_counter\(0),
	combout => \U1|U0|U0|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y5_N28
\U1|U0|U0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~16_combout\ = (\U1|U0|U0|update_clock_counter\(8) & ((GND) # (!\U1|U0|U0|Add0~15\))) # (!\U1|U0|U0|update_clock_counter\(8) & (\U1|U0|U0|Add0~15\ $ (GND)))
-- \U1|U0|U0|Add0~17\ = CARRY((\U1|U0|U0|update_clock_counter\(8)) # (!\U1|U0|U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(8),
	datad => VCC,
	cin => \U1|U0|U0|Add0~15\,
	combout => \U1|U0|U0|Add0~16_combout\,
	cout => \U1|U0|U0|Add0~17\);

-- Location: LCCOMB_X39_Y5_N2
\U1|U0|U0|update_clock_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|update_clock_counter~2_combout\ = (!\U1|U0|U0|Equal0~6_combout\ & \U1|U0|U0|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|U0|Equal0~6_combout\,
	datad => \U1|U0|U0|Add0~16_combout\,
	combout => \U1|U0|U0|update_clock_counter~2_combout\);

-- Location: FF_X39_Y5_N3
\U1|U0|U0|update_clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|update_clock_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(8));

-- Location: LCCOMB_X39_Y5_N30
\U1|U0|U0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~18_combout\ = (\U1|U0|U0|update_clock_counter\(9) & (\U1|U0|U0|Add0~17\ & VCC)) # (!\U1|U0|U0|update_clock_counter\(9) & (!\U1|U0|U0|Add0~17\))
-- \U1|U0|U0|Add0~19\ = CARRY((!\U1|U0|U0|update_clock_counter\(9) & !\U1|U0|U0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(9),
	datad => VCC,
	cin => \U1|U0|U0|Add0~17\,
	combout => \U1|U0|U0|Add0~18_combout\,
	cout => \U1|U0|U0|Add0~19\);

-- Location: FF_X39_Y5_N31
\U1|U0|U0|update_clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(9));

-- Location: LCCOMB_X39_Y4_N0
\U1|U0|U0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~20_combout\ = (\U1|U0|U0|update_clock_counter\(10) & ((GND) # (!\U1|U0|U0|Add0~19\))) # (!\U1|U0|U0|update_clock_counter\(10) & (\U1|U0|U0|Add0~19\ $ (GND)))
-- \U1|U0|U0|Add0~21\ = CARRY((\U1|U0|U0|update_clock_counter\(10)) # (!\U1|U0|U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(10),
	datad => VCC,
	cin => \U1|U0|U0|Add0~19\,
	combout => \U1|U0|U0|Add0~20_combout\,
	cout => \U1|U0|U0|Add0~21\);

-- Location: LCCOMB_X38_Y4_N16
\U1|U0|U0|update_clock_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|update_clock_counter~3_combout\ = (\U1|U0|U0|Add0~20_combout\ & !\U1|U0|U0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|U0|Add0~20_combout\,
	datad => \U1|U0|U0|Equal0~6_combout\,
	combout => \U1|U0|U0|update_clock_counter~3_combout\);

-- Location: FF_X38_Y4_N17
\U1|U0|U0|update_clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|update_clock_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(10));

-- Location: LCCOMB_X39_Y4_N2
\U1|U0|U0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~22_combout\ = (\U1|U0|U0|update_clock_counter\(11) & (\U1|U0|U0|Add0~21\ & VCC)) # (!\U1|U0|U0|update_clock_counter\(11) & (!\U1|U0|U0|Add0~21\))
-- \U1|U0|U0|Add0~23\ = CARRY((!\U1|U0|U0|update_clock_counter\(11) & !\U1|U0|U0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(11),
	datad => VCC,
	cin => \U1|U0|U0|Add0~21\,
	combout => \U1|U0|U0|Add0~22_combout\,
	cout => \U1|U0|U0|Add0~23\);

-- Location: LCCOMB_X38_Y4_N6
\U1|U0|U0|update_clock_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|update_clock_counter~4_combout\ = (!\U1|U0|U0|Equal0~6_combout\ & \U1|U0|U0|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|Equal0~6_combout\,
	datad => \U1|U0|U0|Add0~22_combout\,
	combout => \U1|U0|U0|update_clock_counter~4_combout\);

-- Location: FF_X38_Y4_N7
\U1|U0|U0|update_clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|update_clock_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(11));

-- Location: LCCOMB_X39_Y4_N4
\U1|U0|U0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~24_combout\ = (\U1|U0|U0|update_clock_counter\(12) & ((GND) # (!\U1|U0|U0|Add0~23\))) # (!\U1|U0|U0|update_clock_counter\(12) & (\U1|U0|U0|Add0~23\ $ (GND)))
-- \U1|U0|U0|Add0~25\ = CARRY((\U1|U0|U0|update_clock_counter\(12)) # (!\U1|U0|U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(12),
	datad => VCC,
	cin => \U1|U0|U0|Add0~23\,
	combout => \U1|U0|U0|Add0~24_combout\,
	cout => \U1|U0|U0|Add0~25\);

-- Location: LCCOMB_X39_Y4_N22
\U1|U0|U0|update_clock_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|update_clock_counter~5_combout\ = (!\U1|U0|U0|Equal0~6_combout\ & \U1|U0|U0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Equal0~6_combout\,
	datac => \U1|U0|U0|Add0~24_combout\,
	combout => \U1|U0|U0|update_clock_counter~5_combout\);

-- Location: FF_X39_Y4_N23
\U1|U0|U0|update_clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|update_clock_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(12));

-- Location: LCCOMB_X39_Y4_N6
\U1|U0|U0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~26_combout\ = (\U1|U0|U0|update_clock_counter\(13) & (\U1|U0|U0|Add0~25\ & VCC)) # (!\U1|U0|U0|update_clock_counter\(13) & (!\U1|U0|U0|Add0~25\))
-- \U1|U0|U0|Add0~27\ = CARRY((!\U1|U0|U0|update_clock_counter\(13) & !\U1|U0|U0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(13),
	datad => VCC,
	cin => \U1|U0|U0|Add0~25\,
	combout => \U1|U0|U0|Add0~26_combout\,
	cout => \U1|U0|U0|Add0~27\);

-- Location: LCCOMB_X39_Y4_N28
\U1|U0|U0|update_clock_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|update_clock_counter~6_combout\ = (!\U1|U0|U0|Equal0~6_combout\ & \U1|U0|U0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|U0|Equal0~6_combout\,
	datad => \U1|U0|U0|Add0~26_combout\,
	combout => \U1|U0|U0|update_clock_counter~6_combout\);

-- Location: FF_X39_Y4_N29
\U1|U0|U0|update_clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|update_clock_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(13));

-- Location: LCCOMB_X39_Y4_N8
\U1|U0|U0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~28_combout\ = (\U1|U0|U0|update_clock_counter\(14) & ((GND) # (!\U1|U0|U0|Add0~27\))) # (!\U1|U0|U0|update_clock_counter\(14) & (\U1|U0|U0|Add0~27\ $ (GND)))
-- \U1|U0|U0|Add0~29\ = CARRY((\U1|U0|U0|update_clock_counter\(14)) # (!\U1|U0|U0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(14),
	datad => VCC,
	cin => \U1|U0|U0|Add0~27\,
	combout => \U1|U0|U0|Add0~28_combout\,
	cout => \U1|U0|U0|Add0~29\);

-- Location: FF_X39_Y4_N9
\U1|U0|U0|update_clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(14));

-- Location: LCCOMB_X39_Y4_N10
\U1|U0|U0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~30_combout\ = (\U1|U0|U0|update_clock_counter\(15) & (\U1|U0|U0|Add0~29\ & VCC)) # (!\U1|U0|U0|update_clock_counter\(15) & (!\U1|U0|U0|Add0~29\))
-- \U1|U0|U0|Add0~31\ = CARRY((!\U1|U0|U0|update_clock_counter\(15) & !\U1|U0|U0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(15),
	datad => VCC,
	cin => \U1|U0|U0|Add0~29\,
	combout => \U1|U0|U0|Add0~30_combout\,
	cout => \U1|U0|U0|Add0~31\);

-- Location: LCCOMB_X39_Y4_N30
\U1|U0|U0|update_clock_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|update_clock_counter~7_combout\ = (!\U1|U0|U0|Equal0~6_combout\ & \U1|U0|U0|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|U0|Equal0~6_combout\,
	datad => \U1|U0|U0|Add0~30_combout\,
	combout => \U1|U0|U0|update_clock_counter~7_combout\);

-- Location: FF_X39_Y4_N31
\U1|U0|U0|update_clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|update_clock_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(15));

-- Location: LCCOMB_X39_Y4_N24
\U1|U0|U0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal0~5_combout\ = (!\U1|U0|U0|update_clock_counter\(15) & (!\U1|U0|U0|update_clock_counter\(14) & (!\U1|U0|U0|update_clock_counter\(12) & !\U1|U0|U0|update_clock_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(15),
	datab => \U1|U0|U0|update_clock_counter\(14),
	datac => \U1|U0|U0|update_clock_counter\(12),
	datad => \U1|U0|U0|update_clock_counter\(13),
	combout => \U1|U0|U0|Equal0~5_combout\);

-- Location: LCCOMB_X38_Y4_N4
\U1|U0|U0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal0~4_combout\ = (!\U1|U0|U0|update_clock_counter\(9) & (!\U1|U0|U0|update_clock_counter\(10) & (!\U1|U0|U0|update_clock_counter\(8) & !\U1|U0|U0|update_clock_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(9),
	datab => \U1|U0|U0|update_clock_counter\(10),
	datac => \U1|U0|U0|update_clock_counter\(8),
	datad => \U1|U0|U0|update_clock_counter\(11),
	combout => \U1|U0|U0|Equal0~4_combout\);

-- Location: LCCOMB_X39_Y4_N12
\U1|U0|U0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~32_combout\ = (\U1|U0|U0|update_clock_counter\(16) & ((GND) # (!\U1|U0|U0|Add0~31\))) # (!\U1|U0|U0|update_clock_counter\(16) & (\U1|U0|U0|Add0~31\ $ (GND)))
-- \U1|U0|U0|Add0~33\ = CARRY((\U1|U0|U0|update_clock_counter\(16)) # (!\U1|U0|U0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(16),
	datad => VCC,
	cin => \U1|U0|U0|Add0~31\,
	combout => \U1|U0|U0|Add0~32_combout\,
	cout => \U1|U0|U0|Add0~33\);

-- Location: FF_X39_Y4_N13
\U1|U0|U0|update_clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(16));

-- Location: LCCOMB_X39_Y4_N14
\U1|U0|U0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~34_combout\ = (\U1|U0|U0|update_clock_counter\(17) & (\U1|U0|U0|Add0~33\ & VCC)) # (!\U1|U0|U0|update_clock_counter\(17) & (!\U1|U0|U0|Add0~33\))
-- \U1|U0|U0|Add0~35\ = CARRY((!\U1|U0|U0|update_clock_counter\(17) & !\U1|U0|U0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(17),
	datad => VCC,
	cin => \U1|U0|U0|Add0~33\,
	combout => \U1|U0|U0|Add0~34_combout\,
	cout => \U1|U0|U0|Add0~35\);

-- Location: FF_X39_Y4_N15
\U1|U0|U0|update_clock_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(17));

-- Location: LCCOMB_X39_Y4_N16
\U1|U0|U0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~36_combout\ = (\U1|U0|U0|update_clock_counter\(18) & ((GND) # (!\U1|U0|U0|Add0~35\))) # (!\U1|U0|U0|update_clock_counter\(18) & (\U1|U0|U0|Add0~35\ $ (GND)))
-- \U1|U0|U0|Add0~37\ = CARRY((\U1|U0|U0|update_clock_counter\(18)) # (!\U1|U0|U0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(18),
	datad => VCC,
	cin => \U1|U0|U0|Add0~35\,
	combout => \U1|U0|U0|Add0~36_combout\,
	cout => \U1|U0|U0|Add0~37\);

-- Location: FF_X39_Y4_N17
\U1|U0|U0|update_clock_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(18));

-- Location: LCCOMB_X39_Y4_N18
\U1|U0|U0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add0~38_combout\ = \U1|U0|U0|update_clock_counter\(19) $ (!\U1|U0|U0|Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|update_clock_counter\(19),
	cin => \U1|U0|U0|Add0~37\,
	combout => \U1|U0|U0|Add0~38_combout\);

-- Location: FF_X39_Y4_N19
\U1|U0|U0|update_clock_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update_clock_counter\(19));

-- Location: LCCOMB_X39_Y4_N20
\U1|U0|U0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal0~0_combout\ = (!\U1|U0|U0|update_clock_counter\(16) & (!\U1|U0|U0|update_clock_counter\(19) & (!\U1|U0|U0|update_clock_counter\(17) & !\U1|U0|U0|update_clock_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|update_clock_counter\(16),
	datab => \U1|U0|U0|update_clock_counter\(19),
	datac => \U1|U0|U0|update_clock_counter\(17),
	datad => \U1|U0|U0|update_clock_counter\(18),
	combout => \U1|U0|U0|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y4_N26
\U1|U0|U0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal0~6_combout\ = (\U1|U0|U0|Equal0~3_combout\ & (\U1|U0|U0|Equal0~5_combout\ & (\U1|U0|U0|Equal0~4_combout\ & \U1|U0|U0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Equal0~3_combout\,
	datab => \U1|U0|U0|Equal0~5_combout\,
	datac => \U1|U0|U0|Equal0~4_combout\,
	datad => \U1|U0|U0|Equal0~0_combout\,
	combout => \U1|U0|U0|Equal0~6_combout\);

-- Location: LCCOMB_X43_Y5_N20
\U1|U0|U0|update~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|update~feeder_combout\ = \U1|U0|U0|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U0|U0|Equal0~6_combout\,
	combout => \U1|U0|U0|update~feeder_combout\);

-- Location: FF_X43_Y5_N21
\U1|U0|U0|update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|update~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|update~q\);

-- Location: LCCOMB_X46_Y9_N4
\U1|U0|U0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Selector1~0_combout\ = (!\U1|U0|U0|current_instruction.opcode\(2) & ((\U1|U0|U0|current_instruction.opcode\(0) & ((\U1|U0|U0|update~q\))) # (!\U1|U0|U0|current_instruction.opcode\(0) & (!\U1|U0|U0|u0|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.IDLE~q\,
	datab => \U1|U0|U0|current_instruction.opcode\(0),
	datac => \U1|U0|U0|current_instruction.opcode\(2),
	datad => \U1|U0|U0|update~q\,
	combout => \U1|U0|U0|Selector1~0_combout\);

-- Location: LCCOMB_X46_Y9_N28
\U1|U0|U0|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Selector1~1_combout\ = (\U1|U0|U0|current_instruction.opcode\(1) & (((\U1|U0|U0|Selector1~0_combout\)))) # (!\U1|U0|U0|current_instruction.opcode\(1) & ((\U1|U0|U0|u0|state.TO_ACTIVE~q\) # ((\U1|U0|U0|current_instruction.opcode\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.TO_ACTIVE~q\,
	datab => \U1|U0|U0|current_instruction.opcode\(2),
	datac => \U1|U0|U0|Selector1~0_combout\,
	datad => \U1|U0|U0|current_instruction.opcode\(1),
	combout => \U1|U0|U0|Selector1~1_combout\);

-- Location: FF_X46_Y9_N11
\U1|U0|U0|pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|Add1~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|pc\(0));

-- Location: LCCOMB_X46_Y9_N10
\U1|U0|U0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~0_combout\ = (\U1|U0|U0|Selector1~1_combout\ & (\U1|U0|U0|pc\(0) $ (VCC))) # (!\U1|U0|U0|Selector1~1_combout\ & (\U1|U0|U0|pc\(0) & VCC))
-- \U1|U0|U0|Add1~1\ = CARRY((\U1|U0|U0|Selector1~1_combout\ & \U1|U0|U0|pc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Selector1~1_combout\,
	datab => \U1|U0|U0|pc\(0),
	datad => VCC,
	combout => \U1|U0|U0|Add1~0_combout\,
	cout => \U1|U0|U0|Add1~1\);

-- Location: LCCOMB_X46_Y9_N12
\U1|U0|U0|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~2_combout\ = (\U1|U0|U0|pc\(1) & (!\U1|U0|U0|Add1~1\)) # (!\U1|U0|U0|pc\(1) & ((\U1|U0|U0|Add1~1\) # (GND)))
-- \U1|U0|U0|Add1~3\ = CARRY((!\U1|U0|U0|Add1~1\) # (!\U1|U0|U0|pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|pc\(1),
	datad => VCC,
	cin => \U1|U0|U0|Add1~1\,
	combout => \U1|U0|U0|Add1~2_combout\,
	cout => \U1|U0|U0|Add1~3\);

-- Location: LCCOMB_X45_Y9_N20
\U1|U0|U0|spi_program~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~46_combout\ = (!\U1|U0|U0|Add1~16_combout\ & ((\U1|U0|U0|Equal1~2_combout\ & ((\U1|U0|U0|current_instruction.immediate\(1)))) # (!\U1|U0|U0|Equal1~2_combout\ & (\U1|U0|U0|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Equal1~2_combout\,
	datab => \U1|U0|U0|Add1~2_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|current_instruction.immediate\(1),
	combout => \U1|U0|U0|spi_program~46_combout\);

-- Location: LCCOMB_X45_Y9_N18
\U1|U0|U0|spi_program~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~8_combout\ = (!\U1|U0|U0|Add1~14_combout\ & (\U1|U0|U0|Add1~8_combout\ & (\U1|U0|U0|Add1~13_combout\ & \U1|U0|U0|spi_program~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~14_combout\,
	datab => \U1|U0|U0|Add1~8_combout\,
	datac => \U1|U0|U0|Add1~13_combout\,
	datad => \U1|U0|U0|spi_program~46_combout\,
	combout => \U1|U0|U0|spi_program~8_combout\);

-- Location: FF_X45_Y9_N19
\U1|U0|U0|current_instruction.opcode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|U0|U0|spi_program~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.opcode\(2));

-- Location: LCCOMB_X47_Y9_N14
\U1|U0|U0|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal1~2_combout\ = (\U1|U0|U0|current_instruction.opcode\(2) & (!\U1|U0|U0|current_instruction.opcode\(1) & !\U1|U0|U0|current_instruction.opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|current_instruction.opcode\(2),
	datab => \U1|U0|U0|current_instruction.opcode\(1),
	datad => \U1|U0|U0|current_instruction.opcode\(0),
	combout => \U1|U0|U0|Equal1~2_combout\);

-- Location: LCCOMB_X47_Y9_N18
\U1|U0|U0|spi_program~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~39_combout\ = (\U1|U0|U0|Add1~8_combout\ & (\U1|U0|U0|Add1~17_combout\ $ (((!\U1|U0|U0|Add1~16_combout\ & \U1|U0|U0|Add1~15_combout\))))) # (!\U1|U0|U0|Add1~8_combout\ & ((\U1|U0|U0|Add1~15_combout\ & ((\U1|U0|U0|Add1~17_combout\))) 
-- # (!\U1|U0|U0|Add1~15_combout\ & (\U1|U0|U0|Add1~16_combout\ & !\U1|U0|U0|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~16_combout\,
	datab => \U1|U0|U0|Add1~8_combout\,
	datac => \U1|U0|U0|Add1~15_combout\,
	datad => \U1|U0|U0|Add1~17_combout\,
	combout => \U1|U0|U0|spi_program~39_combout\);

-- Location: LCCOMB_X47_Y9_N20
\U1|U0|U0|spi_program~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~38_combout\ = (\U1|U0|U0|Add1~16_combout\ & (!\U1|U0|U0|Add1~8_combout\ & ((!\U1|U0|U0|Add1~17_combout\)))) # (!\U1|U0|U0|Add1~16_combout\ & (\U1|U0|U0|Add1~8_combout\ & (\U1|U0|U0|Add1~15_combout\ $ (!\U1|U0|U0|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~16_combout\,
	datab => \U1|U0|U0|Add1~8_combout\,
	datac => \U1|U0|U0|Add1~15_combout\,
	datad => \U1|U0|U0|Add1~17_combout\,
	combout => \U1|U0|U0|spi_program~38_combout\);

-- Location: LCCOMB_X47_Y9_N4
\U1|U0|U0|spi_program~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~40_combout\ = (!\U1|U0|U0|Add1~14_combout\ & ((\U1|U0|U0|Add1~13_combout\ & ((\U1|U0|U0|spi_program~38_combout\))) # (!\U1|U0|U0|Add1~13_combout\ & (\U1|U0|U0|spi_program~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|spi_program~39_combout\,
	datab => \U1|U0|U0|Add1~13_combout\,
	datac => \U1|U0|U0|spi_program~38_combout\,
	datad => \U1|U0|U0|Add1~14_combout\,
	combout => \U1|U0|U0|spi_program~40_combout\);

-- Location: LCCOMB_X47_Y9_N22
\U1|U0|U0|spi_program~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~41_combout\ = (\U1|U0|U0|Add1~17_combout\ & (!\U1|U0|U0|Add1~16_combout\ & (\U1|U0|U0|Add1~15_combout\))) # (!\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~8_combout\ & (\U1|U0|U0|Add1~16_combout\ $ (!\U1|U0|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~16_combout\,
	datab => \U1|U0|U0|Add1~17_combout\,
	datac => \U1|U0|U0|Add1~15_combout\,
	datad => \U1|U0|U0|Add1~8_combout\,
	combout => \U1|U0|U0|spi_program~41_combout\);

-- Location: LCCOMB_X47_Y9_N8
\U1|U0|U0|spi_program~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~42_combout\ = (\U1|U0|U0|spi_program~40_combout\) # ((!\U1|U0|U0|Add1~13_combout\ & (\U1|U0|U0|spi_program~41_combout\ & \U1|U0|U0|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|spi_program~40_combout\,
	datab => \U1|U0|U0|Add1~13_combout\,
	datac => \U1|U0|U0|spi_program~41_combout\,
	datad => \U1|U0|U0|Add1~14_combout\,
	combout => \U1|U0|U0|spi_program~42_combout\);

-- Location: FF_X47_Y9_N9
\U1|U0|U0|current_instruction.immediate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|spi_program~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.immediate\(0));

-- Location: LCCOMB_X47_Y9_N12
\U1|U0|U0|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~17_combout\ = (\U1|U0|U0|Equal1~2_combout\ & (\U1|U0|U0|current_instruction.immediate\(0))) # (!\U1|U0|U0|Equal1~2_combout\ & ((\U1|U0|U0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Equal1~2_combout\,
	datab => \U1|U0|U0|current_instruction.immediate\(0),
	datac => \U1|U0|U0|Add1~0_combout\,
	combout => \U1|U0|U0|Add1~17_combout\);

-- Location: LCCOMB_X45_Y9_N28
\U1|U0|U0|spi_program~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~28_combout\ = (!\U1|U0|U0|Add1~8_combout\ & ((\U1|U0|U0|Add1~17_combout\ & (!\U1|U0|U0|Add1~15_combout\ & \U1|U0|U0|Add1~16_combout\)) # (!\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~17_combout\,
	datab => \U1|U0|U0|Add1~15_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|Add1~8_combout\,
	combout => \U1|U0|U0|spi_program~28_combout\);

-- Location: LCCOMB_X45_Y9_N2
\U1|U0|U0|spi_program~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~29_combout\ = (\U1|U0|U0|Add1~16_combout\ & (!\U1|U0|U0|Add1~17_combout\ & ((!\U1|U0|U0|Add1~8_combout\)))) # (!\U1|U0|U0|Add1~16_combout\ & (\U1|U0|U0|Add1~8_combout\ & (\U1|U0|U0|Add1~17_combout\ $ (\U1|U0|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~17_combout\,
	datab => \U1|U0|U0|Add1~15_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|Add1~8_combout\,
	combout => \U1|U0|U0|spi_program~29_combout\);

-- Location: LCCOMB_X45_Y9_N10
\U1|U0|U0|spi_program~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~30_combout\ = (!\U1|U0|U0|Add1~14_combout\ & ((\U1|U0|U0|Add1~13_combout\ & (\U1|U0|U0|spi_program~28_combout\)) # (!\U1|U0|U0|Add1~13_combout\ & ((\U1|U0|U0|spi_program~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|spi_program~28_combout\,
	datab => \U1|U0|U0|spi_program~29_combout\,
	datac => \U1|U0|U0|Add1~13_combout\,
	datad => \U1|U0|U0|Add1~14_combout\,
	combout => \U1|U0|U0|spi_program~30_combout\);

-- Location: LCCOMB_X45_Y9_N12
\U1|U0|U0|spi_program~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~31_combout\ = (\U1|U0|U0|Add1~15_combout\) # ((\U1|U0|U0|Add1~16_combout\ & ((\U1|U0|U0|Add1~8_combout\) # (!\U1|U0|U0|Add1~17_combout\))) # (!\U1|U0|U0|Add1~16_combout\ & ((\U1|U0|U0|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~16_combout\,
	datab => \U1|U0|U0|Add1~8_combout\,
	datac => \U1|U0|U0|Add1~17_combout\,
	datad => \U1|U0|U0|Add1~15_combout\,
	combout => \U1|U0|U0|spi_program~31_combout\);

-- Location: LCCOMB_X45_Y9_N24
\U1|U0|U0|spi_program~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~32_combout\ = (\U1|U0|U0|spi_program~30_combout\) # ((!\U1|U0|U0|Add1~13_combout\ & (!\U1|U0|U0|spi_program~31_combout\ & \U1|U0|U0|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~13_combout\,
	datab => \U1|U0|U0|spi_program~30_combout\,
	datac => \U1|U0|U0|spi_program~31_combout\,
	datad => \U1|U0|U0|Add1~14_combout\,
	combout => \U1|U0|U0|spi_program~32_combout\);

-- Location: FF_X45_Y9_N25
\U1|U0|U0|current_instruction.immediate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|spi_program~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.immediate\(1));

-- Location: LCCOMB_X47_Y9_N0
\U1|U0|U0|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~15_combout\ = (\U1|U0|U0|Equal1~2_combout\ & (\U1|U0|U0|current_instruction.immediate\(1))) # (!\U1|U0|U0|Equal1~2_combout\ & ((\U1|U0|U0|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|current_instruction.immediate\(1),
	datac => \U1|U0|U0|Equal1~2_combout\,
	datad => \U1|U0|U0|Add1~2_combout\,
	combout => \U1|U0|U0|Add1~15_combout\);

-- Location: FF_X46_Y9_N13
\U1|U0|U0|pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|Add1~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|pc\(1));

-- Location: LCCOMB_X46_Y9_N14
\U1|U0|U0|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~4_combout\ = (\U1|U0|U0|pc\(2) & (\U1|U0|U0|Add1~3\ $ (GND))) # (!\U1|U0|U0|pc\(2) & (!\U1|U0|U0|Add1~3\ & VCC))
-- \U1|U0|U0|Add1~5\ = CARRY((\U1|U0|U0|pc\(2) & !\U1|U0|U0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|pc\(2),
	datad => VCC,
	cin => \U1|U0|U0|Add1~3\,
	combout => \U1|U0|U0|Add1~4_combout\,
	cout => \U1|U0|U0|Add1~5\);

-- Location: LCCOMB_X44_Y9_N30
\U1|U0|U0|spi_program~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~35_combout\ = (\U1|U0|U0|Add1~14_combout\ & (((!\U1|U0|U0|Add1~15_combout\ & !\U1|U0|U0|Add1~8_combout\)) # (!\U1|U0|U0|Add1~17_combout\))) # (!\U1|U0|U0|Add1~14_combout\ & (!\U1|U0|U0|Add1~17_combout\ & 
-- ((!\U1|U0|U0|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~14_combout\,
	datab => \U1|U0|U0|Add1~17_combout\,
	datac => \U1|U0|U0|Add1~15_combout\,
	datad => \U1|U0|U0|Add1~8_combout\,
	combout => \U1|U0|U0|spi_program~35_combout\);

-- Location: LCCOMB_X44_Y9_N18
\U1|U0|U0|spi_program~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~33_combout\ = (\U1|U0|U0|Add1~14_combout\ & (!\U1|U0|U0|Add1~17_combout\ & ((!\U1|U0|U0|Add1~15_combout\) # (!\U1|U0|U0|Add1~8_combout\)))) # (!\U1|U0|U0|Add1~14_combout\ & (\U1|U0|U0|Add1~8_combout\ $ (\U1|U0|U0|Add1~17_combout\ $ 
-- (!\U1|U0|U0|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~14_combout\,
	datab => \U1|U0|U0|Add1~8_combout\,
	datac => \U1|U0|U0|Add1~17_combout\,
	datad => \U1|U0|U0|Add1~15_combout\,
	combout => \U1|U0|U0|spi_program~33_combout\);

-- Location: LCCOMB_X44_Y9_N4
\U1|U0|U0|spi_program~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~36_combout\ = (\U1|U0|U0|Add1~13_combout\ & (!\U1|U0|U0|spi_program~35_combout\)) # (!\U1|U0|U0|Add1~13_combout\ & ((\U1|U0|U0|Add1~16_combout\ & (\U1|U0|U0|spi_program~35_combout\ & !\U1|U0|U0|spi_program~33_combout\)) # 
-- (!\U1|U0|U0|Add1~16_combout\ & ((\U1|U0|U0|spi_program~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|spi_program~35_combout\,
	datab => \U1|U0|U0|Add1~16_combout\,
	datac => \U1|U0|U0|spi_program~33_combout\,
	datad => \U1|U0|U0|Add1~13_combout\,
	combout => \U1|U0|U0|spi_program~36_combout\);

-- Location: LCCOMB_X44_Y9_N12
\U1|U0|U0|spi_program~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~34_combout\ = (\U1|U0|U0|Add1~16_combout\ & (((\U1|U0|U0|spi_program~33_combout\ & !\U1|U0|U0|Add1~8_combout\)))) # (!\U1|U0|U0|Add1~16_combout\ & (!\U1|U0|U0|Add1~15_combout\ & (!\U1|U0|U0|spi_program~33_combout\ & 
-- \U1|U0|U0|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~15_combout\,
	datab => \U1|U0|U0|Add1~16_combout\,
	datac => \U1|U0|U0|spi_program~33_combout\,
	datad => \U1|U0|U0|Add1~8_combout\,
	combout => \U1|U0|U0|spi_program~34_combout\);

-- Location: LCCOMB_X44_Y9_N0
\U1|U0|U0|spi_program~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~37_combout\ = (\U1|U0|U0|spi_program~36_combout\ & (((!\U1|U0|U0|Add1~14_combout\ & \U1|U0|U0|spi_program~34_combout\)) # (!\U1|U0|U0|Add1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~14_combout\,
	datab => \U1|U0|U0|Add1~13_combout\,
	datac => \U1|U0|U0|spi_program~36_combout\,
	datad => \U1|U0|U0|spi_program~34_combout\,
	combout => \U1|U0|U0|spi_program~37_combout\);

-- Location: FF_X44_Y9_N1
\U1|U0|U0|current_instruction.immediate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|spi_program~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.immediate\(2));

-- Location: LCCOMB_X46_Y9_N2
\U1|U0|U0|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~16_combout\ = (\U1|U0|U0|Equal1~2_combout\ & ((\U1|U0|U0|current_instruction.immediate\(2)))) # (!\U1|U0|U0|Equal1~2_combout\ & (\U1|U0|U0|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~4_combout\,
	datac => \U1|U0|U0|Equal1~2_combout\,
	datad => \U1|U0|U0|current_instruction.immediate\(2),
	combout => \U1|U0|U0|Add1~16_combout\);

-- Location: FF_X46_Y9_N15
\U1|U0|U0|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|Add1~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|pc\(2));

-- Location: LCCOMB_X46_Y9_N16
\U1|U0|U0|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~6_combout\ = (\U1|U0|U0|pc\(3) & (!\U1|U0|U0|Add1~5\)) # (!\U1|U0|U0|pc\(3) & ((\U1|U0|U0|Add1~5\) # (GND)))
-- \U1|U0|U0|Add1~7\ = CARRY((!\U1|U0|U0|Add1~5\) # (!\U1|U0|U0|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|pc\(3),
	datad => VCC,
	cin => \U1|U0|U0|Add1~5\,
	combout => \U1|U0|U0|Add1~6_combout\,
	cout => \U1|U0|U0|Add1~7\);

-- Location: LCCOMB_X44_Y9_N24
\U1|U0|U0|spi_program~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~18_combout\ = (\U1|U0|U0|Add1~14_combout\ & ((\U1|U0|U0|Add1~15_combout\ & ((!\U1|U0|U0|Add1~16_combout\))) # (!\U1|U0|U0|Add1~15_combout\ & (\U1|U0|U0|Add1~17_combout\ & \U1|U0|U0|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~15_combout\,
	datab => \U1|U0|U0|Add1~17_combout\,
	datac => \U1|U0|U0|Add1~14_combout\,
	datad => \U1|U0|U0|Add1~16_combout\,
	combout => \U1|U0|U0|spi_program~18_combout\);

-- Location: LCCOMB_X44_Y9_N6
\U1|U0|U0|spi_program~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~17_combout\ = (\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~16_combout\ & ((\U1|U0|U0|Add1~15_combout\) # (!\U1|U0|U0|Add1~14_combout\)))) # (!\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~15_combout\ $ (\U1|U0|U0|Add1~14_combout\ $ 
-- (\U1|U0|U0|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~15_combout\,
	datab => \U1|U0|U0|Add1~17_combout\,
	datac => \U1|U0|U0|Add1~14_combout\,
	datad => \U1|U0|U0|Add1~16_combout\,
	combout => \U1|U0|U0|spi_program~17_combout\);

-- Location: LCCOMB_X44_Y9_N8
\U1|U0|U0|spi_program~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~19_combout\ = (!\U1|U0|U0|Add1~13_combout\ & ((\U1|U0|U0|Add1~8_combout\ & ((\U1|U0|U0|spi_program~17_combout\))) # (!\U1|U0|U0|Add1~8_combout\ & (\U1|U0|U0|spi_program~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|spi_program~18_combout\,
	datab => \U1|U0|U0|spi_program~17_combout\,
	datac => \U1|U0|U0|Add1~8_combout\,
	datad => \U1|U0|U0|Add1~13_combout\,
	combout => \U1|U0|U0|spi_program~19_combout\);

-- Location: FF_X44_Y9_N9
\U1|U0|U0|current_instruction.immediate[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|spi_program~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.immediate\(3));

-- Location: LCCOMB_X46_Y9_N30
\U1|U0|U0|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~8_combout\ = (\U1|U0|U0|Equal1~2_combout\ & ((\U1|U0|U0|current_instruction.immediate\(3)))) # (!\U1|U0|U0|Equal1~2_combout\ & (\U1|U0|U0|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~6_combout\,
	datac => \U1|U0|U0|Equal1~2_combout\,
	datad => \U1|U0|U0|current_instruction.immediate\(3),
	combout => \U1|U0|U0|Add1~8_combout\);

-- Location: FF_X46_Y9_N17
\U1|U0|U0|pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|Add1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|pc\(3));

-- Location: LCCOMB_X46_Y9_N18
\U1|U0|U0|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~9_combout\ = (\U1|U0|U0|pc\(4) & (\U1|U0|U0|Add1~7\ $ (GND))) # (!\U1|U0|U0|pc\(4) & (!\U1|U0|U0|Add1~7\ & VCC))
-- \U1|U0|U0|Add1~10\ = CARRY((\U1|U0|U0|pc\(4) & !\U1|U0|U0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|pc\(4),
	datad => VCC,
	cin => \U1|U0|U0|Add1~7\,
	combout => \U1|U0|U0|Add1~9_combout\,
	cout => \U1|U0|U0|Add1~10\);

-- Location: LCCOMB_X44_Y9_N16
\U1|U0|U0|spi_program~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~24_combout\ = (!\U1|U0|U0|Add1~17_combout\ & ((\U1|U0|U0|Equal1~2_combout\ & (!\U1|U0|U0|current_instruction.immediate\(3))) # (!\U1|U0|U0|Equal1~2_combout\ & ((!\U1|U0|U0|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Equal1~2_combout\,
	datab => \U1|U0|U0|current_instruction.immediate\(3),
	datac => \U1|U0|U0|Add1~17_combout\,
	datad => \U1|U0|U0|Add1~6_combout\,
	combout => \U1|U0|U0|spi_program~24_combout\);

-- Location: LCCOMB_X44_Y9_N14
\U1|U0|U0|spi_program~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~25_combout\ = (\U1|U0|U0|spi_program~24_combout\ & (((\U1|U0|U0|Add1~15_combout\ & !\U1|U0|U0|Add1~16_combout\)) # (!\U1|U0|U0|Add1~13_combout\))) # (!\U1|U0|U0|spi_program~24_combout\ & (((!\U1|U0|U0|Add1~16_combout\ & 
-- !\U1|U0|U0|Add1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|spi_program~24_combout\,
	datab => \U1|U0|U0|Add1~15_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|Add1~13_combout\,
	combout => \U1|U0|U0|spi_program~25_combout\);

-- Location: LCCOMB_X44_Y9_N26
\U1|U0|U0|spi_program~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~23_combout\ = (\U1|U0|U0|Add1~14_combout\ & ((\U1|U0|U0|Add1~16_combout\ & ((\U1|U0|U0|Add1~15_combout\))) # (!\U1|U0|U0|Add1~16_combout\ & (\U1|U0|U0|Add1~17_combout\)))) # (!\U1|U0|U0|Add1~14_combout\ & (!\U1|U0|U0|Add1~17_combout\ 
-- & (!\U1|U0|U0|Add1~16_combout\ & \U1|U0|U0|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~14_combout\,
	datab => \U1|U0|U0|Add1~17_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|Add1~15_combout\,
	combout => \U1|U0|U0|spi_program~23_combout\);

-- Location: LCCOMB_X44_Y9_N28
\U1|U0|U0|spi_program~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~26_combout\ = (\U1|U0|U0|Add1~13_combout\ & (((!\U1|U0|U0|Add1~17_combout\)))) # (!\U1|U0|U0|Add1~13_combout\ & ((\U1|U0|U0|Add1~8_combout\) # ((\U1|U0|U0|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~8_combout\,
	datab => \U1|U0|U0|Add1~17_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|Add1~13_combout\,
	combout => \U1|U0|U0|spi_program~26_combout\);

-- Location: LCCOMB_X44_Y9_N10
\U1|U0|U0|spi_program~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~27_combout\ = (\U1|U0|U0|spi_program~25_combout\ & ((\U1|U0|U0|spi_program~23_combout\ & ((\U1|U0|U0|spi_program~26_combout\))) # (!\U1|U0|U0|spi_program~23_combout\ & (\U1|U0|U0|Add1~13_combout\ & 
-- !\U1|U0|U0|spi_program~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|spi_program~25_combout\,
	datab => \U1|U0|U0|spi_program~23_combout\,
	datac => \U1|U0|U0|Add1~13_combout\,
	datad => \U1|U0|U0|spi_program~26_combout\,
	combout => \U1|U0|U0|spi_program~27_combout\);

-- Location: FF_X44_Y9_N11
\U1|U0|U0|current_instruction.immediate[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|spi_program~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.immediate\(4));

-- Location: LCCOMB_X45_Y9_N6
\U1|U0|U0|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~14_combout\ = (\U1|U0|U0|Equal1~2_combout\ & ((\U1|U0|U0|current_instruction.immediate\(4)))) # (!\U1|U0|U0|Equal1~2_combout\ & (\U1|U0|U0|Add1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~9_combout\,
	datab => \U1|U0|U0|Equal1~2_combout\,
	datac => \U1|U0|U0|current_instruction.immediate\(4),
	combout => \U1|U0|U0|Add1~14_combout\);

-- Location: FF_X46_Y9_N19
\U1|U0|U0|pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|Add1~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|pc\(4));

-- Location: LCCOMB_X46_Y9_N20
\U1|U0|U0|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~11_combout\ = \U1|U0|U0|Add1~10\ $ (\U1|U0|U0|pc\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|pc\(5),
	cin => \U1|U0|U0|Add1~10\,
	combout => \U1|U0|U0|Add1~11_combout\);

-- Location: LCCOMB_X45_Y9_N0
\U1|U0|U0|spi_program~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~20_combout\ = \U1|U0|U0|Add1~16_combout\ $ (((\U1|U0|U0|Add1~17_combout\ & ((!\U1|U0|U0|Add1~8_combout\) # (!\U1|U0|U0|Add1~15_combout\))) # (!\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|Add1~15_combout\ $ 
-- (!\U1|U0|U0|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~17_combout\,
	datab => \U1|U0|U0|Add1~15_combout\,
	datac => \U1|U0|U0|Add1~16_combout\,
	datad => \U1|U0|U0|Add1~8_combout\,
	combout => \U1|U0|U0|spi_program~20_combout\);

-- Location: LCCOMB_X45_Y9_N26
\U1|U0|U0|spi_program~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~21_combout\ = (\U1|U0|U0|spi_program~20_combout\ & (((!\U1|U0|U0|Add1~13_combout\)))) # (!\U1|U0|U0|spi_program~20_combout\ & (!\U1|U0|U0|Add1~16_combout\ & (\U1|U0|U0|Add1~13_combout\ & \U1|U0|U0|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~16_combout\,
	datab => \U1|U0|U0|spi_program~20_combout\,
	datac => \U1|U0|U0|Add1~13_combout\,
	datad => \U1|U0|U0|Add1~15_combout\,
	combout => \U1|U0|U0|spi_program~21_combout\);

-- Location: LCCOMB_X45_Y9_N22
\U1|U0|U0|spi_program~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~22_combout\ = (\U1|U0|U0|Add1~14_combout\ & (!\U1|U0|U0|Add1~13_combout\ & ((\U1|U0|U0|spi_program~11_combout\)))) # (!\U1|U0|U0|Add1~14_combout\ & (((\U1|U0|U0|spi_program~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~13_combout\,
	datab => \U1|U0|U0|spi_program~21_combout\,
	datac => \U1|U0|U0|spi_program~11_combout\,
	datad => \U1|U0|U0|Add1~14_combout\,
	combout => \U1|U0|U0|spi_program~22_combout\);

-- Location: FF_X45_Y9_N23
\U1|U0|U0|current_instruction.immediate[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|spi_program~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.immediate\(5));

-- Location: LCCOMB_X45_Y9_N8
\U1|U0|U0|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Add1~13_combout\ = (\U1|U0|U0|Equal1~2_combout\ & ((\U1|U0|U0|current_instruction.immediate\(5)))) # (!\U1|U0|U0|Equal1~2_combout\ & (\U1|U0|U0|Add1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|Add1~11_combout\,
	datac => \U1|U0|U0|current_instruction.immediate\(5),
	datad => \U1|U0|U0|Equal1~2_combout\,
	combout => \U1|U0|U0|Add1~13_combout\);

-- Location: LCCOMB_X46_Y9_N22
\U1|U0|U0|spi_program~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~9_combout\ = (!\U1|U0|U0|Add1~16_combout\ & (!\U1|U0|U0|Add1~15_combout\ & ((\U1|U0|U0|Add1~17_combout\) # (!\U1|U0|U0|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~17_combout\,
	datab => \U1|U0|U0|Add1~16_combout\,
	datac => \U1|U0|U0|Add1~8_combout\,
	datad => \U1|U0|U0|Add1~15_combout\,
	combout => \U1|U0|U0|spi_program~9_combout\);

-- Location: LCCOMB_X46_Y9_N0
\U1|U0|U0|spi_program~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~12_combout\ = (\U1|U0|U0|Add1~14_combout\ & (\U1|U0|U0|spi_program~10_combout\)) # (!\U1|U0|U0|Add1~14_combout\ & ((\U1|U0|U0|spi_program~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|Add1~14_combout\,
	datac => \U1|U0|U0|spi_program~10_combout\,
	datad => \U1|U0|U0|spi_program~11_combout\,
	combout => \U1|U0|U0|spi_program~12_combout\);

-- Location: LCCOMB_X46_Y9_N6
\U1|U0|U0|spi_program~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~13_combout\ = (\U1|U0|U0|Add1~13_combout\ & (!\U1|U0|U0|Add1~14_combout\ & (\U1|U0|U0|spi_program~9_combout\))) # (!\U1|U0|U0|Add1~13_combout\ & (((\U1|U0|U0|spi_program~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~13_combout\,
	datab => \U1|U0|U0|Add1~14_combout\,
	datac => \U1|U0|U0|spi_program~9_combout\,
	datad => \U1|U0|U0|spi_program~12_combout\,
	combout => \U1|U0|U0|spi_program~13_combout\);

-- Location: FF_X46_Y9_N7
\U1|U0|U0|current_instruction.opcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|U0|U0|spi_program~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.opcode\(1));

-- Location: LCCOMB_X50_Y8_N22
\U1|U0|U0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal1~0_combout\ = (!\U1|U0|U0|current_instruction.opcode\(1) & !\U1|U0|U0|current_instruction.opcode\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|current_instruction.opcode\(1),
	datab => \U1|U0|U0|current_instruction.opcode\(2),
	combout => \U1|U0|U0|Equal1~0_combout\);

-- Location: LCCOMB_X50_Y8_N8
\U1|U0|U0|u0|rx_valid_next~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|rx_valid_next~3_combout\ = (\U1|U0|U0|u0|spi_clk~q\ & (\U1|U0|U0|u0|state_next~2_combout\ & (!\U1|U0|U0|u0|spi_clk_last~q\ & \U1|U0|U0|u0|state.ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|spi_clk~q\,
	datab => \U1|U0|U0|u0|state_next~2_combout\,
	datac => \U1|U0|U0|u0|spi_clk_last~q\,
	datad => \U1|U0|U0|u0|state.ACTIVE~q\,
	combout => \U1|U0|U0|u0|rx_valid_next~3_combout\);

-- Location: LCCOMB_X50_Y8_N2
\U1|U0|U0|u0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector2~0_combout\ = (\U1|U0|U0|Equal1~0_combout\ & ((\U1|U0|U0|u0|rx_valid_next~3_combout\) # ((\U1|U0|U0|u0|always2~0_combout\ & !\U1|U0|U0|u0|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Equal1~0_combout\,
	datab => \U1|U0|U0|u0|rx_valid_next~3_combout\,
	datac => \U1|U0|U0|u0|always2~0_combout\,
	datad => \U1|U0|U0|u0|state.IDLE~q\,
	combout => \U1|U0|U0|u0|Selector2~0_combout\);

-- Location: LCCOMB_X50_Y9_N8
\U1|U0|U0|u0|state.TO_ACTIVE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|state.TO_ACTIVE~feeder_combout\ = \U1|U0|U0|u0|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|u0|Selector2~0_combout\,
	combout => \U1|U0|U0|u0|state.TO_ACTIVE~feeder_combout\);

-- Location: FF_X50_Y9_N9
\U1|U0|U0|u0|state.TO_ACTIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|state.TO_ACTIVE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|state.TO_ACTIVE~q\);

-- Location: LCCOMB_X49_Y8_N12
\U1|U0|U0|u0|tx_data_r[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|tx_data_r[1]~feeder_combout\ = \U1|U0|U0|current_instruction.immediate\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|current_instruction.immediate\(1),
	combout => \U1|U0|U0|u0|tx_data_r[1]~feeder_combout\);

-- Location: FF_X49_Y8_N13
\U1|U0|U0|u0|tx_data_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|tx_data_r[1]~feeder_combout\,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|tx_data_r\(1));

-- Location: FF_X49_Y8_N27
\U1|U0|U0|u0|tx_data_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(0),
	sload => VCC,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|tx_data_r\(0));

-- Location: LCCOMB_X49_Y8_N26
\U1|U0|U0|u0|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Mux0~2_combout\ = (\U1|U0|U0|u0|count\(0) & ((\U1|U0|U0|u0|tx_data_r\(1)) # ((\U1|U0|U0|u0|count\(1))))) # (!\U1|U0|U0|u0|count\(0) & (((\U1|U0|U0|u0|tx_data_r\(0) & !\U1|U0|U0|u0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|tx_data_r\(1),
	datab => \U1|U0|U0|u0|count\(0),
	datac => \U1|U0|U0|u0|tx_data_r\(0),
	datad => \U1|U0|U0|u0|count\(1),
	combout => \U1|U0|U0|u0|Mux0~2_combout\);

-- Location: LCCOMB_X49_Y8_N4
\U1|U0|U0|u0|tx_data_r[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|tx_data_r[3]~feeder_combout\ = \U1|U0|U0|current_instruction.immediate\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|current_instruction.immediate\(3),
	combout => \U1|U0|U0|u0|tx_data_r[3]~feeder_combout\);

-- Location: FF_X49_Y8_N5
\U1|U0|U0|u0|tx_data_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|tx_data_r[3]~feeder_combout\,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|tx_data_r\(3));

-- Location: FF_X49_Y8_N15
\U1|U0|U0|u0|tx_data_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(2),
	sload => VCC,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|tx_data_r\(2));

-- Location: LCCOMB_X49_Y8_N14
\U1|U0|U0|u0|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Mux0~3_combout\ = (\U1|U0|U0|u0|Mux0~2_combout\ & ((\U1|U0|U0|u0|tx_data_r\(3)) # ((!\U1|U0|U0|u0|count\(1))))) # (!\U1|U0|U0|u0|Mux0~2_combout\ & (((\U1|U0|U0|u0|tx_data_r\(2) & \U1|U0|U0|u0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|Mux0~2_combout\,
	datab => \U1|U0|U0|u0|tx_data_r\(3),
	datac => \U1|U0|U0|u0|tx_data_r\(2),
	datad => \U1|U0|U0|u0|count\(1),
	combout => \U1|U0|U0|u0|Mux0~3_combout\);

-- Location: FF_X49_Y8_N11
\U1|U0|U0|u0|tx_data_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(4),
	sload => VCC,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|tx_data_r\(4));

-- Location: LCCOMB_X49_Y8_N28
\U1|U0|U0|u0|tx_data_r[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|tx_data_r[5]~feeder_combout\ = \U1|U0|U0|current_instruction.immediate\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|current_instruction.immediate\(5),
	combout => \U1|U0|U0|u0|tx_data_r[5]~feeder_combout\);

-- Location: FF_X49_Y8_N29
\U1|U0|U0|u0|tx_data_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|tx_data_r[5]~feeder_combout\,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|tx_data_r\(5));

-- Location: LCCOMB_X49_Y8_N10
\U1|U0|U0|u0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Mux0~0_combout\ = (\U1|U0|U0|u0|count\(1) & (\U1|U0|U0|u0|count\(0))) # (!\U1|U0|U0|u0|count\(1) & ((\U1|U0|U0|u0|count\(0) & ((\U1|U0|U0|u0|tx_data_r\(5)))) # (!\U1|U0|U0|u0|count\(0) & (\U1|U0|U0|u0|tx_data_r\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|count\(1),
	datab => \U1|U0|U0|u0|count\(0),
	datac => \U1|U0|U0|u0|tx_data_r\(4),
	datad => \U1|U0|U0|u0|tx_data_r\(5),
	combout => \U1|U0|U0|u0|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y9_N22
\U1|U0|U0|spi_program~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~45_combout\ = (!\U1|U0|U0|Add1~14_combout\ & (\U1|U0|U0|Add1~13_combout\ & (\U1|U0|U0|spi_program~46_combout\ & \U1|U0|U0|spi_program~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~14_combout\,
	datab => \U1|U0|U0|Add1~13_combout\,
	datac => \U1|U0|U0|spi_program~46_combout\,
	datad => \U1|U0|U0|spi_program~24_combout\,
	combout => \U1|U0|U0|spi_program~45_combout\);

-- Location: FF_X44_Y9_N23
\U1|U0|U0|current_instruction.immediate[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|spi_program~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.immediate\(7));

-- Location: FF_X49_Y8_N17
\U1|U0|U0|u0|tx_data_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(7),
	sload => VCC,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|tx_data_r\(7));

-- Location: LCCOMB_X45_Y9_N16
\U1|U0|U0|spi_program~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~43_combout\ = (\U1|U0|U0|Add1~15_combout\ & (!\U1|U0|U0|Add1~14_combout\ & (\U1|U0|U0|Add1~13_combout\ $ (\U1|U0|U0|Add1~8_combout\)))) # (!\U1|U0|U0|Add1~15_combout\ & (!\U1|U0|U0|Add1~13_combout\ & (\U1|U0|U0|Add1~14_combout\ & 
-- !\U1|U0|U0|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~13_combout\,
	datab => \U1|U0|U0|Add1~15_combout\,
	datac => \U1|U0|U0|Add1~14_combout\,
	datad => \U1|U0|U0|Add1~8_combout\,
	combout => \U1|U0|U0|spi_program~43_combout\);

-- Location: LCCOMB_X45_Y9_N14
\U1|U0|U0|spi_program~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|spi_program~44_combout\ = (!\U1|U0|U0|Add1~17_combout\ & (\U1|U0|U0|spi_program~43_combout\ & !\U1|U0|U0|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Add1~17_combout\,
	datac => \U1|U0|U0|spi_program~43_combout\,
	datad => \U1|U0|U0|Add1~16_combout\,
	combout => \U1|U0|U0|spi_program~44_combout\);

-- Location: FF_X45_Y9_N15
\U1|U0|U0|current_instruction.immediate[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|spi_program~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|current_instruction.immediate\(6));

-- Location: FF_X49_Y8_N23
\U1|U0|U0|u0|tx_data_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(6),
	sload => VCC,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|tx_data_r\(6));

-- Location: LCCOMB_X49_Y8_N22
\U1|U0|U0|u0|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Mux0~1_combout\ = (\U1|U0|U0|u0|Mux0~0_combout\ & ((\U1|U0|U0|u0|tx_data_r\(7)) # ((!\U1|U0|U0|u0|count\(1))))) # (!\U1|U0|U0|u0|Mux0~0_combout\ & (((\U1|U0|U0|u0|tx_data_r\(6) & \U1|U0|U0|u0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|Mux0~0_combout\,
	datab => \U1|U0|U0|u0|tx_data_r\(7),
	datac => \U1|U0|U0|u0|tx_data_r\(6),
	datad => \U1|U0|U0|u0|count\(1),
	combout => \U1|U0|U0|u0|Mux0~1_combout\);

-- Location: LCCOMB_X49_Y8_N2
\U1|U0|U0|u0|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector12~0_combout\ = (\U1|U0|U0|u0|count\(2) & ((\U1|U0|U0|u0|Mux0~1_combout\))) # (!\U1|U0|U0|u0|count\(2) & (\U1|U0|U0|u0|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|count\(2),
	datab => \U1|U0|U0|u0|Mux0~3_combout\,
	datac => \U1|U0|U0|u0|Mux0~1_combout\,
	combout => \U1|U0|U0|u0|Selector12~0_combout\);

-- Location: LCCOMB_X50_Y9_N20
\U1|U0|U0|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal1~3_combout\ = (\U1|U0|U0|current_instruction.opcode\(0) & (!\U1|U0|U0|current_instruction.opcode\(1) & !\U1|U0|U0|current_instruction.opcode\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|current_instruction.opcode\(0),
	datac => \U1|U0|U0|current_instruction.opcode\(1),
	datad => \U1|U0|U0|current_instruction.opcode\(2),
	combout => \U1|U0|U0|Equal1~3_combout\);

-- Location: FF_X50_Y8_N31
\U1|U0|U0|u0|tx_request_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|Equal1~3_combout\,
	sload => VCC,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|tx_request_r~q\);

-- Location: LCCOMB_X50_Y8_N30
\U1|U0|U0|u0|always2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|always2~1_combout\ = (\U1|U0|U0|u0|spi_clk_last~q\ & (\U1|U0|U0|u0|tx_request_r~q\ & !\U1|U0|U0|u0|spi_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|u0|spi_clk_last~q\,
	datac => \U1|U0|U0|u0|tx_request_r~q\,
	datad => \U1|U0|U0|u0|spi_clk~q\,
	combout => \U1|U0|U0|u0|always2~1_combout\);

-- Location: LCCOMB_X50_Y8_N26
\U1|U0|U0|u0|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector12~1_combout\ = ((\U1|U0|U0|u0|always2~1_combout\ & (\U1|U0|U0|u0|Selector12~0_combout\)) # (!\U1|U0|U0|u0|always2~1_combout\ & ((\U1|U0|U0|u0|spi_sdi~q\)))) # (!\U1|U0|U0|u0|state.ACTIVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|Selector12~0_combout\,
	datab => \U1|U0|U0|u0|spi_sdi~q\,
	datac => \U1|U0|U0|u0|always2~1_combout\,
	datad => \U1|U0|U0|u0|state.ACTIVE~q\,
	combout => \U1|U0|U0|u0|Selector12~1_combout\);

-- Location: LCCOMB_X50_Y8_N20
\U1|U0|U0|u0|Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|Selector12~2_combout\ = (\U1|U0|U0|u0|Selector12~1_combout\ & ((\U1|U0|U0|u0|spi_sdi~q\) # ((!\U1|U0|U0|u0|state.TO_ACTIVE~q\ & \U1|U0|U0|u0|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|state.TO_ACTIVE~q\,
	datab => \U1|U0|U0|u0|Selector12~1_combout\,
	datac => \U1|U0|U0|u0|spi_sdi~q\,
	datad => \U1|U0|U0|u0|state.IDLE~q\,
	combout => \U1|U0|U0|u0|Selector12~2_combout\);

-- Location: FF_X50_Y8_N21
\U1|U0|U0|u0|spi_sdi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|spi_sdi~q\);

-- Location: PLL_1
\U0|U0|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \U0|U0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U0|U0|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U0|U0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U0|U0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: FF_X37_Y14_N9
\U0|U1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(1));

-- Location: LCCOMB_X37_Y14_N10
\U0|U1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~0_combout\ = \U0|U1|h_count\(0) $ (VCC)
-- \U0|U1|Add0~1\ = CARRY(\U0|U1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|h_count\(0),
	datad => VCC,
	combout => \U0|U1|Add0~0_combout\,
	cout => \U0|U1|Add0~1\);

-- Location: LCCOMB_X38_Y14_N12
\U0|U1|h_count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~9_combout\ = (\U0|U1|Add0~0_combout\ & \U0|U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~0_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|h_count~9_combout\);

-- Location: FF_X38_Y14_N13
\U0|U1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(0));

-- Location: LCCOMB_X37_Y14_N12
\U0|U1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~2_combout\ = (\U0|U1|h_count\(1) & (!\U0|U1|Add0~1\)) # (!\U0|U1|h_count\(1) & ((\U0|U1|Add0~1\) # (GND)))
-- \U0|U1|Add0~3\ = CARRY((!\U0|U1|Add0~1\) # (!\U0|U1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|h_count\(1),
	datad => VCC,
	cin => \U0|U1|Add0~1\,
	combout => \U0|U1|Add0~2_combout\,
	cout => \U0|U1|Add0~3\);

-- Location: LCCOMB_X37_Y14_N14
\U0|U1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~4_combout\ = (\U0|U1|h_count\(2) & (\U0|U1|Add0~3\ $ (GND))) # (!\U0|U1|h_count\(2) & (!\U0|U1|Add0~3\ & VCC))
-- \U0|U1|Add0~5\ = CARRY((\U0|U1|h_count\(2) & !\U0|U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|h_count\(2),
	datad => VCC,
	cin => \U0|U1|Add0~3\,
	combout => \U0|U1|Add0~4_combout\,
	cout => \U0|U1|Add0~5\);

-- Location: LCCOMB_X37_Y14_N6
\U0|U1|h_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~7_combout\ = (\U0|U1|LessThan0~2_combout\ & \U0|U1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|LessThan0~2_combout\,
	datac => \U0|U1|Add0~4_combout\,
	combout => \U0|U1|h_count~7_combout\);

-- Location: FF_X37_Y14_N7
\U0|U1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(2));

-- Location: LCCOMB_X37_Y14_N16
\U0|U1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~6_combout\ = (\U0|U1|h_count\(3) & (!\U0|U1|Add0~5\)) # (!\U0|U1|h_count\(3) & ((\U0|U1|Add0~5\) # (GND)))
-- \U0|U1|Add0~7\ = CARRY((!\U0|U1|Add0~5\) # (!\U0|U1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|h_count\(3),
	datad => VCC,
	cin => \U0|U1|Add0~5\,
	combout => \U0|U1|Add0~6_combout\,
	cout => \U0|U1|Add0~7\);

-- Location: LCCOMB_X37_Y14_N4
\U0|U1|h_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~6_combout\ = (\U0|U1|LessThan0~2_combout\ & \U0|U1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|LessThan0~2_combout\,
	datad => \U0|U1|Add0~6_combout\,
	combout => \U0|U1|h_count~6_combout\);

-- Location: FF_X37_Y14_N5
\U0|U1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(3));

-- Location: LCCOMB_X37_Y14_N18
\U0|U1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~8_combout\ = (\U0|U1|h_count\(4) & (\U0|U1|Add0~7\ $ (GND))) # (!\U0|U1|h_count\(4) & (!\U0|U1|Add0~7\ & VCC))
-- \U0|U1|Add0~9\ = CARRY((\U0|U1|h_count\(4) & !\U0|U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|h_count\(4),
	datad => VCC,
	cin => \U0|U1|Add0~7\,
	combout => \U0|U1|Add0~8_combout\,
	cout => \U0|U1|Add0~9\);

-- Location: LCCOMB_X38_Y14_N28
\U0|U1|h_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~5_combout\ = (\U0|U1|Add0~8_combout\ & \U0|U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~8_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|h_count~5_combout\);

-- Location: FF_X38_Y14_N29
\U0|U1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(4));

-- Location: LCCOMB_X37_Y14_N20
\U0|U1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~10_combout\ = (\U0|U1|h_count\(5) & (!\U0|U1|Add0~9\)) # (!\U0|U1|h_count\(5) & ((\U0|U1|Add0~9\) # (GND)))
-- \U0|U1|Add0~11\ = CARRY((!\U0|U1|Add0~9\) # (!\U0|U1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|h_count\(5),
	datad => VCC,
	cin => \U0|U1|Add0~9\,
	combout => \U0|U1|Add0~10_combout\,
	cout => \U0|U1|Add0~11\);

-- Location: LCCOMB_X38_Y14_N14
\U0|U1|h_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~0_combout\ = (\U0|U1|Add0~10_combout\ & \U0|U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|Add0~10_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|h_count~0_combout\);

-- Location: FF_X38_Y14_N15
\U0|U1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(5));

-- Location: LCCOMB_X37_Y14_N22
\U0|U1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~12_combout\ = (\U0|U1|h_count\(6) & (\U0|U1|Add0~11\ $ (GND))) # (!\U0|U1|h_count\(6) & (!\U0|U1|Add0~11\ & VCC))
-- \U0|U1|Add0~13\ = CARRY((\U0|U1|h_count\(6) & !\U0|U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|h_count\(6),
	datad => VCC,
	cin => \U0|U1|Add0~11\,
	combout => \U0|U1|Add0~12_combout\,
	cout => \U0|U1|Add0~13\);

-- Location: LCCOMB_X38_Y14_N2
\U0|U1|h_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~4_combout\ = (\U0|U1|Add0~12_combout\ & \U0|U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Add0~12_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|h_count~4_combout\);

-- Location: FF_X38_Y14_N3
\U0|U1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(6));

-- Location: LCCOMB_X37_Y14_N24
\U0|U1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~14_combout\ = (\U0|U1|h_count\(7) & (!\U0|U1|Add0~13\)) # (!\U0|U1|h_count\(7) & ((\U0|U1|Add0~13\) # (GND)))
-- \U0|U1|Add0~15\ = CARRY((!\U0|U1|Add0~13\) # (!\U0|U1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|h_count\(7),
	datad => VCC,
	cin => \U0|U1|Add0~13\,
	combout => \U0|U1|Add0~14_combout\,
	cout => \U0|U1|Add0~15\);

-- Location: LCCOMB_X38_Y14_N20
\U0|U1|h_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~3_combout\ = (\U0|U1|Add0~14_combout\ & \U0|U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|Add0~14_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|h_count~3_combout\);

-- Location: LCCOMB_X38_Y14_N30
\U0|U1|h_count[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count[7]~feeder_combout\ = \U0|U1|h_count~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|h_count~3_combout\,
	combout => \U0|U1|h_count[7]~feeder_combout\);

-- Location: FF_X38_Y14_N31
\U0|U1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(7));

-- Location: LCCOMB_X37_Y14_N26
\U0|U1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~16_combout\ = (\U0|U1|h_count\(8) & (\U0|U1|Add0~15\ $ (GND))) # (!\U0|U1|h_count\(8) & (!\U0|U1|Add0~15\ & VCC))
-- \U0|U1|Add0~17\ = CARRY((\U0|U1|h_count\(8) & !\U0|U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|h_count\(8),
	datad => VCC,
	cin => \U0|U1|Add0~15\,
	combout => \U0|U1|Add0~16_combout\,
	cout => \U0|U1|Add0~17\);

-- Location: LCCOMB_X38_Y14_N10
\U0|U1|h_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~2_combout\ = (\U0|U1|Add0~16_combout\ & \U0|U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|Add0~16_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|h_count~2_combout\);

-- Location: LCCOMB_X38_Y14_N6
\U0|U1|h_count[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count[8]~feeder_combout\ = \U0|U1|h_count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|h_count~2_combout\,
	combout => \U0|U1|h_count[8]~feeder_combout\);

-- Location: FF_X38_Y14_N7
\U0|U1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(8));

-- Location: LCCOMB_X37_Y14_N2
\U0|U1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|LessThan0~0_combout\ = (((!\U0|U1|h_count\(4)) # (!\U0|U1|h_count\(3))) # (!\U0|U1|h_count\(1))) # (!\U0|U1|h_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|h_count\(2),
	datab => \U0|U1|h_count\(1),
	datac => \U0|U1|h_count\(3),
	datad => \U0|U1|h_count\(4),
	combout => \U0|U1|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y14_N0
\U0|U1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|LessThan0~1_combout\ = (\U0|U1|h_count\(7)) # ((\U0|U1|h_count\(5)) # ((!\U0|U1|LessThan0~0_combout\ & \U0|U1|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|LessThan0~0_combout\,
	datab => \U0|U1|h_count\(0),
	datac => \U0|U1|h_count\(7),
	datad => \U0|U1|h_count\(5),
	combout => \U0|U1|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y14_N28
\U0|U1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add0~18_combout\ = \U0|U1|h_count\(9) $ (\U0|U1|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|h_count\(9),
	cin => \U0|U1|Add0~17\,
	combout => \U0|U1|Add0~18_combout\);

-- Location: LCCOMB_X38_Y14_N16
\U0|U1|h_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~1_combout\ = (\U0|U1|Add0~18_combout\ & \U0|U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|Add0~18_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|h_count~1_combout\);

-- Location: LCCOMB_X38_Y14_N8
\U0|U1|h_count[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count[9]~feeder_combout\ = \U0|U1|h_count~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|h_count~1_combout\,
	combout => \U0|U1|h_count[9]~feeder_combout\);

-- Location: FF_X38_Y14_N9
\U0|U1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|h_count[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_count\(9));

-- Location: LCCOMB_X37_Y14_N30
\U0|U1|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|LessThan0~2_combout\ = (((!\U0|U1|LessThan0~1_combout\ & !\U0|U1|h_count\(6))) # (!\U0|U1|h_count\(9))) # (!\U0|U1|h_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|h_count\(8),
	datab => \U0|U1|LessThan0~1_combout\,
	datac => \U0|U1|h_count\(9),
	datad => \U0|U1|h_count\(6),
	combout => \U0|U1|LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y14_N8
\U0|U1|h_count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|h_count~8_combout\ = (\U0|U1|LessThan0~2_combout\ & \U0|U1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|LessThan0~2_combout\,
	datad => \U0|U1|Add0~2_combout\,
	combout => \U0|U1|h_count~8_combout\);

-- Location: LCCOMB_X38_Y14_N24
\U0|U1|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|LessThan6~0_combout\ = (((!\U0|U1|Add0~14_combout\ & !\U0|U1|Add0~16_combout\)) # (!\U0|U1|LessThan0~2_combout\)) # (!\U0|U1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~14_combout\,
	datab => \U0|U1|Add0~18_combout\,
	datac => \U0|U1|Add0~16_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|LessThan6~0_combout\);

-- Location: FF_X37_Y11_N29
\U0|U1|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|h_count~8_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(1));

-- Location: LCCOMB_X38_Y11_N24
\U0|U1|column[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|column[0]~feeder_combout\ = \U0|U1|h_count~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|h_count~9_combout\,
	combout => \U0|U1|column[0]~feeder_combout\);

-- Location: FF_X38_Y11_N25
\U0|U1|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|column[0]~feeder_combout\,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(0));

-- Location: LCCOMB_X38_Y14_N18
\U0|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~0_combout\ = (\U0|U1|column\(1) & \U0|U1|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(1),
	datad => \U0|U1|column\(0),
	combout => \U0|LessThan8~0_combout\);

-- Location: FF_X37_Y11_N7
\U0|U1|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|h_count~6_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(3));

-- Location: FF_X37_Y11_N11
\U0|U1|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|h_count~0_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(5));

-- Location: FF_X37_Y11_N17
\U0|U1|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|h_count~2_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(8));

-- Location: FF_X37_Y11_N19
\U0|U1|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|h_count~1_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(9));

-- Location: LCCOMB_X38_Y11_N18
\U0|LessThan23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan23~0_combout\ = (!\U0|U1|column\(8) & !\U0|U1|column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|column\(8),
	datad => \U0|U1|column\(9),
	combout => \U0|LessThan23~0_combout\);

-- Location: FF_X37_Y11_N27
\U0|U1|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|h_count~4_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(6));

-- Location: FF_X37_Y11_N15
\U0|U1|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|h_count~3_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(7));

-- Location: LCCOMB_X38_Y11_N14
\U0|LessThan26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan26~0_combout\ = (\U0|U1|column\(6) & \U0|U1|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|column\(6),
	datad => \U0|U1|column\(7),
	combout => \U0|LessThan26~0_combout\);

-- Location: FF_X37_Y11_N9
\U0|U1|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|h_count~5_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(4));

-- Location: LCCOMB_X38_Y11_N26
\U0|FSM~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~11_combout\ = (\U0|U1|column\(5)) # (((!\U0|U1|column\(4)) # (!\U0|LessThan26~0_combout\)) # (!\U0|LessThan23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(5),
	datab => \U0|LessThan23~0_combout\,
	datac => \U0|LessThan26~0_combout\,
	datad => \U0|U1|column\(4),
	combout => \U0|FSM~11_combout\);

-- Location: FF_X37_Y11_N31
\U0|U1|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|h_count~7_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|column\(2));

-- Location: LCCOMB_X38_Y11_N20
\U0|FSM~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~12_combout\ = (\U0|FSM~11_combout\) # ((\U0|U1|column\(3) & ((\U0|U1|column\(2)))) # (!\U0|U1|column\(3) & (!\U0|LessThan8~0_combout\ & !\U0|U1|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan8~0_combout\,
	datab => \U0|U1|column\(3),
	datac => \U0|FSM~11_combout\,
	datad => \U0|U1|column\(2),
	combout => \U0|FSM~12_combout\);

-- Location: FF_X38_Y9_N1
\U0|U1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(3));

-- Location: LCCOMB_X38_Y9_N12
\U0|U1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~0_combout\ = \U0|U1|v_count\(0) $ (VCC)
-- \U0|U1|Add1~1\ = CARRY(\U0|U1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|v_count\(0),
	datad => VCC,
	combout => \U0|U1|Add1~0_combout\,
	cout => \U0|U1|Add1~1\);

-- Location: LCCOMB_X38_Y9_N8
\U0|U1|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~30_combout\ = (\U0|U1|Add1~20_combout\ & ((\U0|U1|Add1~0_combout\) # ((\U0|U1|LessThan0~2_combout\ & \U0|U1|v_count\(0))))) # (!\U0|U1|Add1~20_combout\ & (\U0|U1|LessThan0~2_combout\ & (\U0|U1|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~20_combout\,
	datab => \U0|U1|LessThan0~2_combout\,
	datac => \U0|U1|v_count\(0),
	datad => \U0|U1|Add1~0_combout\,
	combout => \U0|U1|Add1~30_combout\);

-- Location: FF_X38_Y9_N9
\U0|U1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(0));

-- Location: LCCOMB_X38_Y9_N14
\U0|U1|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~2_combout\ = (\U0|U1|v_count\(1) & (!\U0|U1|Add1~1\)) # (!\U0|U1|v_count\(1) & ((\U0|U1|Add1~1\) # (GND)))
-- \U0|U1|Add1~3\ = CARRY((!\U0|U1|Add1~1\) # (!\U0|U1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|v_count\(1),
	datad => VCC,
	cin => \U0|U1|Add1~1\,
	combout => \U0|U1|Add1~2_combout\,
	cout => \U0|U1|Add1~3\);

-- Location: LCCOMB_X37_Y9_N10
\U0|U1|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~29_combout\ = (\U0|U1|LessThan0~2_combout\ & ((\U0|U1|v_count\(1)) # ((\U0|U1|Add1~2_combout\ & \U0|U1|Add1~20_combout\)))) # (!\U0|U1|LessThan0~2_combout\ & (\U0|U1|Add1~2_combout\ & ((\U0|U1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|LessThan0~2_combout\,
	datab => \U0|U1|Add1~2_combout\,
	datac => \U0|U1|v_count\(1),
	datad => \U0|U1|Add1~20_combout\,
	combout => \U0|U1|Add1~29_combout\);

-- Location: FF_X37_Y9_N11
\U0|U1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(1));

-- Location: LCCOMB_X38_Y9_N16
\U0|U1|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~4_combout\ = (\U0|U1|v_count\(2) & (\U0|U1|Add1~3\ $ (GND))) # (!\U0|U1|v_count\(2) & (!\U0|U1|Add1~3\ & VCC))
-- \U0|U1|Add1~5\ = CARRY((\U0|U1|v_count\(2) & !\U0|U1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|v_count\(2),
	datad => VCC,
	cin => \U0|U1|Add1~3\,
	combout => \U0|U1|Add1~4_combout\,
	cout => \U0|U1|Add1~5\);

-- Location: LCCOMB_X38_Y9_N6
\U0|U1|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~28_combout\ = (\U0|U1|Add1~20_combout\ & ((\U0|U1|Add1~4_combout\) # ((\U0|U1|LessThan0~2_combout\ & \U0|U1|v_count\(2))))) # (!\U0|U1|Add1~20_combout\ & (\U0|U1|LessThan0~2_combout\ & (\U0|U1|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~20_combout\,
	datab => \U0|U1|LessThan0~2_combout\,
	datac => \U0|U1|v_count\(2),
	datad => \U0|U1|Add1~4_combout\,
	combout => \U0|U1|Add1~28_combout\);

-- Location: FF_X38_Y9_N7
\U0|U1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(2));

-- Location: LCCOMB_X38_Y9_N18
\U0|U1|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~6_combout\ = (\U0|U1|v_count\(3) & (!\U0|U1|Add1~5\)) # (!\U0|U1|v_count\(3) & ((\U0|U1|Add1~5\) # (GND)))
-- \U0|U1|Add1~7\ = CARRY((!\U0|U1|Add1~5\) # (!\U0|U1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|v_count\(3),
	datad => VCC,
	cin => \U0|U1|Add1~5\,
	combout => \U0|U1|Add1~6_combout\,
	cout => \U0|U1|Add1~7\);

-- Location: LCCOMB_X38_Y9_N20
\U0|U1|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~8_combout\ = (\U0|U1|v_count\(4) & (\U0|U1|Add1~7\ $ (GND))) # (!\U0|U1|v_count\(4) & (!\U0|U1|Add1~7\ & VCC))
-- \U0|U1|Add1~9\ = CARRY((\U0|U1|v_count\(4) & !\U0|U1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|v_count\(4),
	datad => VCC,
	cin => \U0|U1|Add1~7\,
	combout => \U0|U1|Add1~8_combout\,
	cout => \U0|U1|Add1~9\);

-- Location: LCCOMB_X37_Y9_N30
\U0|U1|Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~27_combout\ = (\U0|U1|Add1~8_combout\ & ((\U0|U1|Add1~20_combout\) # ((\U0|U1|v_count\(4) & \U0|U1|LessThan0~2_combout\)))) # (!\U0|U1|Add1~8_combout\ & (\U0|U1|v_count\(4) & ((\U0|U1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~8_combout\,
	datab => \U0|U1|v_count\(4),
	datac => \U0|U1|Add1~20_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|Add1~27_combout\);

-- Location: FF_X37_Y9_N9
\U0|U1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(4));

-- Location: LCCOMB_X38_Y9_N22
\U0|U1|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~10_combout\ = (\U0|U1|v_count\(5) & (!\U0|U1|Add1~9\)) # (!\U0|U1|v_count\(5) & ((\U0|U1|Add1~9\) # (GND)))
-- \U0|U1|Add1~11\ = CARRY((!\U0|U1|Add1~9\) # (!\U0|U1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|v_count\(5),
	datad => VCC,
	cin => \U0|U1|Add1~9\,
	combout => \U0|U1|Add1~10_combout\,
	cout => \U0|U1|Add1~11\);

-- Location: LCCOMB_X37_Y9_N22
\U0|U1|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~22_combout\ = (\U0|U1|LessThan0~2_combout\ & ((\U0|U1|v_count\(5)) # ((\U0|U1|Add1~20_combout\ & \U0|U1|Add1~10_combout\)))) # (!\U0|U1|LessThan0~2_combout\ & (\U0|U1|Add1~20_combout\ & ((\U0|U1|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|LessThan0~2_combout\,
	datab => \U0|U1|Add1~20_combout\,
	datac => \U0|U1|v_count\(5),
	datad => \U0|U1|Add1~10_combout\,
	combout => \U0|U1|Add1~22_combout\);

-- Location: FF_X37_Y9_N27
\U0|U1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(5));

-- Location: LCCOMB_X38_Y9_N24
\U0|U1|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~12_combout\ = (\U0|U1|v_count\(6) & (\U0|U1|Add1~11\ $ (GND))) # (!\U0|U1|v_count\(6) & (!\U0|U1|Add1~11\ & VCC))
-- \U0|U1|Add1~13\ = CARRY((\U0|U1|v_count\(6) & !\U0|U1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|v_count\(6),
	datad => VCC,
	cin => \U0|U1|Add1~11\,
	combout => \U0|U1|Add1~12_combout\,
	cout => \U0|U1|Add1~13\);

-- Location: LCCOMB_X37_Y9_N12
\U0|U1|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~23_combout\ = (\U0|U1|LessThan0~2_combout\ & ((\U0|U1|v_count\(6)) # ((\U0|U1|Add1~12_combout\ & \U0|U1|Add1~20_combout\)))) # (!\U0|U1|LessThan0~2_combout\ & (((\U0|U1|Add1~12_combout\ & \U0|U1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|LessThan0~2_combout\,
	datab => \U0|U1|v_count\(6),
	datac => \U0|U1|Add1~12_combout\,
	datad => \U0|U1|Add1~20_combout\,
	combout => \U0|U1|Add1~23_combout\);

-- Location: LCCOMB_X37_Y9_N0
\U0|U1|v_count[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|v_count[6]~feeder_combout\ = \U0|U1|Add1~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|Add1~23_combout\,
	combout => \U0|U1|v_count[6]~feeder_combout\);

-- Location: FF_X37_Y9_N1
\U0|U1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|v_count[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(6));

-- Location: LCCOMB_X38_Y9_N26
\U0|U1|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~14_combout\ = (\U0|U1|v_count\(7) & (!\U0|U1|Add1~13\)) # (!\U0|U1|v_count\(7) & ((\U0|U1|Add1~13\) # (GND)))
-- \U0|U1|Add1~15\ = CARRY((!\U0|U1|Add1~13\) # (!\U0|U1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|v_count\(7),
	datad => VCC,
	cin => \U0|U1|Add1~13\,
	combout => \U0|U1|Add1~14_combout\,
	cout => \U0|U1|Add1~15\);

-- Location: LCCOMB_X38_Y9_N10
\U0|U1|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~24_combout\ = (\U0|U1|Add1~14_combout\ & ((\U0|U1|Add1~20_combout\) # ((\U0|U1|LessThan0~2_combout\ & \U0|U1|v_count\(7))))) # (!\U0|U1|Add1~14_combout\ & (\U0|U1|LessThan0~2_combout\ & (\U0|U1|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~14_combout\,
	datab => \U0|U1|LessThan0~2_combout\,
	datac => \U0|U1|v_count\(7),
	datad => \U0|U1|Add1~20_combout\,
	combout => \U0|U1|Add1~24_combout\);

-- Location: FF_X38_Y9_N11
\U0|U1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(7));

-- Location: LCCOMB_X38_Y9_N28
\U0|U1|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~16_combout\ = (\U0|U1|v_count\(8) & (\U0|U1|Add1~15\ $ (GND))) # (!\U0|U1|v_count\(8) & (!\U0|U1|Add1~15\ & VCC))
-- \U0|U1|Add1~17\ = CARRY((\U0|U1|v_count\(8) & !\U0|U1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|v_count\(8),
	datad => VCC,
	cin => \U0|U1|Add1~15\,
	combout => \U0|U1|Add1~16_combout\,
	cout => \U0|U1|Add1~17\);

-- Location: LCCOMB_X38_Y9_N4
\U0|U1|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~25_combout\ = (\U0|U1|Add1~20_combout\ & ((\U0|U1|Add1~16_combout\) # ((\U0|U1|LessThan0~2_combout\ & \U0|U1|v_count\(8))))) # (!\U0|U1|Add1~20_combout\ & (\U0|U1|LessThan0~2_combout\ & (\U0|U1|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~20_combout\,
	datab => \U0|U1|LessThan0~2_combout\,
	datac => \U0|U1|v_count\(8),
	datad => \U0|U1|Add1~16_combout\,
	combout => \U0|U1|Add1~25_combout\);

-- Location: FF_X38_Y9_N5
\U0|U1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(8));

-- Location: LCCOMB_X38_Y9_N30
\U0|U1|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~18_combout\ = \U0|U1|Add1~17\ $ (\U0|U1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|v_count\(9),
	cin => \U0|U1|Add1~17\,
	combout => \U0|U1|Add1~18_combout\);

-- Location: LCCOMB_X37_Y9_N24
\U0|U1|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~21_combout\ = (\U0|U1|LessThan0~2_combout\ & ((\U0|U1|v_count\(9)) # ((\U0|U1|Add1~18_combout\ & \U0|U1|Add1~20_combout\)))) # (!\U0|U1|LessThan0~2_combout\ & (((\U0|U1|Add1~18_combout\ & \U0|U1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|LessThan0~2_combout\,
	datab => \U0|U1|v_count\(9),
	datac => \U0|U1|Add1~18_combout\,
	datad => \U0|U1|Add1~20_combout\,
	combout => \U0|U1|Add1~21_combout\);

-- Location: LCCOMB_X37_Y9_N14
\U0|U1|v_count[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|v_count[9]~feeder_combout\ = \U0|U1|Add1~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|Add1~21_combout\,
	combout => \U0|U1|v_count[9]~feeder_combout\);

-- Location: FF_X37_Y9_N15
\U0|U1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|v_count[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_count\(9));

-- Location: LCCOMB_X37_Y9_N4
\U0|U1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|LessThan1~1_combout\ = (!\U0|U1|v_count\(5) & (!\U0|U1|v_count\(6) & !\U0|U1|v_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|v_count\(5),
	datab => \U0|U1|v_count\(6),
	datac => \U0|U1|v_count\(4),
	combout => \U0|U1|LessThan1~1_combout\);

-- Location: LCCOMB_X38_Y9_N2
\U0|U1|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|LessThan1~0_combout\ = (!\U0|U1|v_count\(7) & (!\U0|U1|v_count\(8) & ((!\U0|U1|v_count\(2)) # (!\U0|U1|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|v_count\(7),
	datab => \U0|U1|v_count\(3),
	datac => \U0|U1|v_count\(8),
	datad => \U0|U1|v_count\(2),
	combout => \U0|U1|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y9_N2
\U0|U1|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~20_combout\ = (!\U0|U1|LessThan0~2_combout\ & (((\U0|U1|LessThan1~1_combout\ & \U0|U1|LessThan1~0_combout\)) # (!\U0|U1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|LessThan0~2_combout\,
	datab => \U0|U1|v_count\(9),
	datac => \U0|U1|LessThan1~1_combout\,
	datad => \U0|U1|LessThan1~0_combout\,
	combout => \U0|U1|Add1~20_combout\);

-- Location: LCCOMB_X38_Y9_N0
\U0|U1|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|Add1~26_combout\ = (\U0|U1|Add1~20_combout\ & ((\U0|U1|Add1~6_combout\) # ((\U0|U1|LessThan0~2_combout\ & \U0|U1|v_count\(3))))) # (!\U0|U1|Add1~20_combout\ & (\U0|U1|LessThan0~2_combout\ & (\U0|U1|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~20_combout\,
	datab => \U0|U1|LessThan0~2_combout\,
	datac => \U0|U1|v_count\(3),
	datad => \U0|U1|Add1~6_combout\,
	combout => \U0|U1|Add1~26_combout\);

-- Location: LCCOMB_X40_Y11_N30
\U0|U1|row[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|row[3]~feeder_combout\ = \U0|U1|Add1~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|Add1~26_combout\,
	combout => \U0|U1|row[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y9_N18
\U0|U1|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|process_0~0_combout\ = (\U0|U1|Add1~23_combout\ & (\U0|U1|Add1~24_combout\ & (\U0|U1|Add1~22_combout\ & \U0|U1|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~23_combout\,
	datab => \U0|U1|Add1~24_combout\,
	datac => \U0|U1|Add1~22_combout\,
	datad => \U0|U1|Add1~25_combout\,
	combout => \U0|U1|process_0~0_combout\);

-- Location: LCCOMB_X37_Y9_N20
\U0|U1|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|LessThan7~0_combout\ = (!\U0|U1|process_0~0_combout\ & !\U0|U1|Add1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|process_0~0_combout\,
	datad => \U0|U1|Add1~21_combout\,
	combout => \U0|U1|LessThan7~0_combout\);

-- Location: FF_X40_Y11_N31
\U0|U1|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|row[3]~feeder_combout\,
	ena => \U0|U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|row\(3));

-- Location: FF_X40_Y11_N15
\U0|U1|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~30_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|row\(0));

-- Location: FF_X40_Y11_N5
\U0|U1|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~28_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|row\(2));

-- Location: FF_X40_Y11_N19
\U0|U1|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~29_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|row\(1));

-- Location: LCCOMB_X40_Y11_N12
\U0|FSM~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~5_combout\ = (\U0|U1|row\(3) & (((!\U0|U1|row\(2))))) # (!\U0|U1|row\(3) & (\U0|U1|row\(2) & ((\U0|U1|row\(0)) # (\U0|U1|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(3),
	datab => \U0|U1|row\(0),
	datac => \U0|U1|row\(2),
	datad => \U0|U1|row\(1),
	combout => \U0|FSM~5_combout\);

-- Location: FF_X41_Y11_N13
\U0|U1|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~27_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|row\(4));

-- Location: FF_X41_Y11_N9
\U0|U1|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~24_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|row\(7));

-- Location: FF_X41_Y11_N19
\U0|U1|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~22_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|row\(5));

-- Location: LCCOMB_X40_Y11_N20
\U0|FSM~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~4_combout\ = (\U0|U1|row\(7) & ((\U0|U1|row\(4) & (\U0|U1|row\(3) & !\U0|U1|row\(5))) # (!\U0|U1|row\(4) & (!\U0|U1|row\(3) & \U0|U1|row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(4),
	datab => \U0|U1|row\(7),
	datac => \U0|U1|row\(3),
	datad => \U0|U1|row\(5),
	combout => \U0|FSM~4_combout\);

-- Location: FF_X41_Y11_N1
\U0|U1|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~23_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|row\(6));

-- Location: FF_X41_Y11_N7
\U0|U1|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U0|U1|Add1~25_combout\,
	sload => VCC,
	ena => \U0|U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|row\(8));

-- Location: LCCOMB_X40_Y11_N8
\U0|FSM~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~6_combout\ = (\U0|FSM~5_combout\) # (((\U0|U1|row\(6)) # (\U0|U1|row\(8))) # (!\U0|FSM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~5_combout\,
	datab => \U0|FSM~4_combout\,
	datac => \U0|U1|row\(6),
	datad => \U0|U1|row\(8),
	combout => \U0|FSM~6_combout\);

-- Location: LCCOMB_X39_Y14_N30
\U0|LessThan26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan26~1_combout\ = (\U0|U1|column\(5) & (\U0|U1|column\(8) & \U0|U1|column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(5),
	datac => \U0|U1|column\(8),
	datad => \U0|U1|column\(7),
	combout => \U0|LessThan26~1_combout\);

-- Location: LCCOMB_X39_Y14_N14
\U0|FSM~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~13_combout\ = (\U0|U1|column\(3) & ((\U0|U1|column\(4)) # ((!\U0|U1|column\(2) & !\U0|LessThan8~0_combout\)))) # (!\U0|U1|column\(3) & ((\U0|U1|column\(2)) # ((!\U0|U1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(2),
	datab => \U0|U1|column\(3),
	datac => \U0|U1|column\(4),
	datad => \U0|LessThan8~0_combout\,
	combout => \U0|FSM~13_combout\);

-- Location: LCCOMB_X39_Y14_N8
\U0|FSM~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~14_combout\ = ((\U0|FSM~13_combout\) # ((\U0|U1|column\(9)) # (\U0|U1|column\(6)))) # (!\U0|LessThan26~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan26~1_combout\,
	datab => \U0|FSM~13_combout\,
	datac => \U0|U1|column\(9),
	datad => \U0|U1|column\(6),
	combout => \U0|FSM~14_combout\);

-- Location: LCCOMB_X40_Y11_N16
\U0|FSM~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~9_combout\ = (\U0|U1|row\(3) & (!\U0|U1|row\(6) & (\U0|U1|row\(4) & \U0|U1|row\(5)))) # (!\U0|U1|row\(3) & (\U0|U1|row\(6) & (!\U0|U1|row\(4) & !\U0|U1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(3),
	datab => \U0|U1|row\(6),
	datac => \U0|U1|row\(4),
	datad => \U0|U1|row\(5),
	combout => \U0|FSM~9_combout\);

-- Location: LCCOMB_X40_Y11_N26
\U0|FSM~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~8_combout\ = (\U0|U1|row\(2) & (((\U0|U1|row\(0)) # (\U0|U1|row\(1))) # (!\U0|U1|row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|U1|row\(6),
	datac => \U0|U1|row\(0),
	datad => \U0|U1|row\(1),
	combout => \U0|FSM~8_combout\);

-- Location: LCCOMB_X41_Y11_N16
\U0|FSM~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~7_combout\ = (!\U0|U1|row\(7) & \U0|U1|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|row\(7),
	datad => \U0|U1|row\(8),
	combout => \U0|FSM~7_combout\);

-- Location: LCCOMB_X40_Y11_N2
\U0|FSM~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~10_combout\ = ((\U0|U1|row\(5) $ (\U0|FSM~8_combout\)) # (!\U0|FSM~7_combout\)) # (!\U0|FSM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~9_combout\,
	datab => \U0|U1|row\(5),
	datac => \U0|FSM~8_combout\,
	datad => \U0|FSM~7_combout\,
	combout => \U0|FSM~10_combout\);

-- Location: LCCOMB_X39_Y14_N22
\U0|FSM~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~15_combout\ = (((!\U0|FSM~10_combout\) # (!\U0|FSM~14_combout\)) # (!\U0|FSM~6_combout\)) # (!\U0|FSM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~12_combout\,
	datab => \U0|FSM~6_combout\,
	datac => \U0|FSM~14_combout\,
	datad => \U0|FSM~10_combout\,
	combout => \U0|FSM~15_combout\);

-- Location: LCCOMB_X47_Y9_N30
\U1|U0|U0|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal1~1_combout\ = (\U1|U0|U0|current_instruction.opcode\(2) & (!\U1|U0|U0|current_instruction.opcode\(1) & \U1|U0|U0|current_instruction.opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|current_instruction.opcode\(2),
	datab => \U1|U0|U0|current_instruction.opcode\(1),
	datad => \U1|U0|U0|current_instruction.opcode\(0),
	combout => \U1|U0|U0|Equal1~1_combout\);

-- Location: CLKCTRL_G17
\U1|U0|U0|Equal1~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|U0|U0|Equal1~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|U0|U0|Equal1~1clkctrl_outclk\);

-- Location: IOIBUF_X38_Y0_N22
\GSENSOR_SDO_f~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GSENSOR_SDO_f,
	o => \GSENSOR_SDO_f~input_o\);

-- Location: LCCOMB_X50_Y9_N12
\U1|U0|U0|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Equal1~4_combout\ = (!\U1|U0|U0|current_instruction.opcode\(2) & (!\U1|U0|U0|current_instruction.opcode\(1) & !\U1|U0|U0|current_instruction.opcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|current_instruction.opcode\(2),
	datac => \U1|U0|U0|current_instruction.opcode\(1),
	datad => \U1|U0|U0|current_instruction.opcode\(0),
	combout => \U1|U0|U0|Equal1~4_combout\);

-- Location: FF_X50_Y8_N25
\U1|U0|U0|u0|rx_request_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|Equal1~4_combout\,
	sload => VCC,
	ena => \U1|U0|U0|u0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_request_r~q\);

-- Location: LCCOMB_X50_Y8_N24
\U1|U0|U0|u0|rx_data[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|rx_data[7]~1_combout\ = (\U1|U0|U0|u0|spi_clk~q\ & (!\U1|U0|U0|u0|spi_clk_last~q\ & (\U1|U0|U0|u0|rx_request_r~q\ & \U1|U0|U0|u0|state.ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|spi_clk~q\,
	datab => \U1|U0|U0|u0|spi_clk_last~q\,
	datac => \U1|U0|U0|u0|rx_request_r~q\,
	datad => \U1|U0|U0|u0|state.ACTIVE~q\,
	combout => \U1|U0|U0|u0|rx_data[7]~1_combout\);

-- Location: FF_X49_Y9_N31
\U1|U0|U0|u0|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \GSENSOR_SDO_f~input_o\,
	sload => VCC,
	ena => \U1|U0|U0|u0|rx_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_data\(0));

-- Location: FF_X49_Y9_N25
\U1|U0|U0|u0|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(0),
	sload => VCC,
	ena => \U1|U0|U0|u0|rx_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_data\(1));

-- Location: LCCOMB_X49_Y9_N14
\U1|U0|U0|u0|rx_data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|rx_data[2]~feeder_combout\ = \U1|U0|U0|u0|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|u0|rx_data\(1),
	combout => \U1|U0|U0|u0|rx_data[2]~feeder_combout\);

-- Location: FF_X49_Y9_N15
\U1|U0|U0|u0|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|rx_data[2]~feeder_combout\,
	ena => \U1|U0|U0|u0|rx_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_data\(2));

-- Location: FF_X49_Y9_N13
\U1|U0|U0|u0|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(2),
	sload => VCC,
	ena => \U1|U0|U0|u0|rx_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_data\(3));

-- Location: LCCOMB_X49_Y9_N20
\U1|U0|U0|u0|rx_data[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|rx_data[4]~feeder_combout\ = \U1|U0|U0|u0|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|u0|rx_data\(3),
	combout => \U1|U0|U0|u0|rx_data[4]~feeder_combout\);

-- Location: FF_X49_Y9_N21
\U1|U0|U0|u0|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|rx_data[4]~feeder_combout\,
	ena => \U1|U0|U0|u0|rx_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_data\(4));

-- Location: LCCOMB_X49_Y9_N18
\U1|U0|U0|u0|rx_data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|rx_data[5]~feeder_combout\ = \U1|U0|U0|u0|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|u0|rx_data\(4),
	combout => \U1|U0|U0|u0|rx_data[5]~feeder_combout\);

-- Location: FF_X49_Y9_N19
\U1|U0|U0|u0|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|rx_data[5]~feeder_combout\,
	ena => \U1|U0|U0|u0|rx_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_data\(5));

-- Location: LCCOMB_X49_Y9_N2
\U1|U0|U0|u0|rx_data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|rx_data[6]~feeder_combout\ = \U1|U0|U0|u0|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|u0|rx_data\(5),
	combout => \U1|U0|U0|u0|rx_data[6]~feeder_combout\);

-- Location: FF_X49_Y9_N3
\U1|U0|U0|u0|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|rx_data[6]~feeder_combout\,
	ena => \U1|U0|U0|u0|rx_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_data\(6));

-- Location: LCCOMB_X49_Y9_N4
\U1|U0|U0|u0|rx_data[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|rx_data[7]~feeder_combout\ = \U1|U0|U0|u0|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|u0|rx_data\(6),
	combout => \U1|U0|U0|u0|rx_data[7]~feeder_combout\);

-- Location: FF_X49_Y9_N5
\U1|U0|U0|u0|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|rx_data[7]~feeder_combout\,
	ena => \U1|U0|U0|u0|rx_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_data\(7));

-- Location: LCCOMB_X50_Y9_N26
\U1|U0|U0|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Selector1~2_combout\ = (!\U1|U0|U0|current_instruction.opcode\(2) & (!\U1|U0|U0|current_instruction.opcode\(0) & (!\U1|U0|U0|current_instruction.opcode\(1) & \U1|U0|U0|u0|state.TO_ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|current_instruction.opcode\(2),
	datab => \U1|U0|U0|current_instruction.opcode\(0),
	datac => \U1|U0|U0|current_instruction.opcode\(1),
	datad => \U1|U0|U0|u0|state.TO_ACTIVE~q\,
	combout => \U1|U0|U0|Selector1~2_combout\);

-- Location: FF_X44_Y9_N3
\U1|U0|U0|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(3),
	sload => VCC,
	ena => \U1|U0|U0|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|address\(3));

-- Location: LCCOMB_X50_Y8_N28
\U1|U0|U0|u0|rx_valid_next~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|rx_valid_next~2_combout\ = (\U1|U0|U0|u0|rx_data[7]~0_combout\ & (\U1|U0|U0|u0|rx_request_r~q\ & (\U1|U0|U0|u0|state.ACTIVE~q\ & \U1|U0|U0|u0|state_next~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|rx_data[7]~0_combout\,
	datab => \U1|U0|U0|u0|rx_request_r~q\,
	datac => \U1|U0|U0|u0|state.ACTIVE~q\,
	datad => \U1|U0|U0|u0|state_next~2_combout\,
	combout => \U1|U0|U0|u0|rx_valid_next~2_combout\);

-- Location: FF_X50_Y8_N29
\U1|U0|U0|u0|rx_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|rx_valid_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|rx_valid~q\);

-- Location: LCCOMB_X47_Y9_N6
\U1|U0|U0|monitor_rx_r~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|monitor_rx_r~0_combout\ = (\U1|U0|U0|Selector1~2_combout\) # ((\U1|U0|U0|monitor_rx_r~q\ & !\U1|U0|U0|u0|rx_valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|Selector1~2_combout\,
	datac => \U1|U0|U0|monitor_rx_r~q\,
	datad => \U1|U0|U0|u0|rx_valid~q\,
	combout => \U1|U0|U0|monitor_rx_r~0_combout\);

-- Location: FF_X47_Y9_N15
\U1|U0|U0|monitor_rx_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|monitor_rx_r~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|monitor_rx_r~q\);

-- Location: FF_X47_Y9_N11
\U1|U0|U0|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(2),
	sload => VCC,
	ena => \U1|U0|U0|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|address\(2));

-- Location: LCCOMB_X44_Y9_N20
\U1|U0|U0|address[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|address[4]~feeder_combout\ = \U1|U0|U0|current_instruction.immediate\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|current_instruction.immediate\(4),
	combout => \U1|U0|U0|address[4]~feeder_combout\);

-- Location: FF_X44_Y9_N21
\U1|U0|U0|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|address[4]~feeder_combout\,
	ena => \U1|U0|U0|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|address\(4));

-- Location: LCCOMB_X47_Y9_N10
\U1|U0|U0|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Decoder0~0_combout\ = (!\U1|U0|U0|address\(3) & (\U1|U0|U0|monitor_rx_r~q\ & (!\U1|U0|U0|address\(2) & !\U1|U0|U0|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|address\(3),
	datab => \U1|U0|U0|monitor_rx_r~q\,
	datac => \U1|U0|U0|address\(2),
	datad => \U1|U0|U0|address\(4),
	combout => \U1|U0|U0|Decoder0~0_combout\);

-- Location: FF_X47_Y9_N31
\U1|U0|U0|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(6),
	sload => VCC,
	ena => \U1|U0|U0|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|address\(6));

-- Location: LCCOMB_X47_Y9_N28
\U1|U0|U0|address[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|address[7]~feeder_combout\ = \U1|U0|U0|current_instruction.immediate\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U0|U0|current_instruction.immediate\(7),
	combout => \U1|U0|U0|address[7]~feeder_combout\);

-- Location: FF_X47_Y9_N29
\U1|U0|U0|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|address[7]~feeder_combout\,
	ena => \U1|U0|U0|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|address\(7));

-- Location: FF_X47_Y9_N25
\U1|U0|U0|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(5),
	sload => VCC,
	ena => \U1|U0|U0|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|address\(5));

-- Location: LCCOMB_X47_Y9_N24
\U1|U0|U0|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Decoder0~1_combout\ = (!\U1|U0|U0|address\(6) & (!\U1|U0|U0|address\(7) & (!\U1|U0|U0|address\(5) & \U1|U0|U0|u0|rx_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|address\(6),
	datab => \U1|U0|U0|address\(7),
	datac => \U1|U0|U0|address\(5),
	datad => \U1|U0|U0|u0|rx_valid~q\,
	combout => \U1|U0|U0|Decoder0~1_combout\);

-- Location: FF_X47_Y9_N27
\U1|U0|U0|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(0),
	sload => VCC,
	ena => \U1|U0|U0|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|address\(0));

-- Location: FF_X47_Y9_N3
\U1|U0|U0|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|current_instruction.immediate\(1),
	sload => VCC,
	ena => \U1|U0|U0|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|address\(1));

-- Location: LCCOMB_X47_Y9_N16
\U1|U0|U0|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Decoder0~4_combout\ = (\U1|U0|U0|Decoder0~0_combout\ & (\U1|U0|U0|Decoder0~1_combout\ & (\U1|U0|U0|address\(0) & \U1|U0|U0|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Decoder0~0_combout\,
	datab => \U1|U0|U0|Decoder0~1_combout\,
	datac => \U1|U0|U0|address\(0),
	datad => \U1|U0|U0|address\(1),
	combout => \U1|U0|U0|Decoder0~4_combout\);

-- Location: FF_X45_Y13_N19
\U1|U0|U0|memory[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(7),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[3][7]~q\);

-- Location: LCCOMB_X45_Y13_N18
\U1|y_value[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(31) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[3][7]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|y_value\(31),
	datac => \U1|U0|U0|memory[3][7]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(31));

-- Location: FF_X45_Y13_N25
\U1|U0|U0|memory[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(6),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[3][6]~q\);

-- Location: LCCOMB_X45_Y13_N24
\U1|y_value[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(14) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[3][6]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|y_value\(14),
	datac => \U1|U0|U0|memory[3][6]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(14));

-- Location: LCCOMB_X47_Y9_N26
\U1|U0|U0|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Decoder0~5_combout\ = (\U1|U0|U0|Decoder0~0_combout\ & (\U1|U0|U0|address\(1) & (!\U1|U0|U0|address\(0) & \U1|U0|U0|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Decoder0~0_combout\,
	datab => \U1|U0|U0|address\(1),
	datac => \U1|U0|U0|address\(0),
	datad => \U1|U0|U0|Decoder0~1_combout\,
	combout => \U1|U0|U0|Decoder0~5_combout\);

-- Location: FF_X46_Y13_N19
\U1|U0|U0|memory[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(5),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[2][5]~q\);

-- Location: LCCOMB_X46_Y13_N18
\U1|y_value[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(5) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[2][5]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|y_value\(5),
	datac => \U1|U0|U0|memory[2][5]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(5));

-- Location: FF_X46_Y13_N31
\U1|U0|U0|memory[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(3),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[3][3]~q\);

-- Location: LCCOMB_X46_Y13_N30
\U1|y_value[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(11) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[3][3]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(11),
	datac => \U1|U0|U0|memory[3][3]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(11));

-- Location: FF_X46_Y13_N3
\U1|U0|U0|memory[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(2),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[3][2]~q\);

-- Location: LCCOMB_X46_Y13_N2
\U1|y_value[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(10) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[3][2]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|y_value\(10),
	datac => \U1|U0|U0|memory[3][2]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(10));

-- Location: FF_X46_Y13_N23
\U1|U0|U0|memory[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(4),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[3][4]~q\);

-- Location: LCCOMB_X46_Y13_N22
\U1|y_value[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(12) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[3][4]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(12),
	datac => \U1|U0|U0|memory[3][4]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(12));

-- Location: FF_X46_Y13_N21
\U1|U0|U0|memory[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(5),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[3][5]~q\);

-- Location: LCCOMB_X46_Y13_N20
\U1|y_value[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(13) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[3][5]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|y_value\(13),
	datac => \U1|U0|U0|memory[3][5]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(13));

-- Location: LCCOMB_X46_Y13_N14
\U1|arriba~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|arriba~1_combout\ = (((!\U1|y_value\(13)) # (!\U1|y_value\(12))) # (!\U1|y_value\(10))) # (!\U1|y_value\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(11),
	datab => \U1|y_value\(10),
	datac => \U1|y_value\(12),
	datad => \U1|y_value\(13),
	combout => \U1|arriba~1_combout\);

-- Location: FF_X46_Y13_N5
\U1|U0|U0|memory[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(6),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[2][6]~q\);

-- Location: LCCOMB_X46_Y13_N4
\U1|y_value[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(6) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[2][6]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|y_value\(6),
	datac => \U1|U0|U0|memory[2][6]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(6));

-- Location: FF_X45_Y13_N7
\U1|U0|U0|memory[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(0),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[3][0]~q\);

-- Location: LCCOMB_X45_Y13_N6
\U1|y_value[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(8) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[3][0]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(8),
	datac => \U1|U0|U0|memory[3][0]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(8));

-- Location: FF_X45_Y13_N17
\U1|U0|U0|memory[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(7),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[2][7]~q\);

-- Location: LCCOMB_X45_Y13_N16
\U1|y_value[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(7) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[2][7]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|y_value\(7),
	datac => \U1|U0|U0|memory[2][7]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(7));

-- Location: FF_X45_Y13_N11
\U1|U0|U0|memory[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(1),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[3][1]~q\);

-- Location: LCCOMB_X45_Y13_N10
\U1|y_value[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(9) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[3][1]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(9),
	datac => \U1|U0|U0|memory[3][1]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(9));

-- Location: LCCOMB_X46_Y13_N8
\U1|arriba~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|arriba~0_combout\ = (((!\U1|y_value\(9)) # (!\U1|y_value\(7))) # (!\U1|y_value\(8))) # (!\U1|y_value\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(6),
	datab => \U1|y_value\(8),
	datac => \U1|y_value\(7),
	datad => \U1|y_value\(9),
	combout => \U1|arriba~0_combout\);

-- Location: FF_X46_Y13_N13
\U1|U0|U0|memory[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(4),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[2][4]~q\);

-- Location: LCCOMB_X46_Y13_N12
\U1|y_value[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(4) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[2][4]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(4),
	datac => \U1|U0|U0|memory[2][4]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(4));

-- Location: FF_X45_Y13_N27
\U1|U0|U0|memory[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(3),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[2][3]~q\);

-- Location: LCCOMB_X45_Y13_N26
\U1|y_value[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(3) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[2][3]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(3),
	datac => \U1|U0|U0|memory[2][3]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(3));

-- Location: FF_X45_Y13_N1
\U1|U0|U0|memory[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(2),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[2][2]~q\);

-- Location: LCCOMB_X45_Y13_N0
\U1|y_value[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(2) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[2][2]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|y_value\(2),
	datac => \U1|U0|U0|memory[2][2]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(2));

-- Location: FF_X45_Y13_N29
\U1|U0|U0|memory[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(1),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[2][1]~q\);

-- Location: LCCOMB_X45_Y13_N28
\U1|y_value[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(1) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[2][1]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|y_value\(1),
	datac => \U1|U0|U0|memory[2][1]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(1));

-- Location: LCCOMB_X46_Y13_N0
\U1|arriba~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|arriba~2_combout\ = (!\U1|y_value\(4) & (((!\U1|y_value\(1)) # (!\U1|y_value\(2))) # (!\U1|y_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(4),
	datab => \U1|y_value\(3),
	datac => \U1|y_value\(2),
	datad => \U1|y_value\(1),
	combout => \U1|arriba~2_combout\);

-- Location: LCCOMB_X46_Y13_N10
\U1|arriba~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|arriba~3_combout\ = (\U1|arriba~1_combout\) # ((\U1|arriba~0_combout\) # ((!\U1|y_value\(5) & \U1|arriba~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(5),
	datab => \U1|arriba~1_combout\,
	datac => \U1|arriba~0_combout\,
	datad => \U1|arriba~2_combout\,
	combout => \U1|arriba~3_combout\);

-- Location: LCCOMB_X46_Y13_N24
\U1|arriba~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|arriba~4_combout\ = (\U1|y_value\(31) & ((\U1|arriba~3_combout\) # (!\U1|y_value\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(31),
	datab => \U1|y_value\(14),
	datad => \U1|arriba~3_combout\,
	combout => \U1|arriba~4_combout\);

-- Location: LCCOMB_X46_Y13_N6
\U1|arriba\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|arriba~combout\ = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|arriba~4_combout\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|arriba~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datac => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	datad => \U1|arriba~4_combout\,
	combout => \U1|arriba~combout\);

-- Location: LCCOMB_X47_Y13_N0
\U1|select_yShift[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~32_combout\ = \U1|select_yShift\(0) $ (VCC)
-- \U1|select_yShift[0]~33\ = CARRY(\U1|select_yShift\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|select_yShift\(0),
	datad => VCC,
	combout => \U1|select_yShift[0]~32_combout\,
	cout => \U1|select_yShift[0]~33\);

-- Location: LCCOMB_X45_Y13_N22
\U1|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan2~3_combout\ = (\U1|y_value\(9)) # ((\U1|y_value\(14)) # ((\U1|y_value\(11)) # (\U1|y_value\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(9),
	datab => \U1|y_value\(14),
	datac => \U1|y_value\(11),
	datad => \U1|y_value\(6),
	combout => \U1|LessThan2~3_combout\);

-- Location: LCCOMB_X45_Y13_N8
\U1|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan2~0_combout\ = (\U1|y_value\(8)) # ((\U1|y_value\(7)) # ((\U1|y_value\(13)) # (\U1|y_value\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(8),
	datab => \U1|y_value\(7),
	datac => \U1|y_value\(13),
	datad => \U1|y_value\(10),
	combout => \U1|LessThan2~0_combout\);

-- Location: FF_X45_Y13_N31
\U1|U0|U0|memory[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(0),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[2][0]~q\);

-- Location: LCCOMB_X45_Y13_N30
\U1|y_value[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|y_value\(0) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[2][0]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|y_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(0),
	datac => \U1|U0|U0|memory[2][0]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|y_value\(0));

-- Location: LCCOMB_X45_Y13_N14
\U1|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan2~1_combout\ = (\U1|y_value\(2)) # ((\U1|y_value\(3)) # ((\U1|y_value\(0) & \U1|y_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(0),
	datab => \U1|y_value\(2),
	datac => \U1|y_value\(3),
	datad => \U1|y_value\(1),
	combout => \U1|LessThan2~1_combout\);

-- Location: LCCOMB_X45_Y13_N20
\U1|LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan2~2_combout\ = (\U1|y_value\(12)) # ((\U1|y_value\(5) & (\U1|y_value\(4) & \U1|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|y_value\(5),
	datab => \U1|y_value\(4),
	datac => \U1|LessThan2~1_combout\,
	datad => \U1|y_value\(12),
	combout => \U1|LessThan2~2_combout\);

-- Location: LCCOMB_X45_Y13_N12
\U1|LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan2~4_combout\ = (!\U1|y_value\(31) & ((\U1|LessThan2~3_combout\) # ((\U1|LessThan2~0_combout\) # (\U1|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan2~3_combout\,
	datab => \U1|y_value\(31),
	datac => \U1|LessThan2~0_combout\,
	datad => \U1|LessThan2~2_combout\,
	combout => \U1|LessThan2~4_combout\);

-- Location: LCCOMB_X46_Y13_N28
\U1|abajo\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|abajo~combout\ = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|LessThan2~4_combout\)) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|abajo~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan2~4_combout\,
	datac => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	datad => \U1|abajo~combout\,
	combout => \U1|abajo~combout\);

-- Location: LCCOMB_X41_Y4_N0
\U1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|count\(0) $ (GND)
-- \U1|Add0~1\ = CARRY(!\U1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X40_Y4_N16
\U1|count[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count[0]~12_combout\ = !\U1|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~0_combout\,
	combout => \U1|count[0]~12_combout\);

-- Location: FF_X40_Y4_N17
\U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(0));

-- Location: LCCOMB_X41_Y4_N2
\U1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|count\(1) & (!\U1|Add0~1\)) # (!\U1|count\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X41_Y4_N3
\U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(1));

-- Location: LCCOMB_X41_Y4_N4
\U1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|count\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|count\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|count\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X41_Y4_N5
\U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(2));

-- Location: LCCOMB_X41_Y4_N6
\U1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|count\(3) & (!\U1|Add0~5\)) # (!\U1|count\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: FF_X41_Y4_N7
\U1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(3));

-- Location: LCCOMB_X41_Y4_N8
\U1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|count\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|count\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|count\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: FF_X41_Y4_N9
\U1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(4));

-- Location: LCCOMB_X41_Y4_N10
\U1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|count\(5) & (!\U1|Add0~9\)) # (!\U1|count\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: LCCOMB_X40_Y4_N28
\U1|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~0_combout\ = (\U1|Add0~10_combout\ & !\U1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~10_combout\,
	datad => \U1|Equal0~10_combout\,
	combout => \U1|count~0_combout\);

-- Location: FF_X40_Y4_N29
\U1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(5));

-- Location: LCCOMB_X41_Y4_N12
\U1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|count\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|count\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|count\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: FF_X41_Y4_N13
\U1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(6));

-- Location: LCCOMB_X41_Y4_N14
\U1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|count\(7) & (!\U1|Add0~13\)) # (!\U1|count\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X41_Y4_N15
\U1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(7));

-- Location: LCCOMB_X41_Y4_N16
\U1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|count\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|count\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|count\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: FF_X41_Y4_N17
\U1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(8));

-- Location: LCCOMB_X41_Y4_N18
\U1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|count\(9) & (!\U1|Add0~17\)) # (!\U1|count\(9) & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(9),
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: FF_X41_Y4_N19
\U1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(9));

-- Location: LCCOMB_X41_Y4_N20
\U1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|count\(10) & (\U1|Add0~19\ $ (GND))) # (!\U1|count\(10) & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|count\(10) & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(10),
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: LCCOMB_X40_Y4_N24
\U1|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~1_combout\ = (\U1|Add0~20_combout\ & !\U1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~20_combout\,
	datad => \U1|Equal0~10_combout\,
	combout => \U1|count~1_combout\);

-- Location: FF_X40_Y4_N25
\U1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(10));

-- Location: LCCOMB_X41_Y4_N22
\U1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|count\(11) & (!\U1|Add0~21\)) # (!\U1|count\(11) & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(11),
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: LCCOMB_X40_Y4_N6
\U1|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~2_combout\ = (!\U1|Equal0~10_combout\ & \U1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~10_combout\,
	datad => \U1|Add0~22_combout\,
	combout => \U1|count~2_combout\);

-- Location: FF_X40_Y4_N7
\U1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(11));

-- Location: LCCOMB_X41_Y4_N24
\U1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|count\(12) & (\U1|Add0~23\ $ (GND))) # (!\U1|count\(12) & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|count\(12) & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(12),
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: LCCOMB_X40_Y4_N30
\U1|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~3_combout\ = (!\U1|Equal0~10_combout\ & \U1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~10_combout\,
	datad => \U1|Add0~24_combout\,
	combout => \U1|count~3_combout\);

-- Location: FF_X40_Y4_N31
\U1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(12));

-- Location: LCCOMB_X41_Y4_N26
\U1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|count\(13) & (!\U1|Add0~25\)) # (!\U1|count\(13) & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(13),
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: LCCOMB_X40_Y4_N20
\U1|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~4_combout\ = (!\U1|Equal0~10_combout\ & \U1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~10_combout\,
	datad => \U1|Add0~26_combout\,
	combout => \U1|count~4_combout\);

-- Location: FF_X40_Y4_N21
\U1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(13));

-- Location: LCCOMB_X41_Y4_N28
\U1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|count\(14) & (\U1|Add0~27\ $ (GND))) # (!\U1|count\(14) & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|count\(14) & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(14),
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: FF_X41_Y4_N29
\U1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(14));

-- Location: LCCOMB_X41_Y4_N30
\U1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|count\(15) & (!\U1|Add0~29\)) # (!\U1|count\(15) & ((\U1|Add0~29\) # (GND)))
-- \U1|Add0~31\ = CARRY((!\U1|Add0~29\) # (!\U1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(15),
	datad => VCC,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~31\);

-- Location: LCCOMB_X40_Y4_N26
\U1|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~5_combout\ = (\U1|Add0~30_combout\ & !\U1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~30_combout\,
	datad => \U1|Equal0~10_combout\,
	combout => \U1|count~5_combout\);

-- Location: FF_X40_Y4_N27
\U1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(15));

-- Location: LCCOMB_X41_Y3_N0
\U1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~32_combout\ = (\U1|count\(16) & (\U1|Add0~31\ $ (GND))) # (!\U1|count\(16) & (!\U1|Add0~31\ & VCC))
-- \U1|Add0~33\ = CARRY((\U1|count\(16) & !\U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(16),
	datad => VCC,
	cin => \U1|Add0~31\,
	combout => \U1|Add0~32_combout\,
	cout => \U1|Add0~33\);

-- Location: FF_X41_Y3_N1
\U1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(16));

-- Location: LCCOMB_X41_Y3_N2
\U1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~34_combout\ = (\U1|count\(17) & (!\U1|Add0~33\)) # (!\U1|count\(17) & ((\U1|Add0~33\) # (GND)))
-- \U1|Add0~35\ = CARRY((!\U1|Add0~33\) # (!\U1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(17),
	datad => VCC,
	cin => \U1|Add0~33\,
	combout => \U1|Add0~34_combout\,
	cout => \U1|Add0~35\);

-- Location: LCCOMB_X40_Y6_N8
\U1|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~6_combout\ = (!\U1|Equal0~10_combout\ & \U1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~10_combout\,
	datad => \U1|Add0~34_combout\,
	combout => \U1|count~6_combout\);

-- Location: FF_X40_Y6_N9
\U1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(17));

-- Location: LCCOMB_X40_Y6_N12
\U1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~5_combout\ = (!\U1|count\(16) & \U1|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(16),
	datac => \U1|count\(17),
	combout => \U1|Equal0~5_combout\);

-- Location: LCCOMB_X41_Y3_N4
\U1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~36_combout\ = (\U1|count\(18) & (\U1|Add0~35\ $ (GND))) # (!\U1|count\(18) & (!\U1|Add0~35\ & VCC))
-- \U1|Add0~37\ = CARRY((\U1|count\(18) & !\U1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(18),
	datad => VCC,
	cin => \U1|Add0~35\,
	combout => \U1|Add0~36_combout\,
	cout => \U1|Add0~37\);

-- Location: LCCOMB_X40_Y6_N18
\U1|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~7_combout\ = (!\U1|Equal0~10_combout\ & \U1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~10_combout\,
	datad => \U1|Add0~36_combout\,
	combout => \U1|count~7_combout\);

-- Location: FF_X40_Y6_N19
\U1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(18));

-- Location: LCCOMB_X41_Y3_N6
\U1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~38_combout\ = (\U1|count\(19) & (!\U1|Add0~37\)) # (!\U1|count\(19) & ((\U1|Add0~37\) # (GND)))
-- \U1|Add0~39\ = CARRY((!\U1|Add0~37\) # (!\U1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(19),
	datad => VCC,
	cin => \U1|Add0~37\,
	combout => \U1|Add0~38_combout\,
	cout => \U1|Add0~39\);

-- Location: LCCOMB_X40_Y6_N10
\U1|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~8_combout\ = (!\U1|Equal0~10_combout\ & \U1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~10_combout\,
	datad => \U1|Add0~38_combout\,
	combout => \U1|count~8_combout\);

-- Location: FF_X40_Y6_N11
\U1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(19));

-- Location: LCCOMB_X41_Y3_N8
\U1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~40_combout\ = (\U1|count\(20) & (\U1|Add0~39\ $ (GND))) # (!\U1|count\(20) & (!\U1|Add0~39\ & VCC))
-- \U1|Add0~41\ = CARRY((\U1|count\(20) & !\U1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(20),
	datad => VCC,
	cin => \U1|Add0~39\,
	combout => \U1|Add0~40_combout\,
	cout => \U1|Add0~41\);

-- Location: LCCOMB_X40_Y6_N16
\U1|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~9_combout\ = (!\U1|Equal0~10_combout\ & \U1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~10_combout\,
	datac => \U1|Add0~40_combout\,
	combout => \U1|count~9_combout\);

-- Location: FF_X40_Y6_N17
\U1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(20));

-- Location: LCCOMB_X41_Y3_N10
\U1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~42_combout\ = (\U1|count\(21) & (!\U1|Add0~41\)) # (!\U1|count\(21) & ((\U1|Add0~41\) # (GND)))
-- \U1|Add0~43\ = CARRY((!\U1|Add0~41\) # (!\U1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(21),
	datad => VCC,
	cin => \U1|Add0~41\,
	combout => \U1|Add0~42_combout\,
	cout => \U1|Add0~43\);

-- Location: LCCOMB_X40_Y6_N20
\U1|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~10_combout\ = (\U1|Add0~42_combout\ & !\U1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~42_combout\,
	datad => \U1|Equal0~10_combout\,
	combout => \U1|count~10_combout\);

-- Location: FF_X40_Y6_N21
\U1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(21));

-- Location: LCCOMB_X41_Y3_N12
\U1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~44_combout\ = (\U1|count\(22) & (\U1|Add0~43\ $ (GND))) # (!\U1|count\(22) & (!\U1|Add0~43\ & VCC))
-- \U1|Add0~45\ = CARRY((\U1|count\(22) & !\U1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(22),
	datad => VCC,
	cin => \U1|Add0~43\,
	combout => \U1|Add0~44_combout\,
	cout => \U1|Add0~45\);

-- Location: FF_X41_Y3_N13
\U1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(22));

-- Location: LCCOMB_X41_Y3_N14
\U1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~46_combout\ = (\U1|count\(23) & (!\U1|Add0~45\)) # (!\U1|count\(23) & ((\U1|Add0~45\) # (GND)))
-- \U1|Add0~47\ = CARRY((!\U1|Add0~45\) # (!\U1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(23),
	datad => VCC,
	cin => \U1|Add0~45\,
	combout => \U1|Add0~46_combout\,
	cout => \U1|Add0~47\);

-- Location: LCCOMB_X40_Y6_N28
\U1|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|count~11_combout\ = (\U1|Add0~46_combout\ & !\U1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~46_combout\,
	datad => \U1|Equal0~10_combout\,
	combout => \U1|count~11_combout\);

-- Location: FF_X40_Y6_N29
\U1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(23));

-- Location: LCCOMB_X40_Y6_N6
\U1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~6_combout\ = (\U1|count\(21) & (\U1|count\(20) & (!\U1|count\(22) & \U1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(21),
	datab => \U1|count\(20),
	datac => \U1|count\(22),
	datad => \U1|count\(23),
	combout => \U1|Equal0~6_combout\);

-- Location: LCCOMB_X40_Y6_N30
\U1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~7_combout\ = (\U1|Equal0~5_combout\ & (\U1|count\(18) & (\U1|Equal0~6_combout\ & \U1|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~5_combout\,
	datab => \U1|count\(18),
	datac => \U1|Equal0~6_combout\,
	datad => \U1|count\(19),
	combout => \U1|Equal0~7_combout\);

-- Location: LCCOMB_X41_Y3_N16
\U1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~48_combout\ = (\U1|count\(24) & (\U1|Add0~47\ $ (GND))) # (!\U1|count\(24) & (!\U1|Add0~47\ & VCC))
-- \U1|Add0~49\ = CARRY((\U1|count\(24) & !\U1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(24),
	datad => VCC,
	cin => \U1|Add0~47\,
	combout => \U1|Add0~48_combout\,
	cout => \U1|Add0~49\);

-- Location: FF_X41_Y3_N17
\U1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(24));

-- Location: LCCOMB_X41_Y3_N18
\U1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~50_combout\ = (\U1|count\(25) & (!\U1|Add0~49\)) # (!\U1|count\(25) & ((\U1|Add0~49\) # (GND)))
-- \U1|Add0~51\ = CARRY((!\U1|Add0~49\) # (!\U1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(25),
	datad => VCC,
	cin => \U1|Add0~49\,
	combout => \U1|Add0~50_combout\,
	cout => \U1|Add0~51\);

-- Location: FF_X41_Y3_N19
\U1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(25));

-- Location: LCCOMB_X41_Y3_N20
\U1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~52_combout\ = (\U1|count\(26) & (\U1|Add0~51\ $ (GND))) # (!\U1|count\(26) & (!\U1|Add0~51\ & VCC))
-- \U1|Add0~53\ = CARRY((\U1|count\(26) & !\U1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(26),
	datad => VCC,
	cin => \U1|Add0~51\,
	combout => \U1|Add0~52_combout\,
	cout => \U1|Add0~53\);

-- Location: FF_X41_Y3_N21
\U1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(26));

-- Location: LCCOMB_X41_Y3_N22
\U1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~54_combout\ = (\U1|count\(27) & (!\U1|Add0~53\)) # (!\U1|count\(27) & ((\U1|Add0~53\) # (GND)))
-- \U1|Add0~55\ = CARRY((!\U1|Add0~53\) # (!\U1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(27),
	datad => VCC,
	cin => \U1|Add0~53\,
	combout => \U1|Add0~54_combout\,
	cout => \U1|Add0~55\);

-- Location: FF_X41_Y3_N23
\U1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(27));

-- Location: LCCOMB_X41_Y3_N24
\U1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~56_combout\ = (\U1|count\(28) & (\U1|Add0~55\ $ (GND))) # (!\U1|count\(28) & (!\U1|Add0~55\ & VCC))
-- \U1|Add0~57\ = CARRY((\U1|count\(28) & !\U1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(28),
	datad => VCC,
	cin => \U1|Add0~55\,
	combout => \U1|Add0~56_combout\,
	cout => \U1|Add0~57\);

-- Location: FF_X41_Y3_N25
\U1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(28));

-- Location: LCCOMB_X41_Y3_N26
\U1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~58_combout\ = (\U1|count\(29) & (!\U1|Add0~57\)) # (!\U1|count\(29) & ((\U1|Add0~57\) # (GND)))
-- \U1|Add0~59\ = CARRY((!\U1|Add0~57\) # (!\U1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(29),
	datad => VCC,
	cin => \U1|Add0~57\,
	combout => \U1|Add0~58_combout\,
	cout => \U1|Add0~59\);

-- Location: FF_X41_Y3_N27
\U1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(29));

-- Location: LCCOMB_X41_Y3_N28
\U1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~60_combout\ = (\U1|count\(30) & (\U1|Add0~59\ $ (GND))) # (!\U1|count\(30) & (!\U1|Add0~59\ & VCC))
-- \U1|Add0~61\ = CARRY((\U1|count\(30) & !\U1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(30),
	datad => VCC,
	cin => \U1|Add0~59\,
	combout => \U1|Add0~60_combout\,
	cout => \U1|Add0~61\);

-- Location: FF_X41_Y3_N29
\U1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(30));

-- Location: LCCOMB_X41_Y3_N30
\U1|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~62_combout\ = \U1|count\(31) $ (\U1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(31),
	cin => \U1|Add0~61\,
	combout => \U1|Add0~62_combout\);

-- Location: FF_X41_Y3_N31
\U1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(31));

-- Location: LCCOMB_X42_Y3_N30
\U1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~9_combout\ = (!\U1|count\(30) & (!\U1|count\(31) & (!\U1|count\(29) & !\U1|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(30),
	datab => \U1|count\(31),
	datac => \U1|count\(29),
	datad => \U1|count\(28),
	combout => \U1|Equal0~9_combout\);

-- Location: LCCOMB_X40_Y4_N12
\U1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|count\(11) & (!\U1|count\(8) & (\U1|count\(10) & !\U1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(11),
	datab => \U1|count\(8),
	datac => \U1|count\(10),
	datad => \U1|count\(9),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X40_Y4_N18
\U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|count\(3) & (\U1|count\(0) & (!\U1|count\(1) & !\U1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(3),
	datab => \U1|count\(0),
	datac => \U1|count\(1),
	datad => \U1|count\(2),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y4_N4
\U1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\U1|count\(12) & (\U1|count\(13) & (\U1|count\(15) & !\U1|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(12),
	datab => \U1|count\(13),
	datac => \U1|count\(15),
	datad => \U1|count\(14),
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y4_N10
\U1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\U1|count\(7) & (!\U1|count\(6) & (!\U1|count\(4) & \U1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(7),
	datab => \U1|count\(6),
	datac => \U1|count\(4),
	datad => \U1|count\(5),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y4_N22
\U1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = (\U1|Equal0~2_combout\ & (\U1|Equal0~0_combout\ & (\U1|Equal0~3_combout\ & \U1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~2_combout\,
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Equal0~3_combout\,
	datad => \U1|Equal0~1_combout\,
	combout => \U1|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y3_N0
\U1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~8_combout\ = (!\U1|count\(27) & (!\U1|count\(26) & (!\U1|count\(24) & !\U1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(27),
	datab => \U1|count\(26),
	datac => \U1|count\(24),
	datad => \U1|count\(25),
	combout => \U1|Equal0~8_combout\);

-- Location: LCCOMB_X40_Y4_N0
\U1|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal0~10_combout\ = (\U1|Equal0~7_combout\ & (\U1|Equal0~9_combout\ & (\U1|Equal0~4_combout\ & \U1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~7_combout\,
	datab => \U1|Equal0~9_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~8_combout\,
	combout => \U1|Equal0~10_combout\);

-- Location: LCCOMB_X47_Y13_N6
\U1|select_yShift[3]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[3]~50_combout\ = (\U1|select_yShift\(3) & ((\U1|arriba~combout\ & (\U1|select_yShift[2]~49\ & VCC)) # (!\U1|arriba~combout\ & (!\U1|select_yShift[2]~49\)))) # (!\U1|select_yShift\(3) & ((\U1|arriba~combout\ & (!\U1|select_yShift[2]~49\)) 
-- # (!\U1|arriba~combout\ & ((\U1|select_yShift[2]~49\) # (GND)))))
-- \U1|select_yShift[3]~51\ = CARRY((\U1|select_yShift\(3) & (!\U1|arriba~combout\ & !\U1|select_yShift[2]~49\)) # (!\U1|select_yShift\(3) & ((!\U1|select_yShift[2]~49\) # (!\U1|arriba~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(3),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[2]~49\,
	combout => \U1|select_yShift[3]~50_combout\,
	cout => \U1|select_yShift[3]~51\);

-- Location: LCCOMB_X47_Y13_N8
\U1|select_yShift[4]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[4]~52_combout\ = ((\U1|select_yShift\(4) $ (\U1|arriba~combout\ $ (!\U1|select_yShift[3]~51\)))) # (GND)
-- \U1|select_yShift[4]~53\ = CARRY((\U1|select_yShift\(4) & ((\U1|arriba~combout\) # (!\U1|select_yShift[3]~51\))) # (!\U1|select_yShift\(4) & (\U1|arriba~combout\ & !\U1|select_yShift[3]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(4),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[3]~51\,
	combout => \U1|select_yShift[4]~52_combout\,
	cout => \U1|select_yShift[4]~53\);

-- Location: FF_X47_Y13_N9
\U1|select_yShift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[4]~52_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(4));

-- Location: LCCOMB_X47_Y13_N10
\U1|select_yShift[5]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[5]~54_combout\ = (\U1|select_yShift\(5) & ((\U1|arriba~combout\ & (\U1|select_yShift[4]~53\ & VCC)) # (!\U1|arriba~combout\ & (!\U1|select_yShift[4]~53\)))) # (!\U1|select_yShift\(5) & ((\U1|arriba~combout\ & (!\U1|select_yShift[4]~53\)) 
-- # (!\U1|arriba~combout\ & ((\U1|select_yShift[4]~53\) # (GND)))))
-- \U1|select_yShift[5]~55\ = CARRY((\U1|select_yShift\(5) & (!\U1|arriba~combout\ & !\U1|select_yShift[4]~53\)) # (!\U1|select_yShift\(5) & ((!\U1|select_yShift[4]~53\) # (!\U1|arriba~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(5),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[4]~53\,
	combout => \U1|select_yShift[5]~54_combout\,
	cout => \U1|select_yShift[5]~55\);

-- Location: FF_X47_Y13_N11
\U1|select_yShift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[5]~54_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(5));

-- Location: LCCOMB_X47_Y13_N12
\U1|select_yShift[6]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[6]~56_combout\ = ((\U1|select_yShift\(6) $ (\U1|arriba~combout\ $ (!\U1|select_yShift[5]~55\)))) # (GND)
-- \U1|select_yShift[6]~57\ = CARRY((\U1|select_yShift\(6) & ((\U1|arriba~combout\) # (!\U1|select_yShift[5]~55\))) # (!\U1|select_yShift\(6) & (\U1|arriba~combout\ & !\U1|select_yShift[5]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(6),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[5]~55\,
	combout => \U1|select_yShift[6]~56_combout\,
	cout => \U1|select_yShift[6]~57\);

-- Location: FF_X47_Y13_N13
\U1|select_yShift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[6]~56_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(6));

-- Location: LCCOMB_X47_Y13_N14
\U1|select_yShift[7]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[7]~58_combout\ = (\U1|select_yShift\(7) & ((\U1|arriba~combout\ & (\U1|select_yShift[6]~57\ & VCC)) # (!\U1|arriba~combout\ & (!\U1|select_yShift[6]~57\)))) # (!\U1|select_yShift\(7) & ((\U1|arriba~combout\ & (!\U1|select_yShift[6]~57\)) 
-- # (!\U1|arriba~combout\ & ((\U1|select_yShift[6]~57\) # (GND)))))
-- \U1|select_yShift[7]~59\ = CARRY((\U1|select_yShift\(7) & (!\U1|arriba~combout\ & !\U1|select_yShift[6]~57\)) # (!\U1|select_yShift\(7) & ((!\U1|select_yShift[6]~57\) # (!\U1|arriba~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(7),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[6]~57\,
	combout => \U1|select_yShift[7]~58_combout\,
	cout => \U1|select_yShift[7]~59\);

-- Location: FF_X47_Y13_N15
\U1|select_yShift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[7]~58_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(7));

-- Location: LCCOMB_X47_Y13_N16
\U1|select_yShift[8]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[8]~60_combout\ = ((\U1|select_yShift\(8) $ (\U1|arriba~combout\ $ (!\U1|select_yShift[7]~59\)))) # (GND)
-- \U1|select_yShift[8]~61\ = CARRY((\U1|select_yShift\(8) & ((\U1|arriba~combout\) # (!\U1|select_yShift[7]~59\))) # (!\U1|select_yShift\(8) & (\U1|arriba~combout\ & !\U1|select_yShift[7]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(8),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[7]~59\,
	combout => \U1|select_yShift[8]~60_combout\,
	cout => \U1|select_yShift[8]~61\);

-- Location: FF_X47_Y13_N17
\U1|select_yShift[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[8]~60_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(8));

-- Location: LCCOMB_X47_Y13_N18
\U1|select_yShift[9]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[9]~62_combout\ = (\U1|arriba~combout\ & ((\U1|select_yShift\(9) & (\U1|select_yShift[8]~61\ & VCC)) # (!\U1|select_yShift\(9) & (!\U1|select_yShift[8]~61\)))) # (!\U1|arriba~combout\ & ((\U1|select_yShift\(9) & 
-- (!\U1|select_yShift[8]~61\)) # (!\U1|select_yShift\(9) & ((\U1|select_yShift[8]~61\) # (GND)))))
-- \U1|select_yShift[9]~63\ = CARRY((\U1|arriba~combout\ & (!\U1|select_yShift\(9) & !\U1|select_yShift[8]~61\)) # (!\U1|arriba~combout\ & ((!\U1|select_yShift[8]~61\) # (!\U1|select_yShift\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(9),
	datad => VCC,
	cin => \U1|select_yShift[8]~61\,
	combout => \U1|select_yShift[9]~62_combout\,
	cout => \U1|select_yShift[9]~63\);

-- Location: FF_X47_Y13_N19
\U1|select_yShift[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[9]~62_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(9));

-- Location: LCCOMB_X47_Y13_N20
\U1|select_yShift[10]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[10]~64_combout\ = ((\U1|arriba~combout\ $ (\U1|select_yShift\(10) $ (!\U1|select_yShift[9]~63\)))) # (GND)
-- \U1|select_yShift[10]~65\ = CARRY((\U1|arriba~combout\ & ((\U1|select_yShift\(10)) # (!\U1|select_yShift[9]~63\))) # (!\U1|arriba~combout\ & (\U1|select_yShift\(10) & !\U1|select_yShift[9]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(10),
	datad => VCC,
	cin => \U1|select_yShift[9]~63\,
	combout => \U1|select_yShift[10]~64_combout\,
	cout => \U1|select_yShift[10]~65\);

-- Location: FF_X47_Y13_N21
\U1|select_yShift[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[10]~64_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(10));

-- Location: LCCOMB_X47_Y13_N22
\U1|select_yShift[11]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[11]~66_combout\ = (\U1|arriba~combout\ & ((\U1|select_yShift\(11) & (\U1|select_yShift[10]~65\ & VCC)) # (!\U1|select_yShift\(11) & (!\U1|select_yShift[10]~65\)))) # (!\U1|arriba~combout\ & ((\U1|select_yShift\(11) & 
-- (!\U1|select_yShift[10]~65\)) # (!\U1|select_yShift\(11) & ((\U1|select_yShift[10]~65\) # (GND)))))
-- \U1|select_yShift[11]~67\ = CARRY((\U1|arriba~combout\ & (!\U1|select_yShift\(11) & !\U1|select_yShift[10]~65\)) # (!\U1|arriba~combout\ & ((!\U1|select_yShift[10]~65\) # (!\U1|select_yShift\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(11),
	datad => VCC,
	cin => \U1|select_yShift[10]~65\,
	combout => \U1|select_yShift[11]~66_combout\,
	cout => \U1|select_yShift[11]~67\);

-- Location: FF_X47_Y13_N23
\U1|select_yShift[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[11]~66_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(11));

-- Location: LCCOMB_X47_Y13_N24
\U1|select_yShift[12]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[12]~68_combout\ = ((\U1|arriba~combout\ $ (\U1|select_yShift\(12) $ (!\U1|select_yShift[11]~67\)))) # (GND)
-- \U1|select_yShift[12]~69\ = CARRY((\U1|arriba~combout\ & ((\U1|select_yShift\(12)) # (!\U1|select_yShift[11]~67\))) # (!\U1|arriba~combout\ & (\U1|select_yShift\(12) & !\U1|select_yShift[11]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(12),
	datad => VCC,
	cin => \U1|select_yShift[11]~67\,
	combout => \U1|select_yShift[12]~68_combout\,
	cout => \U1|select_yShift[12]~69\);

-- Location: FF_X47_Y13_N25
\U1|select_yShift[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[12]~68_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(12));

-- Location: LCCOMB_X47_Y8_N6
\U1|select_yShift[0]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~36_combout\ = (!\U1|select_yShift\(11) & (!\U1|select_yShift\(12) & (!\U1|select_yShift\(10) & !\U1|select_yShift\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(11),
	datab => \U1|select_yShift\(12),
	datac => \U1|select_yShift\(10),
	datad => \U1|select_yShift\(9),
	combout => \U1|select_yShift[0]~36_combout\);

-- Location: LCCOMB_X47_Y8_N28
\U1|select_yShift[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~34_combout\ = (!\U1|select_yShift\(3) & (!\U1|select_yShift\(2) & (!\U1|select_yShift\(1) & !\U1|select_yShift\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(3),
	datab => \U1|select_yShift\(2),
	datac => \U1|select_yShift\(1),
	datad => \U1|select_yShift\(4),
	combout => \U1|select_yShift[0]~34_combout\);

-- Location: LCCOMB_X47_Y13_N26
\U1|select_yShift[13]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[13]~70_combout\ = (\U1|arriba~combout\ & ((\U1|select_yShift\(13) & (\U1|select_yShift[12]~69\ & VCC)) # (!\U1|select_yShift\(13) & (!\U1|select_yShift[12]~69\)))) # (!\U1|arriba~combout\ & ((\U1|select_yShift\(13) & 
-- (!\U1|select_yShift[12]~69\)) # (!\U1|select_yShift\(13) & ((\U1|select_yShift[12]~69\) # (GND)))))
-- \U1|select_yShift[13]~71\ = CARRY((\U1|arriba~combout\ & (!\U1|select_yShift\(13) & !\U1|select_yShift[12]~69\)) # (!\U1|arriba~combout\ & ((!\U1|select_yShift[12]~69\) # (!\U1|select_yShift\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(13),
	datad => VCC,
	cin => \U1|select_yShift[12]~69\,
	combout => \U1|select_yShift[13]~70_combout\,
	cout => \U1|select_yShift[13]~71\);

-- Location: FF_X47_Y13_N27
\U1|select_yShift[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[13]~70_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(13));

-- Location: LCCOMB_X47_Y13_N28
\U1|select_yShift[14]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[14]~72_combout\ = ((\U1|arriba~combout\ $ (\U1|select_yShift\(14) $ (!\U1|select_yShift[13]~71\)))) # (GND)
-- \U1|select_yShift[14]~73\ = CARRY((\U1|arriba~combout\ & ((\U1|select_yShift\(14)) # (!\U1|select_yShift[13]~71\))) # (!\U1|arriba~combout\ & (\U1|select_yShift\(14) & !\U1|select_yShift[13]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(14),
	datad => VCC,
	cin => \U1|select_yShift[13]~71\,
	combout => \U1|select_yShift[14]~72_combout\,
	cout => \U1|select_yShift[14]~73\);

-- Location: FF_X47_Y13_N29
\U1|select_yShift[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[14]~72_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(14));

-- Location: LCCOMB_X47_Y13_N30
\U1|select_yShift[15]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[15]~74_combout\ = (\U1|arriba~combout\ & ((\U1|select_yShift\(15) & (\U1|select_yShift[14]~73\ & VCC)) # (!\U1|select_yShift\(15) & (!\U1|select_yShift[14]~73\)))) # (!\U1|arriba~combout\ & ((\U1|select_yShift\(15) & 
-- (!\U1|select_yShift[14]~73\)) # (!\U1|select_yShift\(15) & ((\U1|select_yShift[14]~73\) # (GND)))))
-- \U1|select_yShift[15]~75\ = CARRY((\U1|arriba~combout\ & (!\U1|select_yShift\(15) & !\U1|select_yShift[14]~73\)) # (!\U1|arriba~combout\ & ((!\U1|select_yShift[14]~73\) # (!\U1|select_yShift\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(15),
	datad => VCC,
	cin => \U1|select_yShift[14]~73\,
	combout => \U1|select_yShift[15]~74_combout\,
	cout => \U1|select_yShift[15]~75\);

-- Location: FF_X47_Y13_N31
\U1|select_yShift[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[15]~74_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(15));

-- Location: LCCOMB_X47_Y12_N0
\U1|select_yShift[16]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[16]~76_combout\ = ((\U1|select_yShift\(16) $ (\U1|arriba~combout\ $ (!\U1|select_yShift[15]~75\)))) # (GND)
-- \U1|select_yShift[16]~77\ = CARRY((\U1|select_yShift\(16) & ((\U1|arriba~combout\) # (!\U1|select_yShift[15]~75\))) # (!\U1|select_yShift\(16) & (\U1|arriba~combout\ & !\U1|select_yShift[15]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(16),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[15]~75\,
	combout => \U1|select_yShift[16]~76_combout\,
	cout => \U1|select_yShift[16]~77\);

-- Location: FF_X47_Y12_N1
\U1|select_yShift[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[16]~76_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(16));

-- Location: LCCOMB_X47_Y8_N4
\U1|select_yShift[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~37_combout\ = (!\U1|select_yShift\(15) & (!\U1|select_yShift\(16) & (!\U1|select_yShift\(14) & !\U1|select_yShift\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(15),
	datab => \U1|select_yShift\(16),
	datac => \U1|select_yShift\(14),
	datad => \U1|select_yShift\(13),
	combout => \U1|select_yShift[0]~37_combout\);

-- Location: LCCOMB_X47_Y11_N0
\U1|select_yShift[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~35_combout\ = (!\U1|select_yShift\(6) & (!\U1|select_yShift\(7) & (!\U1|select_yShift\(8) & !\U1|select_yShift\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(6),
	datab => \U1|select_yShift\(7),
	datac => \U1|select_yShift\(8),
	datad => \U1|select_yShift\(5),
	combout => \U1|select_yShift[0]~35_combout\);

-- Location: LCCOMB_X47_Y8_N10
\U1|select_yShift[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~38_combout\ = (\U1|select_yShift[0]~36_combout\ & (\U1|select_yShift[0]~34_combout\ & (\U1|select_yShift[0]~37_combout\ & \U1|select_yShift[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift[0]~36_combout\,
	datab => \U1|select_yShift[0]~34_combout\,
	datac => \U1|select_yShift[0]~37_combout\,
	datad => \U1|select_yShift[0]~35_combout\,
	combout => \U1|select_yShift[0]~38_combout\);

-- Location: LCCOMB_X47_Y12_N2
\U1|select_yShift[17]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[17]~78_combout\ = (\U1|select_yShift\(17) & ((\U1|arriba~combout\ & (\U1|select_yShift[16]~77\ & VCC)) # (!\U1|arriba~combout\ & (!\U1|select_yShift[16]~77\)))) # (!\U1|select_yShift\(17) & ((\U1|arriba~combout\ & 
-- (!\U1|select_yShift[16]~77\)) # (!\U1|arriba~combout\ & ((\U1|select_yShift[16]~77\) # (GND)))))
-- \U1|select_yShift[17]~79\ = CARRY((\U1|select_yShift\(17) & (!\U1|arriba~combout\ & !\U1|select_yShift[16]~77\)) # (!\U1|select_yShift\(17) & ((!\U1|select_yShift[16]~77\) # (!\U1|arriba~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(17),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[16]~77\,
	combout => \U1|select_yShift[17]~78_combout\,
	cout => \U1|select_yShift[17]~79\);

-- Location: FF_X47_Y12_N3
\U1|select_yShift[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[17]~78_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(17));

-- Location: LCCOMB_X47_Y12_N4
\U1|select_yShift[18]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[18]~80_combout\ = ((\U1|select_yShift\(18) $ (\U1|arriba~combout\ $ (!\U1|select_yShift[17]~79\)))) # (GND)
-- \U1|select_yShift[18]~81\ = CARRY((\U1|select_yShift\(18) & ((\U1|arriba~combout\) # (!\U1|select_yShift[17]~79\))) # (!\U1|select_yShift\(18) & (\U1|arriba~combout\ & !\U1|select_yShift[17]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(18),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[17]~79\,
	combout => \U1|select_yShift[18]~80_combout\,
	cout => \U1|select_yShift[18]~81\);

-- Location: FF_X47_Y12_N5
\U1|select_yShift[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[18]~80_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(18));

-- Location: LCCOMB_X47_Y12_N6
\U1|select_yShift[19]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[19]~82_combout\ = (\U1|select_yShift\(19) & ((\U1|arriba~combout\ & (\U1|select_yShift[18]~81\ & VCC)) # (!\U1|arriba~combout\ & (!\U1|select_yShift[18]~81\)))) # (!\U1|select_yShift\(19) & ((\U1|arriba~combout\ & 
-- (!\U1|select_yShift[18]~81\)) # (!\U1|arriba~combout\ & ((\U1|select_yShift[18]~81\) # (GND)))))
-- \U1|select_yShift[19]~83\ = CARRY((\U1|select_yShift\(19) & (!\U1|arriba~combout\ & !\U1|select_yShift[18]~81\)) # (!\U1|select_yShift\(19) & ((!\U1|select_yShift[18]~81\) # (!\U1|arriba~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(19),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[18]~81\,
	combout => \U1|select_yShift[19]~82_combout\,
	cout => \U1|select_yShift[19]~83\);

-- Location: FF_X47_Y12_N7
\U1|select_yShift[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[19]~82_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(19));

-- Location: LCCOMB_X47_Y12_N8
\U1|select_yShift[20]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[20]~84_combout\ = ((\U1|select_yShift\(20) $ (\U1|arriba~combout\ $ (!\U1|select_yShift[19]~83\)))) # (GND)
-- \U1|select_yShift[20]~85\ = CARRY((\U1|select_yShift\(20) & ((\U1|arriba~combout\) # (!\U1|select_yShift[19]~83\))) # (!\U1|select_yShift\(20) & (\U1|arriba~combout\ & !\U1|select_yShift[19]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(20),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[19]~83\,
	combout => \U1|select_yShift[20]~84_combout\,
	cout => \U1|select_yShift[20]~85\);

-- Location: FF_X47_Y12_N9
\U1|select_yShift[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[20]~84_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(20));

-- Location: LCCOMB_X47_Y8_N20
\U1|select_yShift[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~39_combout\ = (!\U1|select_yShift\(19) & (!\U1|select_yShift\(17) & (!\U1|select_yShift\(18) & !\U1|select_yShift\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(19),
	datab => \U1|select_yShift\(17),
	datac => \U1|select_yShift\(18),
	datad => \U1|select_yShift\(20),
	combout => \U1|select_yShift[0]~39_combout\);

-- Location: LCCOMB_X47_Y12_N10
\U1|select_yShift[21]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[21]~86_combout\ = (\U1|select_yShift\(21) & ((\U1|arriba~combout\ & (\U1|select_yShift[20]~85\ & VCC)) # (!\U1|arriba~combout\ & (!\U1|select_yShift[20]~85\)))) # (!\U1|select_yShift\(21) & ((\U1|arriba~combout\ & 
-- (!\U1|select_yShift[20]~85\)) # (!\U1|arriba~combout\ & ((\U1|select_yShift[20]~85\) # (GND)))))
-- \U1|select_yShift[21]~87\ = CARRY((\U1|select_yShift\(21) & (!\U1|arriba~combout\ & !\U1|select_yShift[20]~85\)) # (!\U1|select_yShift\(21) & ((!\U1|select_yShift[20]~85\) # (!\U1|arriba~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(21),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[20]~85\,
	combout => \U1|select_yShift[21]~86_combout\,
	cout => \U1|select_yShift[21]~87\);

-- Location: FF_X47_Y12_N11
\U1|select_yShift[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[21]~86_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(21));

-- Location: LCCOMB_X47_Y12_N12
\U1|select_yShift[22]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[22]~88_combout\ = ((\U1|select_yShift\(22) $ (\U1|arriba~combout\ $ (!\U1|select_yShift[21]~87\)))) # (GND)
-- \U1|select_yShift[22]~89\ = CARRY((\U1|select_yShift\(22) & ((\U1|arriba~combout\) # (!\U1|select_yShift[21]~87\))) # (!\U1|select_yShift\(22) & (\U1|arriba~combout\ & !\U1|select_yShift[21]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(22),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[21]~87\,
	combout => \U1|select_yShift[22]~88_combout\,
	cout => \U1|select_yShift[22]~89\);

-- Location: FF_X47_Y12_N13
\U1|select_yShift[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[22]~88_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(22));

-- Location: LCCOMB_X47_Y12_N14
\U1|select_yShift[23]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[23]~90_combout\ = (\U1|select_yShift\(23) & ((\U1|arriba~combout\ & (\U1|select_yShift[22]~89\ & VCC)) # (!\U1|arriba~combout\ & (!\U1|select_yShift[22]~89\)))) # (!\U1|select_yShift\(23) & ((\U1|arriba~combout\ & 
-- (!\U1|select_yShift[22]~89\)) # (!\U1|arriba~combout\ & ((\U1|select_yShift[22]~89\) # (GND)))))
-- \U1|select_yShift[23]~91\ = CARRY((\U1|select_yShift\(23) & (!\U1|arriba~combout\ & !\U1|select_yShift[22]~89\)) # (!\U1|select_yShift\(23) & ((!\U1|select_yShift[22]~89\) # (!\U1|arriba~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(23),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[22]~89\,
	combout => \U1|select_yShift[23]~90_combout\,
	cout => \U1|select_yShift[23]~91\);

-- Location: FF_X47_Y12_N15
\U1|select_yShift[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[23]~90_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(23));

-- Location: LCCOMB_X47_Y12_N16
\U1|select_yShift[24]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[24]~92_combout\ = ((\U1|arriba~combout\ $ (\U1|select_yShift\(24) $ (!\U1|select_yShift[23]~91\)))) # (GND)
-- \U1|select_yShift[24]~93\ = CARRY((\U1|arriba~combout\ & ((\U1|select_yShift\(24)) # (!\U1|select_yShift[23]~91\))) # (!\U1|arriba~combout\ & (\U1|select_yShift\(24) & !\U1|select_yShift[23]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(24),
	datad => VCC,
	cin => \U1|select_yShift[23]~91\,
	combout => \U1|select_yShift[24]~92_combout\,
	cout => \U1|select_yShift[24]~93\);

-- Location: FF_X47_Y12_N17
\U1|select_yShift[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[24]~92_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(24));

-- Location: LCCOMB_X47_Y8_N22
\U1|select_yShift[0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~40_combout\ = (!\U1|select_yShift\(22) & (!\U1|select_yShift\(21) & (!\U1|select_yShift\(23) & !\U1|select_yShift\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(22),
	datab => \U1|select_yShift\(21),
	datac => \U1|select_yShift\(23),
	datad => \U1|select_yShift\(24),
	combout => \U1|select_yShift[0]~40_combout\);

-- Location: LCCOMB_X47_Y12_N18
\U1|select_yShift[25]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[25]~94_combout\ = (\U1|arriba~combout\ & ((\U1|select_yShift\(25) & (\U1|select_yShift[24]~93\ & VCC)) # (!\U1|select_yShift\(25) & (!\U1|select_yShift[24]~93\)))) # (!\U1|arriba~combout\ & ((\U1|select_yShift\(25) & 
-- (!\U1|select_yShift[24]~93\)) # (!\U1|select_yShift\(25) & ((\U1|select_yShift[24]~93\) # (GND)))))
-- \U1|select_yShift[25]~95\ = CARRY((\U1|arriba~combout\ & (!\U1|select_yShift\(25) & !\U1|select_yShift[24]~93\)) # (!\U1|arriba~combout\ & ((!\U1|select_yShift[24]~93\) # (!\U1|select_yShift\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(25),
	datad => VCC,
	cin => \U1|select_yShift[24]~93\,
	combout => \U1|select_yShift[25]~94_combout\,
	cout => \U1|select_yShift[25]~95\);

-- Location: FF_X47_Y12_N19
\U1|select_yShift[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[25]~94_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(25));

-- Location: LCCOMB_X47_Y12_N20
\U1|select_yShift[26]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[26]~96_combout\ = ((\U1|arriba~combout\ $ (\U1|select_yShift\(26) $ (!\U1|select_yShift[25]~95\)))) # (GND)
-- \U1|select_yShift[26]~97\ = CARRY((\U1|arriba~combout\ & ((\U1|select_yShift\(26)) # (!\U1|select_yShift[25]~95\))) # (!\U1|arriba~combout\ & (\U1|select_yShift\(26) & !\U1|select_yShift[25]~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(26),
	datad => VCC,
	cin => \U1|select_yShift[25]~95\,
	combout => \U1|select_yShift[26]~96_combout\,
	cout => \U1|select_yShift[26]~97\);

-- Location: FF_X47_Y12_N21
\U1|select_yShift[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[26]~96_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(26));

-- Location: LCCOMB_X47_Y12_N22
\U1|select_yShift[27]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[27]~98_combout\ = (\U1|arriba~combout\ & ((\U1|select_yShift\(27) & (\U1|select_yShift[26]~97\ & VCC)) # (!\U1|select_yShift\(27) & (!\U1|select_yShift[26]~97\)))) # (!\U1|arriba~combout\ & ((\U1|select_yShift\(27) & 
-- (!\U1|select_yShift[26]~97\)) # (!\U1|select_yShift\(27) & ((\U1|select_yShift[26]~97\) # (GND)))))
-- \U1|select_yShift[27]~99\ = CARRY((\U1|arriba~combout\ & (!\U1|select_yShift\(27) & !\U1|select_yShift[26]~97\)) # (!\U1|arriba~combout\ & ((!\U1|select_yShift[26]~97\) # (!\U1|select_yShift\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(27),
	datad => VCC,
	cin => \U1|select_yShift[26]~97\,
	combout => \U1|select_yShift[27]~98_combout\,
	cout => \U1|select_yShift[27]~99\);

-- Location: FF_X47_Y12_N23
\U1|select_yShift[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|select_yShift[27]~98_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(27));

-- Location: LCCOMB_X47_Y12_N24
\U1|select_yShift[28]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[28]~100_combout\ = ((\U1|arriba~combout\ $ (\U1|select_yShift\(28) $ (!\U1|select_yShift[27]~99\)))) # (GND)
-- \U1|select_yShift[28]~101\ = CARRY((\U1|arriba~combout\ & ((\U1|select_yShift\(28)) # (!\U1|select_yShift[27]~99\))) # (!\U1|arriba~combout\ & (\U1|select_yShift\(28) & !\U1|select_yShift[27]~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(28),
	datad => VCC,
	cin => \U1|select_yShift[27]~99\,
	combout => \U1|select_yShift[28]~100_combout\,
	cout => \U1|select_yShift[28]~101\);

-- Location: FF_X47_Y12_N25
\U1|select_yShift[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|select_yShift[28]~100_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(28));

-- Location: LCCOMB_X47_Y12_N26
\U1|select_yShift[29]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[29]~102_combout\ = (\U1|arriba~combout\ & ((\U1|select_yShift\(29) & (\U1|select_yShift[28]~101\ & VCC)) # (!\U1|select_yShift\(29) & (!\U1|select_yShift[28]~101\)))) # (!\U1|arriba~combout\ & ((\U1|select_yShift\(29) & 
-- (!\U1|select_yShift[28]~101\)) # (!\U1|select_yShift\(29) & ((\U1|select_yShift[28]~101\) # (GND)))))
-- \U1|select_yShift[29]~103\ = CARRY((\U1|arriba~combout\ & (!\U1|select_yShift\(29) & !\U1|select_yShift[28]~101\)) # (!\U1|arriba~combout\ & ((!\U1|select_yShift[28]~101\) # (!\U1|select_yShift\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(29),
	datad => VCC,
	cin => \U1|select_yShift[28]~101\,
	combout => \U1|select_yShift[29]~102_combout\,
	cout => \U1|select_yShift[29]~103\);

-- Location: FF_X47_Y12_N27
\U1|select_yShift[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|select_yShift[29]~102_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(29));

-- Location: LCCOMB_X47_Y8_N8
\U1|select_yShift[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~41_combout\ = (!\U1|select_yShift\(27) & (!\U1|select_yShift\(28) & (!\U1|select_yShift\(26) & !\U1|select_yShift\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(27),
	datab => \U1|select_yShift\(28),
	datac => \U1|select_yShift\(26),
	datad => \U1|select_yShift\(25),
	combout => \U1|select_yShift[0]~41_combout\);

-- Location: LCCOMB_X47_Y12_N28
\U1|select_yShift[30]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[30]~104_combout\ = ((\U1|arriba~combout\ $ (\U1|select_yShift\(30) $ (!\U1|select_yShift[29]~103\)))) # (GND)
-- \U1|select_yShift[30]~105\ = CARRY((\U1|arriba~combout\ & ((\U1|select_yShift\(30)) # (!\U1|select_yShift[29]~103\))) # (!\U1|arriba~combout\ & (\U1|select_yShift\(30) & !\U1|select_yShift[29]~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|select_yShift\(30),
	datad => VCC,
	cin => \U1|select_yShift[29]~103\,
	combout => \U1|select_yShift[30]~104_combout\,
	cout => \U1|select_yShift[30]~105\);

-- Location: FF_X47_Y12_N29
\U1|select_yShift[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|select_yShift[30]~104_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(30));

-- Location: LCCOMB_X47_Y8_N18
\U1|select_yShift[0]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~42_combout\ = (!\U1|select_yShift\(29) & (\U1|select_yShift[0]~41_combout\ & !\U1|select_yShift\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(29),
	datac => \U1|select_yShift[0]~41_combout\,
	datad => \U1|select_yShift\(30),
	combout => \U1|select_yShift[0]~42_combout\);

-- Location: LCCOMB_X47_Y8_N0
\U1|select_yShift[0]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~43_combout\ = (\U1|select_yShift[0]~38_combout\ & (\U1|select_yShift[0]~39_combout\ & (\U1|select_yShift[0]~40_combout\ & \U1|select_yShift[0]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift[0]~38_combout\,
	datab => \U1|select_yShift[0]~39_combout\,
	datac => \U1|select_yShift[0]~40_combout\,
	datad => \U1|select_yShift[0]~42_combout\,
	combout => \U1|select_yShift[0]~43_combout\);

-- Location: LCCOMB_X47_Y12_N30
\U1|select_yShift[31]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[31]~106_combout\ = \U1|select_yShift\(31) $ (\U1|select_yShift[30]~105\ $ (\U1|arriba~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(31),
	datad => \U1|arriba~combout\,
	cin => \U1|select_yShift[30]~105\,
	combout => \U1|select_yShift[31]~106_combout\);

-- Location: FF_X47_Y12_N31
\U1|select_yShift[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|select_yShift[31]~106_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(31));

-- Location: LCCOMB_X46_Y13_N16
\U1|select_yShift[0]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~44_combout\ = (\U1|select_yShift\(31)) # ((\U1|select_yShift[0]~43_combout\ & ((!\U1|arriba~combout\) # (!\U1|select_yShift\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(0),
	datab => \U1|select_yShift[0]~43_combout\,
	datac => \U1|select_yShift\(31),
	datad => \U1|arriba~combout\,
	combout => \U1|select_yShift[0]~44_combout\);

-- Location: LCCOMB_X46_Y13_N26
\U1|select_yShift[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[0]~45_combout\ = (\U1|Equal0~10_combout\ & ((\U1|arriba~combout\ & ((!\U1|select_yShift[0]~44_combout\))) # (!\U1|arriba~combout\ & (\U1|abajo~combout\ & \U1|select_yShift[0]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|arriba~combout\,
	datab => \U1|abajo~combout\,
	datac => \U1|Equal0~10_combout\,
	datad => \U1|select_yShift[0]~44_combout\,
	combout => \U1|select_yShift[0]~45_combout\);

-- Location: FF_X47_Y13_N1
\U1|select_yShift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[0]~32_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(0));

-- Location: LCCOMB_X47_Y13_N2
\U1|select_yShift[1]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[1]~46_combout\ = (\U1|select_yShift\(1) & ((\U1|arriba~combout\ & (\U1|select_yShift[0]~33\ & VCC)) # (!\U1|arriba~combout\ & (!\U1|select_yShift[0]~33\)))) # (!\U1|select_yShift\(1) & ((\U1|arriba~combout\ & (!\U1|select_yShift[0]~33\)) 
-- # (!\U1|arriba~combout\ & ((\U1|select_yShift[0]~33\) # (GND)))))
-- \U1|select_yShift[1]~47\ = CARRY((\U1|select_yShift\(1) & (!\U1|arriba~combout\ & !\U1|select_yShift[0]~33\)) # (!\U1|select_yShift\(1) & ((!\U1|select_yShift[0]~33\) # (!\U1|arriba~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(1),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[0]~33\,
	combout => \U1|select_yShift[1]~46_combout\,
	cout => \U1|select_yShift[1]~47\);

-- Location: FF_X47_Y13_N3
\U1|select_yShift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[1]~46_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(1));

-- Location: LCCOMB_X47_Y13_N4
\U1|select_yShift[2]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_yShift[2]~48_combout\ = ((\U1|select_yShift\(2) $ (\U1|arriba~combout\ $ (!\U1|select_yShift[1]~47\)))) # (GND)
-- \U1|select_yShift[2]~49\ = CARRY((\U1|select_yShift\(2) & ((\U1|arriba~combout\) # (!\U1|select_yShift[1]~47\))) # (!\U1|select_yShift\(2) & (\U1|arriba~combout\ & !\U1|select_yShift[1]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(2),
	datab => \U1|arriba~combout\,
	datad => VCC,
	cin => \U1|select_yShift[1]~47\,
	combout => \U1|select_yShift[2]~48_combout\,
	cout => \U1|select_yShift[2]~49\);

-- Location: FF_X47_Y13_N5
\U1|select_yShift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[2]~48_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(2));

-- Location: FF_X47_Y13_N7
\U1|select_yShift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_yShift[3]~50_combout\,
	ena => \U1|select_yShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_yShift\(3));

-- Location: LCCOMB_X47_Y15_N8
\U0|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~0_combout\ = (\U1|select_yShift\(2) & (\U1|select_yShift\(0) $ (VCC))) # (!\U1|select_yShift\(2) & (\U1|select_yShift\(0) & VCC))
-- \U0|Add2~1\ = CARRY((\U1|select_yShift\(2) & \U1|select_yShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(2),
	datab => \U1|select_yShift\(0),
	datad => VCC,
	combout => \U0|Add2~0_combout\,
	cout => \U0|Add2~1\);

-- Location: LCCOMB_X47_Y15_N10
\U0|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~2_combout\ = (\U1|select_yShift\(3) & ((\U1|select_yShift\(1) & (\U0|Add2~1\ & VCC)) # (!\U1|select_yShift\(1) & (!\U0|Add2~1\)))) # (!\U1|select_yShift\(3) & ((\U1|select_yShift\(1) & (!\U0|Add2~1\)) # (!\U1|select_yShift\(1) & ((\U0|Add2~1\) # 
-- (GND)))))
-- \U0|Add2~3\ = CARRY((\U1|select_yShift\(3) & (!\U1|select_yShift\(1) & !\U0|Add2~1\)) # (!\U1|select_yShift\(3) & ((!\U0|Add2~1\) # (!\U1|select_yShift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(3),
	datab => \U1|select_yShift\(1),
	datad => VCC,
	cin => \U0|Add2~1\,
	combout => \U0|Add2~2_combout\,
	cout => \U0|Add2~3\);

-- Location: LCCOMB_X47_Y15_N12
\U0|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~4_combout\ = ((\U1|select_yShift\(2) $ (\U1|select_yShift\(4) $ (!\U0|Add2~3\)))) # (GND)
-- \U0|Add2~5\ = CARRY((\U1|select_yShift\(2) & ((\U1|select_yShift\(4)) # (!\U0|Add2~3\))) # (!\U1|select_yShift\(2) & (\U1|select_yShift\(4) & !\U0|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(2),
	datab => \U1|select_yShift\(4),
	datad => VCC,
	cin => \U0|Add2~3\,
	combout => \U0|Add2~4_combout\,
	cout => \U0|Add2~5\);

-- Location: LCCOMB_X47_Y15_N14
\U0|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~6_combout\ = (\U1|select_yShift\(3) & ((\U1|select_yShift\(5) & (\U0|Add2~5\ & VCC)) # (!\U1|select_yShift\(5) & (!\U0|Add2~5\)))) # (!\U1|select_yShift\(3) & ((\U1|select_yShift\(5) & (!\U0|Add2~5\)) # (!\U1|select_yShift\(5) & ((\U0|Add2~5\) # 
-- (GND)))))
-- \U0|Add2~7\ = CARRY((\U1|select_yShift\(3) & (!\U1|select_yShift\(5) & !\U0|Add2~5\)) # (!\U1|select_yShift\(3) & ((!\U0|Add2~5\) # (!\U1|select_yShift\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(3),
	datab => \U1|select_yShift\(5),
	datad => VCC,
	cin => \U0|Add2~5\,
	combout => \U0|Add2~6_combout\,
	cout => \U0|Add2~7\);

-- Location: LCCOMB_X47_Y15_N16
\U0|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~8_combout\ = ((\U1|select_yShift\(4) $ (\U1|select_yShift\(6) $ (!\U0|Add2~7\)))) # (GND)
-- \U0|Add2~9\ = CARRY((\U1|select_yShift\(4) & ((\U1|select_yShift\(6)) # (!\U0|Add2~7\))) # (!\U1|select_yShift\(4) & (\U1|select_yShift\(6) & !\U0|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(4),
	datab => \U1|select_yShift\(6),
	datad => VCC,
	cin => \U0|Add2~7\,
	combout => \U0|Add2~8_combout\,
	cout => \U0|Add2~9\);

-- Location: LCCOMB_X47_Y15_N18
\U0|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~10_combout\ = (\U1|select_yShift\(7) & ((\U1|select_yShift\(5) & (\U0|Add2~9\ & VCC)) # (!\U1|select_yShift\(5) & (!\U0|Add2~9\)))) # (!\U1|select_yShift\(7) & ((\U1|select_yShift\(5) & (!\U0|Add2~9\)) # (!\U1|select_yShift\(5) & ((\U0|Add2~9\) # 
-- (GND)))))
-- \U0|Add2~11\ = CARRY((\U1|select_yShift\(7) & (!\U1|select_yShift\(5) & !\U0|Add2~9\)) # (!\U1|select_yShift\(7) & ((!\U0|Add2~9\) # (!\U1|select_yShift\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(7),
	datab => \U1|select_yShift\(5),
	datad => VCC,
	cin => \U0|Add2~9\,
	combout => \U0|Add2~10_combout\,
	cout => \U0|Add2~11\);

-- Location: LCCOMB_X47_Y15_N20
\U0|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~12_combout\ = ((\U1|select_yShift\(8) $ (\U1|select_yShift\(6) $ (!\U0|Add2~11\)))) # (GND)
-- \U0|Add2~13\ = CARRY((\U1|select_yShift\(8) & ((\U1|select_yShift\(6)) # (!\U0|Add2~11\))) # (!\U1|select_yShift\(8) & (\U1|select_yShift\(6) & !\U0|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(8),
	datab => \U1|select_yShift\(6),
	datad => VCC,
	cin => \U0|Add2~11\,
	combout => \U0|Add2~12_combout\,
	cout => \U0|Add2~13\);

-- Location: LCCOMB_X47_Y15_N22
\U0|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~14_combout\ = (\U1|select_yShift\(7) & ((\U1|select_yShift\(9) & (\U0|Add2~13\ & VCC)) # (!\U1|select_yShift\(9) & (!\U0|Add2~13\)))) # (!\U1|select_yShift\(7) & ((\U1|select_yShift\(9) & (!\U0|Add2~13\)) # (!\U1|select_yShift\(9) & 
-- ((\U0|Add2~13\) # (GND)))))
-- \U0|Add2~15\ = CARRY((\U1|select_yShift\(7) & (!\U1|select_yShift\(9) & !\U0|Add2~13\)) # (!\U1|select_yShift\(7) & ((!\U0|Add2~13\) # (!\U1|select_yShift\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(7),
	datab => \U1|select_yShift\(9),
	datad => VCC,
	cin => \U0|Add2~13\,
	combout => \U0|Add2~14_combout\,
	cout => \U0|Add2~15\);

-- Location: LCCOMB_X47_Y15_N24
\U0|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~16_combout\ = ((\U1|select_yShift\(8) $ (\U1|select_yShift\(10) $ (!\U0|Add2~15\)))) # (GND)
-- \U0|Add2~17\ = CARRY((\U1|select_yShift\(8) & ((\U1|select_yShift\(10)) # (!\U0|Add2~15\))) # (!\U1|select_yShift\(8) & (\U1|select_yShift\(10) & !\U0|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(8),
	datab => \U1|select_yShift\(10),
	datad => VCC,
	cin => \U0|Add2~15\,
	combout => \U0|Add2~16_combout\,
	cout => \U0|Add2~17\);

-- Location: LCCOMB_X47_Y15_N26
\U0|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~18_combout\ = (\U1|select_yShift\(11) & ((\U1|select_yShift\(9) & (\U0|Add2~17\ & VCC)) # (!\U1|select_yShift\(9) & (!\U0|Add2~17\)))) # (!\U1|select_yShift\(11) & ((\U1|select_yShift\(9) & (!\U0|Add2~17\)) # (!\U1|select_yShift\(9) & 
-- ((\U0|Add2~17\) # (GND)))))
-- \U0|Add2~19\ = CARRY((\U1|select_yShift\(11) & (!\U1|select_yShift\(9) & !\U0|Add2~17\)) # (!\U1|select_yShift\(11) & ((!\U0|Add2~17\) # (!\U1|select_yShift\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(11),
	datab => \U1|select_yShift\(9),
	datad => VCC,
	cin => \U0|Add2~17\,
	combout => \U0|Add2~18_combout\,
	cout => \U0|Add2~19\);

-- Location: LCCOMB_X47_Y15_N28
\U0|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~20_combout\ = ((\U1|select_yShift\(12) $ (\U1|select_yShift\(10) $ (!\U0|Add2~19\)))) # (GND)
-- \U0|Add2~21\ = CARRY((\U1|select_yShift\(12) & ((\U1|select_yShift\(10)) # (!\U0|Add2~19\))) # (!\U1|select_yShift\(12) & (\U1|select_yShift\(10) & !\U0|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(12),
	datab => \U1|select_yShift\(10),
	datad => VCC,
	cin => \U0|Add2~19\,
	combout => \U0|Add2~20_combout\,
	cout => \U0|Add2~21\);

-- Location: LCCOMB_X47_Y15_N30
\U0|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~22_combout\ = (\U1|select_yShift\(13) & ((\U1|select_yShift\(11) & (\U0|Add2~21\ & VCC)) # (!\U1|select_yShift\(11) & (!\U0|Add2~21\)))) # (!\U1|select_yShift\(13) & ((\U1|select_yShift\(11) & (!\U0|Add2~21\)) # (!\U1|select_yShift\(11) & 
-- ((\U0|Add2~21\) # (GND)))))
-- \U0|Add2~23\ = CARRY((\U1|select_yShift\(13) & (!\U1|select_yShift\(11) & !\U0|Add2~21\)) # (!\U1|select_yShift\(13) & ((!\U0|Add2~21\) # (!\U1|select_yShift\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(13),
	datab => \U1|select_yShift\(11),
	datad => VCC,
	cin => \U0|Add2~21\,
	combout => \U0|Add2~22_combout\,
	cout => \U0|Add2~23\);

-- Location: LCCOMB_X47_Y14_N0
\U0|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~24_combout\ = ((\U1|select_yShift\(12) $ (\U1|select_yShift\(14) $ (!\U0|Add2~23\)))) # (GND)
-- \U0|Add2~25\ = CARRY((\U1|select_yShift\(12) & ((\U1|select_yShift\(14)) # (!\U0|Add2~23\))) # (!\U1|select_yShift\(12) & (\U1|select_yShift\(14) & !\U0|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(12),
	datab => \U1|select_yShift\(14),
	datad => VCC,
	cin => \U0|Add2~23\,
	combout => \U0|Add2~24_combout\,
	cout => \U0|Add2~25\);

-- Location: LCCOMB_X47_Y14_N2
\U0|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~26_combout\ = (\U1|select_yShift\(13) & ((\U1|select_yShift\(15) & (\U0|Add2~25\ & VCC)) # (!\U1|select_yShift\(15) & (!\U0|Add2~25\)))) # (!\U1|select_yShift\(13) & ((\U1|select_yShift\(15) & (!\U0|Add2~25\)) # (!\U1|select_yShift\(15) & 
-- ((\U0|Add2~25\) # (GND)))))
-- \U0|Add2~27\ = CARRY((\U1|select_yShift\(13) & (!\U1|select_yShift\(15) & !\U0|Add2~25\)) # (!\U1|select_yShift\(13) & ((!\U0|Add2~25\) # (!\U1|select_yShift\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(13),
	datab => \U1|select_yShift\(15),
	datad => VCC,
	cin => \U0|Add2~25\,
	combout => \U0|Add2~26_combout\,
	cout => \U0|Add2~27\);

-- Location: LCCOMB_X47_Y14_N4
\U0|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~28_combout\ = ((\U1|select_yShift\(16) $ (\U1|select_yShift\(14) $ (!\U0|Add2~27\)))) # (GND)
-- \U0|Add2~29\ = CARRY((\U1|select_yShift\(16) & ((\U1|select_yShift\(14)) # (!\U0|Add2~27\))) # (!\U1|select_yShift\(16) & (\U1|select_yShift\(14) & !\U0|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(16),
	datab => \U1|select_yShift\(14),
	datad => VCC,
	cin => \U0|Add2~27\,
	combout => \U0|Add2~28_combout\,
	cout => \U0|Add2~29\);

-- Location: LCCOMB_X47_Y14_N6
\U0|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~30_combout\ = (\U1|select_yShift\(17) & ((\U1|select_yShift\(15) & (\U0|Add2~29\ & VCC)) # (!\U1|select_yShift\(15) & (!\U0|Add2~29\)))) # (!\U1|select_yShift\(17) & ((\U1|select_yShift\(15) & (!\U0|Add2~29\)) # (!\U1|select_yShift\(15) & 
-- ((\U0|Add2~29\) # (GND)))))
-- \U0|Add2~31\ = CARRY((\U1|select_yShift\(17) & (!\U1|select_yShift\(15) & !\U0|Add2~29\)) # (!\U1|select_yShift\(17) & ((!\U0|Add2~29\) # (!\U1|select_yShift\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(17),
	datab => \U1|select_yShift\(15),
	datad => VCC,
	cin => \U0|Add2~29\,
	combout => \U0|Add2~30_combout\,
	cout => \U0|Add2~31\);

-- Location: LCCOMB_X47_Y14_N8
\U0|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~32_combout\ = ((\U1|select_yShift\(16) $ (\U1|select_yShift\(18) $ (!\U0|Add2~31\)))) # (GND)
-- \U0|Add2~33\ = CARRY((\U1|select_yShift\(16) & ((\U1|select_yShift\(18)) # (!\U0|Add2~31\))) # (!\U1|select_yShift\(16) & (\U1|select_yShift\(18) & !\U0|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(16),
	datab => \U1|select_yShift\(18),
	datad => VCC,
	cin => \U0|Add2~31\,
	combout => \U0|Add2~32_combout\,
	cout => \U0|Add2~33\);

-- Location: LCCOMB_X47_Y14_N10
\U0|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~34_combout\ = (\U1|select_yShift\(17) & ((\U1|select_yShift\(19) & (\U0|Add2~33\ & VCC)) # (!\U1|select_yShift\(19) & (!\U0|Add2~33\)))) # (!\U1|select_yShift\(17) & ((\U1|select_yShift\(19) & (!\U0|Add2~33\)) # (!\U1|select_yShift\(19) & 
-- ((\U0|Add2~33\) # (GND)))))
-- \U0|Add2~35\ = CARRY((\U1|select_yShift\(17) & (!\U1|select_yShift\(19) & !\U0|Add2~33\)) # (!\U1|select_yShift\(17) & ((!\U0|Add2~33\) # (!\U1|select_yShift\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(17),
	datab => \U1|select_yShift\(19),
	datad => VCC,
	cin => \U0|Add2~33\,
	combout => \U0|Add2~34_combout\,
	cout => \U0|Add2~35\);

-- Location: LCCOMB_X47_Y14_N12
\U0|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~36_combout\ = ((\U1|select_yShift\(20) $ (\U1|select_yShift\(18) $ (!\U0|Add2~35\)))) # (GND)
-- \U0|Add2~37\ = CARRY((\U1|select_yShift\(20) & ((\U1|select_yShift\(18)) # (!\U0|Add2~35\))) # (!\U1|select_yShift\(20) & (\U1|select_yShift\(18) & !\U0|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(20),
	datab => \U1|select_yShift\(18),
	datad => VCC,
	cin => \U0|Add2~35\,
	combout => \U0|Add2~36_combout\,
	cout => \U0|Add2~37\);

-- Location: LCCOMB_X47_Y14_N14
\U0|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~38_combout\ = (\U1|select_yShift\(21) & ((\U1|select_yShift\(19) & (\U0|Add2~37\ & VCC)) # (!\U1|select_yShift\(19) & (!\U0|Add2~37\)))) # (!\U1|select_yShift\(21) & ((\U1|select_yShift\(19) & (!\U0|Add2~37\)) # (!\U1|select_yShift\(19) & 
-- ((\U0|Add2~37\) # (GND)))))
-- \U0|Add2~39\ = CARRY((\U1|select_yShift\(21) & (!\U1|select_yShift\(19) & !\U0|Add2~37\)) # (!\U1|select_yShift\(21) & ((!\U0|Add2~37\) # (!\U1|select_yShift\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(21),
	datab => \U1|select_yShift\(19),
	datad => VCC,
	cin => \U0|Add2~37\,
	combout => \U0|Add2~38_combout\,
	cout => \U0|Add2~39\);

-- Location: LCCOMB_X47_Y14_N16
\U0|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~40_combout\ = ((\U1|select_yShift\(20) $ (\U1|select_yShift\(22) $ (!\U0|Add2~39\)))) # (GND)
-- \U0|Add2~41\ = CARRY((\U1|select_yShift\(20) & ((\U1|select_yShift\(22)) # (!\U0|Add2~39\))) # (!\U1|select_yShift\(20) & (\U1|select_yShift\(22) & !\U0|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(20),
	datab => \U1|select_yShift\(22),
	datad => VCC,
	cin => \U0|Add2~39\,
	combout => \U0|Add2~40_combout\,
	cout => \U0|Add2~41\);

-- Location: LCCOMB_X47_Y14_N18
\U0|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~42_combout\ = (\U1|select_yShift\(23) & ((\U1|select_yShift\(21) & (\U0|Add2~41\ & VCC)) # (!\U1|select_yShift\(21) & (!\U0|Add2~41\)))) # (!\U1|select_yShift\(23) & ((\U1|select_yShift\(21) & (!\U0|Add2~41\)) # (!\U1|select_yShift\(21) & 
-- ((\U0|Add2~41\) # (GND)))))
-- \U0|Add2~43\ = CARRY((\U1|select_yShift\(23) & (!\U1|select_yShift\(21) & !\U0|Add2~41\)) # (!\U1|select_yShift\(23) & ((!\U0|Add2~41\) # (!\U1|select_yShift\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(23),
	datab => \U1|select_yShift\(21),
	datad => VCC,
	cin => \U0|Add2~41\,
	combout => \U0|Add2~42_combout\,
	cout => \U0|Add2~43\);

-- Location: LCCOMB_X47_Y14_N20
\U0|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~44_combout\ = ((\U1|select_yShift\(24) $ (\U1|select_yShift\(22) $ (!\U0|Add2~43\)))) # (GND)
-- \U0|Add2~45\ = CARRY((\U1|select_yShift\(24) & ((\U1|select_yShift\(22)) # (!\U0|Add2~43\))) # (!\U1|select_yShift\(24) & (\U1|select_yShift\(22) & !\U0|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(24),
	datab => \U1|select_yShift\(22),
	datad => VCC,
	cin => \U0|Add2~43\,
	combout => \U0|Add2~44_combout\,
	cout => \U0|Add2~45\);

-- Location: LCCOMB_X47_Y14_N22
\U0|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~46_combout\ = (\U1|select_yShift\(23) & ((\U1|select_yShift\(25) & (\U0|Add2~45\ & VCC)) # (!\U1|select_yShift\(25) & (!\U0|Add2~45\)))) # (!\U1|select_yShift\(23) & ((\U1|select_yShift\(25) & (!\U0|Add2~45\)) # (!\U1|select_yShift\(25) & 
-- ((\U0|Add2~45\) # (GND)))))
-- \U0|Add2~47\ = CARRY((\U1|select_yShift\(23) & (!\U1|select_yShift\(25) & !\U0|Add2~45\)) # (!\U1|select_yShift\(23) & ((!\U0|Add2~45\) # (!\U1|select_yShift\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(23),
	datab => \U1|select_yShift\(25),
	datad => VCC,
	cin => \U0|Add2~45\,
	combout => \U0|Add2~46_combout\,
	cout => \U0|Add2~47\);

-- Location: LCCOMB_X47_Y14_N30
\U0|LessThan10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~5_combout\ = (!\U0|Add2~36_combout\ & (!\U0|Add2~42_combout\ & (!\U0|Add2~38_combout\ & !\U0|Add2~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~36_combout\,
	datab => \U0|Add2~42_combout\,
	datac => \U0|Add2~38_combout\,
	datad => \U0|Add2~40_combout\,
	combout => \U0|LessThan10~5_combout\);

-- Location: LCCOMB_X47_Y14_N26
\U0|LessThan10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~6_combout\ = (!\U0|Add2~46_combout\ & (\U0|LessThan10~5_combout\ & !\U0|Add2~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~46_combout\,
	datac => \U0|LessThan10~5_combout\,
	datad => \U0|Add2~44_combout\,
	combout => \U0|LessThan10~6_combout\);

-- Location: LCCOMB_X40_Y11_N6
\U0|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan13~0_combout\ = (((!\U0|U1|row\(1)) # (!\U0|U1|row\(3))) # (!\U0|U1|row\(0))) # (!\U0|U1|row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|U1|row\(0),
	datac => \U0|U1|row\(3),
	datad => \U0|U1|row\(1),
	combout => \U0|LessThan13~0_combout\);

-- Location: LCCOMB_X41_Y11_N12
\U0|LessThan13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan13~1_combout\ = (\U1|select_yShift\(0) & (((\U0|LessThan13~0_combout\ & !\U0|U1|row\(4))) # (!\U0|U1|row\(5)))) # (!\U1|select_yShift\(0) & (\U0|LessThan13~0_combout\ & (!\U0|U1|row\(4) & !\U0|U1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(0),
	datab => \U0|LessThan13~0_combout\,
	datac => \U0|U1|row\(4),
	datad => \U0|U1|row\(5),
	combout => \U0|LessThan13~1_combout\);

-- Location: LCCOMB_X41_Y11_N26
\U0|LessThan13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan13~2_combout\ = (\U0|U1|row\(6) & (\U0|LessThan13~1_combout\ & \U1|select_yShift\(1))) # (!\U0|U1|row\(6) & ((\U0|LessThan13~1_combout\) # (\U1|select_yShift\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|row\(6),
	datac => \U0|LessThan13~1_combout\,
	datad => \U1|select_yShift\(1),
	combout => \U0|LessThan13~2_combout\);

-- Location: LCCOMB_X41_Y11_N28
\U0|LessThan13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan13~3_combout\ = (\U0|Add2~0_combout\ & ((\U0|LessThan13~2_combout\) # (!\U0|U1|row\(7)))) # (!\U0|Add2~0_combout\ & (\U0|LessThan13~2_combout\ & !\U0|U1|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~0_combout\,
	datac => \U0|LessThan13~2_combout\,
	datad => \U0|U1|row\(7),
	combout => \U0|LessThan13~3_combout\);

-- Location: LCCOMB_X41_Y11_N2
\U0|FSM~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~61_combout\ = (\U0|LessThan10~6_combout\ & ((\U0|U1|row\(8) & (\U0|Add2~2_combout\ & \U0|LessThan13~3_combout\)) # (!\U0|U1|row\(8) & ((\U0|Add2~2_combout\) # (\U0|LessThan13~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(8),
	datab => \U0|Add2~2_combout\,
	datac => \U0|LessThan10~6_combout\,
	datad => \U0|LessThan13~3_combout\,
	combout => \U0|FSM~61_combout\);

-- Location: LCCOMB_X40_Y11_N22
\U0|LessThan24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan24~0_combout\ = (\U0|U1|row\(3) & (\U0|U1|row\(0) & \U0|U1|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(3),
	datac => \U0|U1|row\(0),
	datad => \U0|U1|row\(1),
	combout => \U0|LessThan24~0_combout\);

-- Location: LCCOMB_X40_Y11_N28
\U0|LessThan24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan24~1_combout\ = (\U0|LessThan24~0_combout\) # ((\U0|U1|row\(4)) # ((\U0|U1|row\(3) & \U0|U1|row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan24~0_combout\,
	datab => \U0|U1|row\(4),
	datac => \U0|U1|row\(3),
	datad => \U0|U1|row\(2),
	combout => \U0|LessThan24~1_combout\);

-- Location: LCCOMB_X41_Y11_N22
\U0|LessThan10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~7_combout\ = (\U0|LessThan24~1_combout\ & ((\U0|U1|row\(5)) # (!\U1|select_yShift\(0)))) # (!\U0|LessThan24~1_combout\ & (\U0|U1|row\(5) & !\U1|select_yShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|LessThan24~1_combout\,
	datac => \U0|U1|row\(5),
	datad => \U1|select_yShift\(0),
	combout => \U0|LessThan10~7_combout\);

-- Location: LCCOMB_X41_Y11_N20
\U0|LessThan10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~8_combout\ = (\U0|Add2~0_combout\ & ((\U0|Add2~2_combout\ $ (\U0|U1|row\(8))) # (!\U0|U1|row\(7)))) # (!\U0|Add2~0_combout\ & ((\U0|U1|row\(7)) # (\U0|Add2~2_combout\ $ (\U0|U1|row\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~0_combout\,
	datab => \U0|U1|row\(7),
	datac => \U0|Add2~2_combout\,
	datad => \U0|U1|row\(8),
	combout => \U0|LessThan10~8_combout\);

-- Location: LCCOMB_X41_Y11_N10
\U0|LessThan10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~9_combout\ = (!\U0|LessThan10~8_combout\ & ((\U0|LessThan10~7_combout\ & ((\U0|U1|row\(6)) # (!\U1|select_yShift\(1)))) # (!\U0|LessThan10~7_combout\ & (\U0|U1|row\(6) & !\U1|select_yShift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan10~7_combout\,
	datab => \U0|U1|row\(6),
	datac => \U1|select_yShift\(1),
	datad => \U0|LessThan10~8_combout\,
	combout => \U0|LessThan10~9_combout\);

-- Location: LCCOMB_X47_Y14_N24
\U0|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add2~48_combout\ = \U1|select_yShift\(26) $ (\U0|Add2~47\ $ (!\U1|select_yShift\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|select_yShift\(26),
	datad => \U1|select_yShift\(24),
	cin => \U0|Add2~47\,
	combout => \U0|Add2~48_combout\);

-- Location: LCCOMB_X45_Y14_N8
\U0|LessThan10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~10_combout\ = (\U0|Add2~2_combout\ & (\U0|U1|row\(7) & (!\U0|Add2~0_combout\ & \U0|U1|row\(8)))) # (!\U0|Add2~2_combout\ & ((\U0|U1|row\(8)) # ((\U0|U1|row\(7) & !\U0|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~2_combout\,
	datab => \U0|U1|row\(7),
	datac => \U0|Add2~0_combout\,
	datad => \U0|U1|row\(8),
	combout => \U0|LessThan10~10_combout\);

-- Location: LCCOMB_X47_Y15_N6
\U0|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~0_combout\ = (!\U0|Add2~4_combout\ & (!\U0|Add2~8_combout\ & (!\U0|Add2~6_combout\ & !\U0|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~4_combout\,
	datab => \U0|Add2~8_combout\,
	datac => \U0|Add2~6_combout\,
	datad => \U0|Add2~10_combout\,
	combout => \U0|LessThan10~0_combout\);

-- Location: LCCOMB_X47_Y15_N2
\U0|LessThan10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~1_combout\ = (!\U0|Add2~18_combout\ & (!\U0|Add2~12_combout\ & (!\U0|Add2~14_combout\ & !\U0|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~18_combout\,
	datab => \U0|Add2~12_combout\,
	datac => \U0|Add2~14_combout\,
	datad => \U0|Add2~16_combout\,
	combout => \U0|LessThan10~1_combout\);

-- Location: LCCOMB_X47_Y15_N4
\U0|LessThan10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~2_combout\ = (!\U0|Add2~26_combout\ & (!\U0|Add2~20_combout\ & (!\U0|Add2~22_combout\ & !\U0|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~26_combout\,
	datab => \U0|Add2~20_combout\,
	datac => \U0|Add2~22_combout\,
	datad => \U0|Add2~24_combout\,
	combout => \U0|LessThan10~2_combout\);

-- Location: LCCOMB_X47_Y14_N28
\U0|LessThan10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~3_combout\ = (!\U0|Add2~34_combout\ & (!\U0|Add2~28_combout\ & (!\U0|Add2~32_combout\ & !\U0|Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~34_combout\,
	datab => \U0|Add2~28_combout\,
	datac => \U0|Add2~32_combout\,
	datad => \U0|Add2~30_combout\,
	combout => \U0|LessThan10~3_combout\);

-- Location: LCCOMB_X47_Y15_N0
\U0|LessThan10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~4_combout\ = (\U0|LessThan10~0_combout\ & (\U0|LessThan10~1_combout\ & (\U0|LessThan10~2_combout\ & \U0|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan10~0_combout\,
	datab => \U0|LessThan10~1_combout\,
	datac => \U0|LessThan10~2_combout\,
	datad => \U0|LessThan10~3_combout\,
	combout => \U0|LessThan10~4_combout\);

-- Location: LCCOMB_X45_Y14_N16
\U0|FSM~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~62_combout\ = (!\U0|Add2~48_combout\ & (\U0|LessThan10~4_combout\ & ((\U0|LessThan10~9_combout\) # (\U0|LessThan10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan10~9_combout\,
	datab => \U0|Add2~48_combout\,
	datac => \U0|LessThan10~10_combout\,
	datad => \U0|LessThan10~4_combout\,
	combout => \U0|FSM~62_combout\);

-- Location: LCCOMB_X47_Y9_N2
\U1|U0|U0|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Decoder0~2_combout\ = (\U1|U0|U0|address\(0) & (\U1|U0|U0|Decoder0~1_combout\ & (!\U1|U0|U0|address\(1) & \U1|U0|U0|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|address\(0),
	datab => \U1|U0|U0|Decoder0~1_combout\,
	datac => \U1|U0|U0|address\(1),
	datad => \U1|U0|U0|Decoder0~0_combout\,
	combout => \U1|U0|U0|Decoder0~2_combout\);

-- Location: FF_X51_Y12_N17
\U1|U0|U0|memory[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(7),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[1][7]~q\);

-- Location: LCCOMB_X51_Y12_N16
\U1|x_value[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(31) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[1][7]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|x_value\(31),
	datac => \U1|U0|U0|memory[1][7]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(31));

-- Location: FF_X50_Y12_N11
\U1|U0|U0|memory[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(1),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[1][1]~q\);

-- Location: LCCOMB_X50_Y12_N10
\U1|x_value[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(9) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[1][1]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(9),
	datac => \U1|U0|U0|memory[1][1]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(9));

-- Location: FF_X51_Y12_N7
\U1|U0|U0|memory[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(0),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[1][0]~q\);

-- Location: LCCOMB_X51_Y12_N6
\U1|x_value[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(8) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[1][0]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(8),
	datac => \U1|U0|U0|memory[1][0]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(8));

-- Location: LCCOMB_X51_Y12_N26
\U1|U0|U0|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|Decoder0~3_combout\ = (\U1|U0|U0|Decoder0~1_combout\ & (!\U1|U0|U0|address\(0) & (\U1|U0|U0|Decoder0~0_combout\ & !\U1|U0|U0|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|Decoder0~1_combout\,
	datab => \U1|U0|U0|address\(0),
	datac => \U1|U0|U0|Decoder0~0_combout\,
	datad => \U1|U0|U0|address\(1),
	combout => \U1|U0|U0|Decoder0~3_combout\);

-- Location: FF_X51_Y12_N21
\U1|U0|U0|memory[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(7),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[0][7]~q\);

-- Location: LCCOMB_X51_Y12_N20
\U1|x_value[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(7) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[0][7]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|x_value\(7),
	datac => \U1|U0|U0|memory[0][7]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(7));

-- Location: FF_X51_Y12_N15
\U1|U0|U0|memory[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(6),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[0][6]~q\);

-- Location: LCCOMB_X51_Y12_N14
\U1|x_value[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(6) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[0][6]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|x_value\(6),
	datac => \U1|U0|U0|memory[0][6]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(6));

-- Location: FF_X51_Y12_N29
\U1|U0|U0|memory[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(6),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[1][6]~q\);

-- Location: LCCOMB_X51_Y12_N28
\U1|x_value[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(14) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[1][6]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|x_value\(14),
	datac => \U1|U0|U0|memory[1][6]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(14));

-- Location: LCCOMB_X51_Y12_N10
\U1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (\U1|x_value\(8)) # ((\U1|x_value\(7)) # ((\U1|x_value\(6)) # (\U1|x_value\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(8),
	datab => \U1|x_value\(7),
	datac => \U1|x_value\(6),
	datad => \U1|x_value\(14),
	combout => \U1|LessThan0~0_combout\);

-- Location: FF_X50_Y12_N1
\U1|U0|U0|memory[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(4),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[0][4]~q\);

-- Location: LCCOMB_X50_Y12_N0
\U1|x_value[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(4) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[0][4]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(4),
	datac => \U1|U0|U0|memory[0][4]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(4));

-- Location: FF_X50_Y12_N27
\U1|U0|U0|memory[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(5),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[0][5]~q\);

-- Location: LCCOMB_X50_Y12_N26
\U1|x_value[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(5) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[0][5]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(5),
	datac => \U1|U0|U0|memory[0][5]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(5));

-- Location: FF_X50_Y12_N29
\U1|U0|U0|memory[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(3),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[0][3]~q\);

-- Location: LCCOMB_X50_Y12_N28
\U1|x_value[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(3) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[0][3]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|x_value\(3),
	datac => \U1|U0|U0|memory[0][3]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(3));

-- Location: FF_X50_Y12_N25
\U1|U0|U0|memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(0),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[0][0]~q\);

-- Location: LCCOMB_X50_Y12_N24
\U1|x_value[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(0) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[0][0]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|x_value\(0),
	datac => \U1|U0|U0|memory[0][0]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(0));

-- Location: FF_X50_Y12_N15
\U1|U0|U0|memory[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(2),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[0][2]~q\);

-- Location: LCCOMB_X50_Y12_N14
\U1|x_value[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(2) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[0][2]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|x_value\(2),
	datac => \U1|U0|U0|memory[0][2]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(2));

-- Location: FF_X50_Y12_N21
\U1|U0|U0|memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(1),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[0][1]~q\);

-- Location: LCCOMB_X50_Y12_N20
\U1|x_value[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(1) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[0][1]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|x_value\(1),
	datac => \U1|U0|U0|memory[0][1]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(1));

-- Location: LCCOMB_X50_Y12_N4
\U1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (\U1|x_value\(3)) # ((\U1|x_value\(2)) # ((\U1|x_value\(0) & \U1|x_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(3),
	datab => \U1|x_value\(0),
	datac => \U1|x_value\(2),
	datad => \U1|x_value\(1),
	combout => \U1|LessThan0~1_combout\);

-- Location: FF_X50_Y12_N23
\U1|U0|U0|memory[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(3),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[1][3]~q\);

-- Location: LCCOMB_X50_Y12_N22
\U1|x_value[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(11) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[1][3]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(11),
	datac => \U1|U0|U0|memory[1][3]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(11));

-- Location: FF_X50_Y12_N9
\U1|U0|U0|memory[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(2),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[1][2]~q\);

-- Location: LCCOMB_X50_Y12_N8
\U1|x_value[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(10) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[1][2]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|x_value\(10),
	datac => \U1|U0|U0|memory[1][2]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(10));

-- Location: FF_X50_Y12_N31
\U1|U0|U0|memory[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(5),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[1][5]~q\);

-- Location: LCCOMB_X50_Y12_N30
\U1|x_value[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(13) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[1][5]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(13),
	datac => \U1|U0|U0|memory[1][5]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(13));

-- Location: FF_X50_Y12_N13
\U1|U0|U0|memory[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|U0|U0|u0|rx_data\(4),
	sload => VCC,
	ena => \U1|U0|U0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|memory[1][4]~q\);

-- Location: LCCOMB_X50_Y12_N12
\U1|x_value[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|x_value\(12) = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|U0|U0|memory[1][4]~q\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|x_value\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(12),
	datac => \U1|U0|U0|memory[1][4]~q\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|x_value\(12));

-- Location: LCCOMB_X50_Y12_N18
\U1|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan0~2_combout\ = (\U1|x_value\(11)) # ((\U1|x_value\(10)) # ((\U1|x_value\(13)) # (\U1|x_value\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(11),
	datab => \U1|x_value\(10),
	datac => \U1|x_value\(13),
	datad => \U1|x_value\(12),
	combout => \U1|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y12_N16
\U1|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan0~3_combout\ = (\U1|LessThan0~2_combout\) # ((\U1|x_value\(4) & (\U1|x_value\(5) & \U1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(4),
	datab => \U1|x_value\(5),
	datac => \U1|LessThan0~1_combout\,
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y12_N2
\U1|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan0~4_combout\ = (!\U1|x_value\(31) & ((\U1|x_value\(9)) # ((\U1|LessThan0~0_combout\) # (\U1|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(31),
	datab => \U1|x_value\(9),
	datac => \U1|LessThan0~0_combout\,
	datad => \U1|LessThan0~3_combout\,
	combout => \U1|LessThan0~4_combout\);

-- Location: LCCOMB_X50_Y12_N6
\U1|izquierda\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|izquierda~combout\ = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|LessThan0~4_combout\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|izquierda~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datac => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	datad => \U1|LessThan0~4_combout\,
	combout => \U1|izquierda~combout\);

-- Location: LCCOMB_X49_Y12_N0
\U1|select_xShift[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~32_combout\ = \U1|select_xShift\(0) $ (VCC)
-- \U1|select_xShift[0]~33\ = CARRY(\U1|select_xShift\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|select_xShift\(0),
	datad => VCC,
	combout => \U1|select_xShift[0]~32_combout\,
	cout => \U1|select_xShift[0]~33\);

-- Location: LCCOMB_X50_Y11_N12
\U1|select_xShift[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~41_combout\ = (!\U1|select_xShift\(3) & (!\U1|select_xShift\(5) & (!\U1|select_xShift\(6) & !\U1|select_xShift\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(3),
	datab => \U1|select_xShift\(5),
	datac => \U1|select_xShift\(6),
	datad => \U1|select_xShift\(4),
	combout => \U1|select_xShift[0]~41_combout\);

-- Location: LCCOMB_X50_Y11_N10
\U1|select_xShift[0]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~42_combout\ = (!\U1|select_xShift\(1) & (!\U1|select_xShift\(2) & \U1|select_xShift[0]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(1),
	datac => \U1|select_xShift\(2),
	datad => \U1|select_xShift[0]~41_combout\,
	combout => \U1|select_xShift[0]~42_combout\);

-- Location: LCCOMB_X49_Y11_N14
\U1|select_xShift[23]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[23]~90_combout\ = (\U1|izquierda~combout\ & ((\U1|select_xShift\(23) & (\U1|select_xShift[22]~89\ & VCC)) # (!\U1|select_xShift\(23) & (!\U1|select_xShift[22]~89\)))) # (!\U1|izquierda~combout\ & ((\U1|select_xShift\(23) & 
-- (!\U1|select_xShift[22]~89\)) # (!\U1|select_xShift\(23) & ((\U1|select_xShift[22]~89\) # (GND)))))
-- \U1|select_xShift[23]~91\ = CARRY((\U1|izquierda~combout\ & (!\U1|select_xShift\(23) & !\U1|select_xShift[22]~89\)) # (!\U1|izquierda~combout\ & ((!\U1|select_xShift[22]~89\) # (!\U1|select_xShift\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(23),
	datad => VCC,
	cin => \U1|select_xShift[22]~89\,
	combout => \U1|select_xShift[23]~90_combout\,
	cout => \U1|select_xShift[23]~91\);

-- Location: LCCOMB_X49_Y11_N16
\U1|select_xShift[24]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[24]~92_combout\ = ((\U1|izquierda~combout\ $ (\U1|select_xShift\(24) $ (!\U1|select_xShift[23]~91\)))) # (GND)
-- \U1|select_xShift[24]~93\ = CARRY((\U1|izquierda~combout\ & ((\U1|select_xShift\(24)) # (!\U1|select_xShift[23]~91\))) # (!\U1|izquierda~combout\ & (\U1|select_xShift\(24) & !\U1|select_xShift[23]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(24),
	datad => VCC,
	cin => \U1|select_xShift[23]~91\,
	combout => \U1|select_xShift[24]~92_combout\,
	cout => \U1|select_xShift[24]~93\);

-- Location: FF_X49_Y11_N17
\U1|select_xShift[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[24]~92_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(24));

-- Location: LCCOMB_X49_Y11_N18
\U1|select_xShift[25]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[25]~94_combout\ = (\U1|select_xShift\(25) & ((\U1|izquierda~combout\ & (\U1|select_xShift[24]~93\ & VCC)) # (!\U1|izquierda~combout\ & (!\U1|select_xShift[24]~93\)))) # (!\U1|select_xShift\(25) & ((\U1|izquierda~combout\ & 
-- (!\U1|select_xShift[24]~93\)) # (!\U1|izquierda~combout\ & ((\U1|select_xShift[24]~93\) # (GND)))))
-- \U1|select_xShift[25]~95\ = CARRY((\U1|select_xShift\(25) & (!\U1|izquierda~combout\ & !\U1|select_xShift[24]~93\)) # (!\U1|select_xShift\(25) & ((!\U1|select_xShift[24]~93\) # (!\U1|izquierda~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(25),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[24]~93\,
	combout => \U1|select_xShift[25]~94_combout\,
	cout => \U1|select_xShift[25]~95\);

-- Location: FF_X49_Y11_N19
\U1|select_xShift[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[25]~94_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(25));

-- Location: LCCOMB_X49_Y11_N20
\U1|select_xShift[26]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[26]~96_combout\ = ((\U1|select_xShift\(26) $ (\U1|izquierda~combout\ $ (!\U1|select_xShift[25]~95\)))) # (GND)
-- \U1|select_xShift[26]~97\ = CARRY((\U1|select_xShift\(26) & ((\U1|izquierda~combout\) # (!\U1|select_xShift[25]~95\))) # (!\U1|select_xShift\(26) & (\U1|izquierda~combout\ & !\U1|select_xShift[25]~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(26),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[25]~95\,
	combout => \U1|select_xShift[26]~96_combout\,
	cout => \U1|select_xShift[26]~97\);

-- Location: FF_X49_Y11_N21
\U1|select_xShift[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[26]~96_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(26));

-- Location: LCCOMB_X49_Y11_N22
\U1|select_xShift[27]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[27]~98_combout\ = (\U1|select_xShift\(27) & ((\U1|izquierda~combout\ & (\U1|select_xShift[26]~97\ & VCC)) # (!\U1|izquierda~combout\ & (!\U1|select_xShift[26]~97\)))) # (!\U1|select_xShift\(27) & ((\U1|izquierda~combout\ & 
-- (!\U1|select_xShift[26]~97\)) # (!\U1|izquierda~combout\ & ((\U1|select_xShift[26]~97\) # (GND)))))
-- \U1|select_xShift[27]~99\ = CARRY((\U1|select_xShift\(27) & (!\U1|izquierda~combout\ & !\U1|select_xShift[26]~97\)) # (!\U1|select_xShift\(27) & ((!\U1|select_xShift[26]~97\) # (!\U1|izquierda~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(27),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[26]~97\,
	combout => \U1|select_xShift[27]~98_combout\,
	cout => \U1|select_xShift[27]~99\);

-- Location: FF_X49_Y11_N23
\U1|select_xShift[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[27]~98_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(27));

-- Location: LCCOMB_X49_Y11_N24
\U1|select_xShift[28]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[28]~100_combout\ = ((\U1|select_xShift\(28) $ (\U1|izquierda~combout\ $ (!\U1|select_xShift[27]~99\)))) # (GND)
-- \U1|select_xShift[28]~101\ = CARRY((\U1|select_xShift\(28) & ((\U1|izquierda~combout\) # (!\U1|select_xShift[27]~99\))) # (!\U1|select_xShift\(28) & (\U1|izquierda~combout\ & !\U1|select_xShift[27]~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(28),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[27]~99\,
	combout => \U1|select_xShift[28]~100_combout\,
	cout => \U1|select_xShift[28]~101\);

-- Location: FF_X49_Y11_N25
\U1|select_xShift[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[28]~100_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(28));

-- Location: LCCOMB_X49_Y11_N26
\U1|select_xShift[29]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[29]~102_combout\ = (\U1|select_xShift\(29) & ((\U1|izquierda~combout\ & (\U1|select_xShift[28]~101\ & VCC)) # (!\U1|izquierda~combout\ & (!\U1|select_xShift[28]~101\)))) # (!\U1|select_xShift\(29) & ((\U1|izquierda~combout\ & 
-- (!\U1|select_xShift[28]~101\)) # (!\U1|izquierda~combout\ & ((\U1|select_xShift[28]~101\) # (GND)))))
-- \U1|select_xShift[29]~103\ = CARRY((\U1|select_xShift\(29) & (!\U1|izquierda~combout\ & !\U1|select_xShift[28]~101\)) # (!\U1|select_xShift\(29) & ((!\U1|select_xShift[28]~101\) # (!\U1|izquierda~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(29),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[28]~101\,
	combout => \U1|select_xShift[29]~102_combout\,
	cout => \U1|select_xShift[29]~103\);

-- Location: FF_X49_Y11_N27
\U1|select_xShift[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[29]~102_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(29));

-- Location: LCCOMB_X49_Y11_N28
\U1|select_xShift[30]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[30]~104_combout\ = ((\U1|select_xShift\(30) $ (\U1|izquierda~combout\ $ (!\U1|select_xShift[29]~103\)))) # (GND)
-- \U1|select_xShift[30]~105\ = CARRY((\U1|select_xShift\(30) & ((\U1|izquierda~combout\) # (!\U1|select_xShift[29]~103\))) # (!\U1|select_xShift\(30) & (\U1|izquierda~combout\ & !\U1|select_xShift[29]~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(30),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[29]~103\,
	combout => \U1|select_xShift[30]~104_combout\,
	cout => \U1|select_xShift[30]~105\);

-- Location: FF_X49_Y11_N29
\U1|select_xShift[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[30]~104_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(30));

-- Location: LCCOMB_X50_Y10_N12
\U1|select_xShift[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~34_combout\ = (!\U1|select_xShift\(28) & (!\U1|select_xShift\(30) & (!\U1|select_xShift\(29) & !\U1|select_xShift\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(28),
	datab => \U1|select_xShift\(30),
	datac => \U1|select_xShift\(29),
	datad => \U1|select_xShift\(27),
	combout => \U1|select_xShift[0]~34_combout\);

-- Location: LCCOMB_X50_Y10_N28
\U1|select_xShift[0]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~36_combout\ = (!\U1|select_xShift\(21) & (!\U1|select_xShift\(22) & (!\U1|select_xShift\(20) & !\U1|select_xShift\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(21),
	datab => \U1|select_xShift\(22),
	datac => \U1|select_xShift\(20),
	datad => \U1|select_xShift\(19),
	combout => \U1|select_xShift[0]~36_combout\);

-- Location: LCCOMB_X50_Y10_N30
\U1|select_xShift[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~37_combout\ = (!\U1|select_xShift\(15) & (!\U1|select_xShift\(18) & (!\U1|select_xShift\(17) & !\U1|select_xShift\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(15),
	datab => \U1|select_xShift\(18),
	datac => \U1|select_xShift\(17),
	datad => \U1|select_xShift\(16),
	combout => \U1|select_xShift[0]~37_combout\);

-- Location: LCCOMB_X50_Y10_N10
\U1|select_xShift[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~35_combout\ = (!\U1|select_xShift\(24) & (!\U1|select_xShift\(26) & (!\U1|select_xShift\(25) & !\U1|select_xShift\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(24),
	datab => \U1|select_xShift\(26),
	datac => \U1|select_xShift\(25),
	datad => \U1|select_xShift\(23),
	combout => \U1|select_xShift[0]~35_combout\);

-- Location: LCCOMB_X50_Y10_N0
\U1|select_xShift[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~38_combout\ = (\U1|select_xShift[0]~34_combout\ & (\U1|select_xShift[0]~36_combout\ & (\U1|select_xShift[0]~37_combout\ & \U1|select_xShift[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift[0]~34_combout\,
	datab => \U1|select_xShift[0]~36_combout\,
	datac => \U1|select_xShift[0]~37_combout\,
	datad => \U1|select_xShift[0]~35_combout\,
	combout => \U1|select_xShift[0]~38_combout\);

-- Location: LCCOMB_X50_Y11_N30
\U1|select_xShift[0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~40_combout\ = (!\U1|select_xShift\(10) & (!\U1|select_xShift\(9) & (!\U1|select_xShift\(7) & !\U1|select_xShift\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(10),
	datab => \U1|select_xShift\(9),
	datac => \U1|select_xShift\(7),
	datad => \U1|select_xShift\(8),
	combout => \U1|select_xShift[0]~40_combout\);

-- Location: LCCOMB_X50_Y11_N28
\U1|select_xShift[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~39_combout\ = (!\U1|select_xShift\(12) & (!\U1|select_xShift\(11) & (!\U1|select_xShift\(13) & !\U1|select_xShift\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(12),
	datab => \U1|select_xShift\(11),
	datac => \U1|select_xShift\(13),
	datad => \U1|select_xShift\(14),
	combout => \U1|select_xShift[0]~39_combout\);

-- Location: LCCOMB_X50_Y11_N0
\U1|select_xShift[0]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~43_combout\ = (\U1|select_xShift[0]~42_combout\ & (\U1|select_xShift[0]~38_combout\ & (\U1|select_xShift[0]~40_combout\ & \U1|select_xShift[0]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift[0]~42_combout\,
	datab => \U1|select_xShift[0]~38_combout\,
	datac => \U1|select_xShift[0]~40_combout\,
	datad => \U1|select_xShift[0]~39_combout\,
	combout => \U1|select_xShift[0]~43_combout\);

-- Location: LCCOMB_X49_Y11_N30
\U1|select_xShift[31]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[31]~106_combout\ = \U1|select_xShift\(31) $ (\U1|select_xShift[30]~105\ $ (\U1|izquierda~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(31),
	datad => \U1|izquierda~combout\,
	cin => \U1|select_xShift[30]~105\,
	combout => \U1|select_xShift[31]~106_combout\);

-- Location: FF_X49_Y11_N31
\U1|select_xShift[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[31]~106_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(31));

-- Location: LCCOMB_X51_Y12_N12
\U1|select_xShift[0]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~44_combout\ = (\U1|select_xShift\(31)) # ((\U1|select_xShift[0]~43_combout\ & ((!\U1|izquierda~combout\) # (!\U1|select_xShift\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(0),
	datab => \U1|select_xShift[0]~43_combout\,
	datac => \U1|izquierda~combout\,
	datad => \U1|select_xShift\(31),
	combout => \U1|select_xShift[0]~44_combout\);

-- Location: LCCOMB_X51_Y12_N22
\U1|derecha~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|derecha~3_combout\ = ((!\U1|x_value\(13)) # (!\U1|x_value\(14))) # (!\U1|x_value\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(10),
	datab => \U1|x_value\(14),
	datad => \U1|x_value\(13),
	combout => \U1|derecha~3_combout\);

-- Location: LCCOMB_X51_Y12_N4
\U1|derecha~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|derecha~2_combout\ = (((!\U1|x_value\(8)) # (!\U1|x_value\(9))) # (!\U1|x_value\(11))) # (!\U1|x_value\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(12),
	datab => \U1|x_value\(11),
	datac => \U1|x_value\(9),
	datad => \U1|x_value\(8),
	combout => \U1|derecha~2_combout\);

-- Location: LCCOMB_X51_Y12_N0
\U1|derecha~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|derecha~0_combout\ = (!\U1|x_value\(5) & (((!\U1|x_value\(2)) # (!\U1|x_value\(3))) # (!\U1|x_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(1),
	datab => \U1|x_value\(3),
	datac => \U1|x_value\(5),
	datad => \U1|x_value\(2),
	combout => \U1|derecha~0_combout\);

-- Location: LCCOMB_X51_Y12_N18
\U1|derecha~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|derecha~1_combout\ = (((!\U1|x_value\(4) & \U1|derecha~0_combout\)) # (!\U1|x_value\(6))) # (!\U1|x_value\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|x_value\(7),
	datab => \U1|x_value\(6),
	datac => \U1|x_value\(4),
	datad => \U1|derecha~0_combout\,
	combout => \U1|derecha~1_combout\);

-- Location: LCCOMB_X51_Y12_N8
\U1|derecha~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|derecha~4_combout\ = (\U1|x_value\(31) & ((\U1|derecha~3_combout\) # ((\U1|derecha~2_combout\) # (\U1|derecha~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|derecha~3_combout\,
	datab => \U1|x_value\(31),
	datac => \U1|derecha~2_combout\,
	datad => \U1|derecha~1_combout\,
	combout => \U1|derecha~4_combout\);

-- Location: LCCOMB_X51_Y12_N24
\U1|derecha\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|derecha~combout\ = (GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & ((\U1|derecha~4_combout\))) # (!GLOBAL(\U1|U0|U0|Equal1~1clkctrl_outclk\) & (\U1|derecha~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|derecha~combout\,
	datac => \U1|derecha~4_combout\,
	datad => \U1|U0|U0|Equal1~1clkctrl_outclk\,
	combout => \U1|derecha~combout\);

-- Location: LCCOMB_X51_Y12_N30
\U1|select_xShift[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[0]~45_combout\ = (\U1|Equal0~10_combout\ & ((\U1|select_xShift[0]~44_combout\ & (\U1|derecha~combout\ & !\U1|izquierda~combout\)) # (!\U1|select_xShift[0]~44_combout\ & ((\U1|izquierda~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift[0]~44_combout\,
	datab => \U1|derecha~combout\,
	datac => \U1|Equal0~10_combout\,
	datad => \U1|izquierda~combout\,
	combout => \U1|select_xShift[0]~45_combout\);

-- Location: FF_X49_Y12_N1
\U1|select_xShift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[0]~32_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(0));

-- Location: LCCOMB_X49_Y12_N2
\U1|select_xShift[1]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[1]~46_combout\ = (\U1|izquierda~combout\ & ((\U1|select_xShift\(1) & (\U1|select_xShift[0]~33\ & VCC)) # (!\U1|select_xShift\(1) & (!\U1|select_xShift[0]~33\)))) # (!\U1|izquierda~combout\ & ((\U1|select_xShift\(1) & 
-- (!\U1|select_xShift[0]~33\)) # (!\U1|select_xShift\(1) & ((\U1|select_xShift[0]~33\) # (GND)))))
-- \U1|select_xShift[1]~47\ = CARRY((\U1|izquierda~combout\ & (!\U1|select_xShift\(1) & !\U1|select_xShift[0]~33\)) # (!\U1|izquierda~combout\ & ((!\U1|select_xShift[0]~33\) # (!\U1|select_xShift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(1),
	datad => VCC,
	cin => \U1|select_xShift[0]~33\,
	combout => \U1|select_xShift[1]~46_combout\,
	cout => \U1|select_xShift[1]~47\);

-- Location: FF_X49_Y12_N3
\U1|select_xShift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[1]~46_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(1));

-- Location: LCCOMB_X49_Y12_N4
\U1|select_xShift[2]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[2]~48_combout\ = ((\U1|izquierda~combout\ $ (\U1|select_xShift\(2) $ (!\U1|select_xShift[1]~47\)))) # (GND)
-- \U1|select_xShift[2]~49\ = CARRY((\U1|izquierda~combout\ & ((\U1|select_xShift\(2)) # (!\U1|select_xShift[1]~47\))) # (!\U1|izquierda~combout\ & (\U1|select_xShift\(2) & !\U1|select_xShift[1]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(2),
	datad => VCC,
	cin => \U1|select_xShift[1]~47\,
	combout => \U1|select_xShift[2]~48_combout\,
	cout => \U1|select_xShift[2]~49\);

-- Location: FF_X49_Y12_N5
\U1|select_xShift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[2]~48_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(2));

-- Location: LCCOMB_X49_Y12_N6
\U1|select_xShift[3]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[3]~50_combout\ = (\U1|izquierda~combout\ & ((\U1|select_xShift\(3) & (\U1|select_xShift[2]~49\ & VCC)) # (!\U1|select_xShift\(3) & (!\U1|select_xShift[2]~49\)))) # (!\U1|izquierda~combout\ & ((\U1|select_xShift\(3) & 
-- (!\U1|select_xShift[2]~49\)) # (!\U1|select_xShift\(3) & ((\U1|select_xShift[2]~49\) # (GND)))))
-- \U1|select_xShift[3]~51\ = CARRY((\U1|izquierda~combout\ & (!\U1|select_xShift\(3) & !\U1|select_xShift[2]~49\)) # (!\U1|izquierda~combout\ & ((!\U1|select_xShift[2]~49\) # (!\U1|select_xShift\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(3),
	datad => VCC,
	cin => \U1|select_xShift[2]~49\,
	combout => \U1|select_xShift[3]~50_combout\,
	cout => \U1|select_xShift[3]~51\);

-- Location: FF_X49_Y12_N7
\U1|select_xShift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[3]~50_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(3));

-- Location: LCCOMB_X49_Y12_N8
\U1|select_xShift[4]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[4]~52_combout\ = ((\U1|izquierda~combout\ $ (\U1|select_xShift\(4) $ (!\U1|select_xShift[3]~51\)))) # (GND)
-- \U1|select_xShift[4]~53\ = CARRY((\U1|izquierda~combout\ & ((\U1|select_xShift\(4)) # (!\U1|select_xShift[3]~51\))) # (!\U1|izquierda~combout\ & (\U1|select_xShift\(4) & !\U1|select_xShift[3]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(4),
	datad => VCC,
	cin => \U1|select_xShift[3]~51\,
	combout => \U1|select_xShift[4]~52_combout\,
	cout => \U1|select_xShift[4]~53\);

-- Location: FF_X49_Y12_N9
\U1|select_xShift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[4]~52_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(4));

-- Location: LCCOMB_X49_Y12_N10
\U1|select_xShift[5]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[5]~54_combout\ = (\U1|izquierda~combout\ & ((\U1|select_xShift\(5) & (\U1|select_xShift[4]~53\ & VCC)) # (!\U1|select_xShift\(5) & (!\U1|select_xShift[4]~53\)))) # (!\U1|izquierda~combout\ & ((\U1|select_xShift\(5) & 
-- (!\U1|select_xShift[4]~53\)) # (!\U1|select_xShift\(5) & ((\U1|select_xShift[4]~53\) # (GND)))))
-- \U1|select_xShift[5]~55\ = CARRY((\U1|izquierda~combout\ & (!\U1|select_xShift\(5) & !\U1|select_xShift[4]~53\)) # (!\U1|izquierda~combout\ & ((!\U1|select_xShift[4]~53\) # (!\U1|select_xShift\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(5),
	datad => VCC,
	cin => \U1|select_xShift[4]~53\,
	combout => \U1|select_xShift[5]~54_combout\,
	cout => \U1|select_xShift[5]~55\);

-- Location: FF_X49_Y12_N11
\U1|select_xShift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[5]~54_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(5));

-- Location: LCCOMB_X49_Y12_N12
\U1|select_xShift[6]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[6]~56_combout\ = ((\U1|izquierda~combout\ $ (\U1|select_xShift\(6) $ (!\U1|select_xShift[5]~55\)))) # (GND)
-- \U1|select_xShift[6]~57\ = CARRY((\U1|izquierda~combout\ & ((\U1|select_xShift\(6)) # (!\U1|select_xShift[5]~55\))) # (!\U1|izquierda~combout\ & (\U1|select_xShift\(6) & !\U1|select_xShift[5]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(6),
	datad => VCC,
	cin => \U1|select_xShift[5]~55\,
	combout => \U1|select_xShift[6]~56_combout\,
	cout => \U1|select_xShift[6]~57\);

-- Location: FF_X49_Y12_N13
\U1|select_xShift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[6]~56_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(6));

-- Location: LCCOMB_X49_Y12_N14
\U1|select_xShift[7]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[7]~58_combout\ = (\U1|izquierda~combout\ & ((\U1|select_xShift\(7) & (\U1|select_xShift[6]~57\ & VCC)) # (!\U1|select_xShift\(7) & (!\U1|select_xShift[6]~57\)))) # (!\U1|izquierda~combout\ & ((\U1|select_xShift\(7) & 
-- (!\U1|select_xShift[6]~57\)) # (!\U1|select_xShift\(7) & ((\U1|select_xShift[6]~57\) # (GND)))))
-- \U1|select_xShift[7]~59\ = CARRY((\U1|izquierda~combout\ & (!\U1|select_xShift\(7) & !\U1|select_xShift[6]~57\)) # (!\U1|izquierda~combout\ & ((!\U1|select_xShift[6]~57\) # (!\U1|select_xShift\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(7),
	datad => VCC,
	cin => \U1|select_xShift[6]~57\,
	combout => \U1|select_xShift[7]~58_combout\,
	cout => \U1|select_xShift[7]~59\);

-- Location: FF_X49_Y12_N15
\U1|select_xShift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[7]~58_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(7));

-- Location: LCCOMB_X49_Y12_N16
\U1|select_xShift[8]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[8]~60_combout\ = ((\U1|select_xShift\(8) $ (\U1|izquierda~combout\ $ (!\U1|select_xShift[7]~59\)))) # (GND)
-- \U1|select_xShift[8]~61\ = CARRY((\U1|select_xShift\(8) & ((\U1|izquierda~combout\) # (!\U1|select_xShift[7]~59\))) # (!\U1|select_xShift\(8) & (\U1|izquierda~combout\ & !\U1|select_xShift[7]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(8),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[7]~59\,
	combout => \U1|select_xShift[8]~60_combout\,
	cout => \U1|select_xShift[8]~61\);

-- Location: FF_X49_Y12_N17
\U1|select_xShift[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[8]~60_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(8));

-- Location: LCCOMB_X49_Y12_N18
\U1|select_xShift[9]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[9]~62_combout\ = (\U1|izquierda~combout\ & ((\U1|select_xShift\(9) & (\U1|select_xShift[8]~61\ & VCC)) # (!\U1|select_xShift\(9) & (!\U1|select_xShift[8]~61\)))) # (!\U1|izquierda~combout\ & ((\U1|select_xShift\(9) & 
-- (!\U1|select_xShift[8]~61\)) # (!\U1|select_xShift\(9) & ((\U1|select_xShift[8]~61\) # (GND)))))
-- \U1|select_xShift[9]~63\ = CARRY((\U1|izquierda~combout\ & (!\U1|select_xShift\(9) & !\U1|select_xShift[8]~61\)) # (!\U1|izquierda~combout\ & ((!\U1|select_xShift[8]~61\) # (!\U1|select_xShift\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(9),
	datad => VCC,
	cin => \U1|select_xShift[8]~61\,
	combout => \U1|select_xShift[9]~62_combout\,
	cout => \U1|select_xShift[9]~63\);

-- Location: FF_X49_Y12_N19
\U1|select_xShift[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[9]~62_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(9));

-- Location: LCCOMB_X49_Y12_N20
\U1|select_xShift[10]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[10]~64_combout\ = ((\U1|select_xShift\(10) $ (\U1|izquierda~combout\ $ (!\U1|select_xShift[9]~63\)))) # (GND)
-- \U1|select_xShift[10]~65\ = CARRY((\U1|select_xShift\(10) & ((\U1|izquierda~combout\) # (!\U1|select_xShift[9]~63\))) # (!\U1|select_xShift\(10) & (\U1|izquierda~combout\ & !\U1|select_xShift[9]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(10),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[9]~63\,
	combout => \U1|select_xShift[10]~64_combout\,
	cout => \U1|select_xShift[10]~65\);

-- Location: FF_X49_Y12_N21
\U1|select_xShift[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[10]~64_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(10));

-- Location: LCCOMB_X49_Y12_N22
\U1|select_xShift[11]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[11]~66_combout\ = (\U1|select_xShift\(11) & ((\U1|izquierda~combout\ & (\U1|select_xShift[10]~65\ & VCC)) # (!\U1|izquierda~combout\ & (!\U1|select_xShift[10]~65\)))) # (!\U1|select_xShift\(11) & ((\U1|izquierda~combout\ & 
-- (!\U1|select_xShift[10]~65\)) # (!\U1|izquierda~combout\ & ((\U1|select_xShift[10]~65\) # (GND)))))
-- \U1|select_xShift[11]~67\ = CARRY((\U1|select_xShift\(11) & (!\U1|izquierda~combout\ & !\U1|select_xShift[10]~65\)) # (!\U1|select_xShift\(11) & ((!\U1|select_xShift[10]~65\) # (!\U1|izquierda~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(11),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[10]~65\,
	combout => \U1|select_xShift[11]~66_combout\,
	cout => \U1|select_xShift[11]~67\);

-- Location: FF_X49_Y12_N23
\U1|select_xShift[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[11]~66_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(11));

-- Location: LCCOMB_X49_Y12_N24
\U1|select_xShift[12]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[12]~68_combout\ = ((\U1|select_xShift\(12) $ (\U1|izquierda~combout\ $ (!\U1|select_xShift[11]~67\)))) # (GND)
-- \U1|select_xShift[12]~69\ = CARRY((\U1|select_xShift\(12) & ((\U1|izquierda~combout\) # (!\U1|select_xShift[11]~67\))) # (!\U1|select_xShift\(12) & (\U1|izquierda~combout\ & !\U1|select_xShift[11]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(12),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[11]~67\,
	combout => \U1|select_xShift[12]~68_combout\,
	cout => \U1|select_xShift[12]~69\);

-- Location: FF_X49_Y12_N25
\U1|select_xShift[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[12]~68_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(12));

-- Location: LCCOMB_X49_Y12_N26
\U1|select_xShift[13]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[13]~70_combout\ = (\U1|select_xShift\(13) & ((\U1|izquierda~combout\ & (\U1|select_xShift[12]~69\ & VCC)) # (!\U1|izquierda~combout\ & (!\U1|select_xShift[12]~69\)))) # (!\U1|select_xShift\(13) & ((\U1|izquierda~combout\ & 
-- (!\U1|select_xShift[12]~69\)) # (!\U1|izquierda~combout\ & ((\U1|select_xShift[12]~69\) # (GND)))))
-- \U1|select_xShift[13]~71\ = CARRY((\U1|select_xShift\(13) & (!\U1|izquierda~combout\ & !\U1|select_xShift[12]~69\)) # (!\U1|select_xShift\(13) & ((!\U1|select_xShift[12]~69\) # (!\U1|izquierda~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(13),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[12]~69\,
	combout => \U1|select_xShift[13]~70_combout\,
	cout => \U1|select_xShift[13]~71\);

-- Location: FF_X49_Y12_N27
\U1|select_xShift[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[13]~70_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(13));

-- Location: LCCOMB_X49_Y12_N28
\U1|select_xShift[14]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[14]~72_combout\ = ((\U1|select_xShift\(14) $ (\U1|izquierda~combout\ $ (!\U1|select_xShift[13]~71\)))) # (GND)
-- \U1|select_xShift[14]~73\ = CARRY((\U1|select_xShift\(14) & ((\U1|izquierda~combout\) # (!\U1|select_xShift[13]~71\))) # (!\U1|select_xShift\(14) & (\U1|izquierda~combout\ & !\U1|select_xShift[13]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(14),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[13]~71\,
	combout => \U1|select_xShift[14]~72_combout\,
	cout => \U1|select_xShift[14]~73\);

-- Location: FF_X49_Y12_N29
\U1|select_xShift[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[14]~72_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(14));

-- Location: LCCOMB_X49_Y12_N30
\U1|select_xShift[15]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[15]~74_combout\ = (\U1|select_xShift\(15) & ((\U1|izquierda~combout\ & (\U1|select_xShift[14]~73\ & VCC)) # (!\U1|izquierda~combout\ & (!\U1|select_xShift[14]~73\)))) # (!\U1|select_xShift\(15) & ((\U1|izquierda~combout\ & 
-- (!\U1|select_xShift[14]~73\)) # (!\U1|izquierda~combout\ & ((\U1|select_xShift[14]~73\) # (GND)))))
-- \U1|select_xShift[15]~75\ = CARRY((\U1|select_xShift\(15) & (!\U1|izquierda~combout\ & !\U1|select_xShift[14]~73\)) # (!\U1|select_xShift\(15) & ((!\U1|select_xShift[14]~73\) # (!\U1|izquierda~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(15),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[14]~73\,
	combout => \U1|select_xShift[15]~74_combout\,
	cout => \U1|select_xShift[15]~75\);

-- Location: FF_X49_Y12_N31
\U1|select_xShift[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[15]~74_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(15));

-- Location: LCCOMB_X49_Y11_N0
\U1|select_xShift[16]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[16]~76_combout\ = ((\U1|izquierda~combout\ $ (\U1|select_xShift\(16) $ (!\U1|select_xShift[15]~75\)))) # (GND)
-- \U1|select_xShift[16]~77\ = CARRY((\U1|izquierda~combout\ & ((\U1|select_xShift\(16)) # (!\U1|select_xShift[15]~75\))) # (!\U1|izquierda~combout\ & (\U1|select_xShift\(16) & !\U1|select_xShift[15]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(16),
	datad => VCC,
	cin => \U1|select_xShift[15]~75\,
	combout => \U1|select_xShift[16]~76_combout\,
	cout => \U1|select_xShift[16]~77\);

-- Location: FF_X49_Y11_N1
\U1|select_xShift[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[16]~76_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(16));

-- Location: LCCOMB_X49_Y11_N2
\U1|select_xShift[17]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[17]~78_combout\ = (\U1|izquierda~combout\ & ((\U1|select_xShift\(17) & (\U1|select_xShift[16]~77\ & VCC)) # (!\U1|select_xShift\(17) & (!\U1|select_xShift[16]~77\)))) # (!\U1|izquierda~combout\ & ((\U1|select_xShift\(17) & 
-- (!\U1|select_xShift[16]~77\)) # (!\U1|select_xShift\(17) & ((\U1|select_xShift[16]~77\) # (GND)))))
-- \U1|select_xShift[17]~79\ = CARRY((\U1|izquierda~combout\ & (!\U1|select_xShift\(17) & !\U1|select_xShift[16]~77\)) # (!\U1|izquierda~combout\ & ((!\U1|select_xShift[16]~77\) # (!\U1|select_xShift\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(17),
	datad => VCC,
	cin => \U1|select_xShift[16]~77\,
	combout => \U1|select_xShift[17]~78_combout\,
	cout => \U1|select_xShift[17]~79\);

-- Location: FF_X49_Y11_N3
\U1|select_xShift[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[17]~78_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(17));

-- Location: LCCOMB_X49_Y11_N4
\U1|select_xShift[18]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[18]~80_combout\ = ((\U1|izquierda~combout\ $ (\U1|select_xShift\(18) $ (!\U1|select_xShift[17]~79\)))) # (GND)
-- \U1|select_xShift[18]~81\ = CARRY((\U1|izquierda~combout\ & ((\U1|select_xShift\(18)) # (!\U1|select_xShift[17]~79\))) # (!\U1|izquierda~combout\ & (\U1|select_xShift\(18) & !\U1|select_xShift[17]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(18),
	datad => VCC,
	cin => \U1|select_xShift[17]~79\,
	combout => \U1|select_xShift[18]~80_combout\,
	cout => \U1|select_xShift[18]~81\);

-- Location: FF_X49_Y11_N5
\U1|select_xShift[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[18]~80_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(18));

-- Location: LCCOMB_X49_Y11_N6
\U1|select_xShift[19]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[19]~82_combout\ = (\U1|izquierda~combout\ & ((\U1|select_xShift\(19) & (\U1|select_xShift[18]~81\ & VCC)) # (!\U1|select_xShift\(19) & (!\U1|select_xShift[18]~81\)))) # (!\U1|izquierda~combout\ & ((\U1|select_xShift\(19) & 
-- (!\U1|select_xShift[18]~81\)) # (!\U1|select_xShift\(19) & ((\U1|select_xShift[18]~81\) # (GND)))))
-- \U1|select_xShift[19]~83\ = CARRY((\U1|izquierda~combout\ & (!\U1|select_xShift\(19) & !\U1|select_xShift[18]~81\)) # (!\U1|izquierda~combout\ & ((!\U1|select_xShift[18]~81\) # (!\U1|select_xShift\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(19),
	datad => VCC,
	cin => \U1|select_xShift[18]~81\,
	combout => \U1|select_xShift[19]~82_combout\,
	cout => \U1|select_xShift[19]~83\);

-- Location: FF_X49_Y11_N7
\U1|select_xShift[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[19]~82_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(19));

-- Location: LCCOMB_X49_Y11_N8
\U1|select_xShift[20]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[20]~84_combout\ = ((\U1|izquierda~combout\ $ (\U1|select_xShift\(20) $ (!\U1|select_xShift[19]~83\)))) # (GND)
-- \U1|select_xShift[20]~85\ = CARRY((\U1|izquierda~combout\ & ((\U1|select_xShift\(20)) # (!\U1|select_xShift[19]~83\))) # (!\U1|izquierda~combout\ & (\U1|select_xShift\(20) & !\U1|select_xShift[19]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(20),
	datad => VCC,
	cin => \U1|select_xShift[19]~83\,
	combout => \U1|select_xShift[20]~84_combout\,
	cout => \U1|select_xShift[20]~85\);

-- Location: FF_X49_Y11_N9
\U1|select_xShift[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[20]~84_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(20));

-- Location: LCCOMB_X49_Y11_N10
\U1|select_xShift[21]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[21]~86_combout\ = (\U1|select_xShift\(21) & ((\U1|izquierda~combout\ & (\U1|select_xShift[20]~85\ & VCC)) # (!\U1|izquierda~combout\ & (!\U1|select_xShift[20]~85\)))) # (!\U1|select_xShift\(21) & ((\U1|izquierda~combout\ & 
-- (!\U1|select_xShift[20]~85\)) # (!\U1|izquierda~combout\ & ((\U1|select_xShift[20]~85\) # (GND)))))
-- \U1|select_xShift[21]~87\ = CARRY((\U1|select_xShift\(21) & (!\U1|izquierda~combout\ & !\U1|select_xShift[20]~85\)) # (!\U1|select_xShift\(21) & ((!\U1|select_xShift[20]~85\) # (!\U1|izquierda~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(21),
	datab => \U1|izquierda~combout\,
	datad => VCC,
	cin => \U1|select_xShift[20]~85\,
	combout => \U1|select_xShift[21]~86_combout\,
	cout => \U1|select_xShift[21]~87\);

-- Location: FF_X49_Y11_N11
\U1|select_xShift[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[21]~86_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(21));

-- Location: LCCOMB_X49_Y11_N12
\U1|select_xShift[22]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|select_xShift[22]~88_combout\ = ((\U1|izquierda~combout\ $ (\U1|select_xShift\(22) $ (!\U1|select_xShift[21]~87\)))) # (GND)
-- \U1|select_xShift[22]~89\ = CARRY((\U1|izquierda~combout\ & ((\U1|select_xShift\(22)) # (!\U1|select_xShift[21]~87\))) # (!\U1|izquierda~combout\ & (\U1|select_xShift\(22) & !\U1|select_xShift[21]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|izquierda~combout\,
	datab => \U1|select_xShift\(22),
	datad => VCC,
	cin => \U1|select_xShift[21]~87\,
	combout => \U1|select_xShift[22]~88_combout\,
	cout => \U1|select_xShift[22]~89\);

-- Location: FF_X49_Y11_N13
\U1|select_xShift[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[22]~88_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(22));

-- Location: FF_X49_Y11_N15
\U1|select_xShift[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|select_xShift[23]~90_combout\,
	ena => \U1|select_xShift[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|select_xShift\(23));

-- Location: DSPMULT_X48_Y11_N0
\U0|Mult0|auto_generated|mac_mult3\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \U0|Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \U0|Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y11_N2
\U0|Mult0|auto_generated|mac_out4\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U0|Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X44_Y11_N16
\U0|Mult0|auto_generated|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_2~0_combout\ = \U0|Mult0|auto_generated|mac_out4~DATAOUT8\ $ (VCC)
-- \U0|Mult0|auto_generated|op_2~1\ = CARRY(\U0|Mult0|auto_generated|mac_out4~DATAOUT8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	combout => \U0|Mult0|auto_generated|op_2~0_combout\,
	cout => \U0|Mult0|auto_generated|op_2~1\);

-- Location: LCCOMB_X44_Y11_N18
\U0|Mult0|auto_generated|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_2~2_combout\ = (\U0|Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\U0|Mult0|auto_generated|op_2~1\)) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\U0|Mult0|auto_generated|op_2~1\) # (GND)))
-- \U0|Mult0|auto_generated|op_2~3\ = CARRY((!\U0|Mult0|auto_generated|op_2~1\) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_2~1\,
	combout => \U0|Mult0|auto_generated|op_2~2_combout\,
	cout => \U0|Mult0|auto_generated|op_2~3\);

-- Location: LCCOMB_X44_Y11_N20
\U0|Mult0|auto_generated|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_2~4_combout\ = (\U0|Mult0|auto_generated|mac_out4~DATAOUT10\ & (\U0|Mult0|auto_generated|op_2~3\ $ (GND))) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT10\ & (!\U0|Mult0|auto_generated|op_2~3\ & VCC))
-- \U0|Mult0|auto_generated|op_2~5\ = CARRY((\U0|Mult0|auto_generated|mac_out4~DATAOUT10\ & !\U0|Mult0|auto_generated|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_2~3\,
	combout => \U0|Mult0|auto_generated|op_2~4_combout\,
	cout => \U0|Mult0|auto_generated|op_2~5\);

-- Location: LCCOMB_X44_Y11_N22
\U0|Mult0|auto_generated|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_2~6_combout\ = (\U0|Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\U0|Mult0|auto_generated|op_2~5\)) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\U0|Mult0|auto_generated|op_2~5\) # (GND)))
-- \U0|Mult0|auto_generated|op_2~7\ = CARRY((!\U0|Mult0|auto_generated|op_2~5\) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_2~5\,
	combout => \U0|Mult0|auto_generated|op_2~6_combout\,
	cout => \U0|Mult0|auto_generated|op_2~7\);

-- Location: LCCOMB_X44_Y11_N24
\U0|Mult0|auto_generated|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_2~8_combout\ = (\U0|Mult0|auto_generated|mac_out4~DATAOUT12\ & (\U0|Mult0|auto_generated|op_2~7\ $ (GND))) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT12\ & (!\U0|Mult0|auto_generated|op_2~7\ & VCC))
-- \U0|Mult0|auto_generated|op_2~9\ = CARRY((\U0|Mult0|auto_generated|mac_out4~DATAOUT12\ & !\U0|Mult0|auto_generated|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_2~7\,
	combout => \U0|Mult0|auto_generated|op_2~8_combout\,
	cout => \U0|Mult0|auto_generated|op_2~9\);

-- Location: LCCOMB_X44_Y11_N26
\U0|Mult0|auto_generated|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_2~10_combout\ = \U0|Mult0|auto_generated|op_2~9\ $ (\U0|Mult0|auto_generated|mac_out4~DATAOUT13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Mult0|auto_generated|mac_out4~DATAOUT13\,
	cin => \U0|Mult0|auto_generated|op_2~9\,
	combout => \U0|Mult0|auto_generated|op_2~10_combout\);

-- Location: DSPMULT_X48_Y12_N0
\U0|Mult0|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \U0|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \U0|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y12_N2
\U0|Mult0|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \U0|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X45_Y11_N2
\U0|Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~0_combout\ = (\U0|Mult0|auto_generated|mac_out4~dataout\ & (\U0|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\U0|Mult0|auto_generated|mac_out4~dataout\ & (\U0|Mult0|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \U0|Mult0|auto_generated|op_1~1\ = CARRY((\U0|Mult0|auto_generated|mac_out4~dataout\ & \U0|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out4~dataout\,
	datab => \U0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \U0|Mult0|auto_generated|op_1~0_combout\,
	cout => \U0|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X45_Y11_N4
\U0|Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~2_combout\ = (\U0|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\U0|Mult0|auto_generated|mac_out4~DATAOUT1\ & (\U0|Mult0|auto_generated|op_1~1\ & VCC)) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- (!\U0|Mult0|auto_generated|op_1~1\)))) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\U0|Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\U0|Mult0|auto_generated|op_1~1\)) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- ((\U0|Mult0|auto_generated|op_1~1\) # (GND)))))
-- \U0|Mult0|auto_generated|op_1~3\ = CARRY((\U0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\U0|Mult0|auto_generated|mac_out4~DATAOUT1\ & !\U0|Mult0|auto_generated|op_1~1\)) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((!\U0|Mult0|auto_generated|op_1~1\) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \U0|Mult0|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~1\,
	combout => \U0|Mult0|auto_generated|op_1~2_combout\,
	cout => \U0|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X45_Y11_N6
\U0|Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~4_combout\ = ((\U0|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (\U0|Mult0|auto_generated|mac_out4~DATAOUT2\ $ (!\U0|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \U0|Mult0|auto_generated|op_1~5\ = CARRY((\U0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\U0|Mult0|auto_generated|mac_out4~DATAOUT2\) # (!\U0|Mult0|auto_generated|op_1~3\))) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- (\U0|Mult0|auto_generated|mac_out4~DATAOUT2\ & !\U0|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \U0|Mult0|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~3\,
	combout => \U0|Mult0|auto_generated|op_1~4_combout\,
	cout => \U0|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X45_Y11_N8
\U0|Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~6_combout\ = (\U0|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\U0|Mult0|auto_generated|mac_out4~DATAOUT3\ & (\U0|Mult0|auto_generated|op_1~5\ & VCC)) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\U0|Mult0|auto_generated|op_1~5\)))) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\U0|Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\U0|Mult0|auto_generated|op_1~5\)) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- ((\U0|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \U0|Mult0|auto_generated|op_1~7\ = CARRY((\U0|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\U0|Mult0|auto_generated|mac_out4~DATAOUT3\ & !\U0|Mult0|auto_generated|op_1~5\)) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\U0|Mult0|auto_generated|op_1~5\) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \U0|Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~5\,
	combout => \U0|Mult0|auto_generated|op_1~6_combout\,
	cout => \U0|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X45_Y11_N10
\U0|Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~8_combout\ = ((\U0|Mult0|auto_generated|mac_out4~DATAOUT4\ $ (\U0|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (!\U0|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \U0|Mult0|auto_generated|op_1~9\ = CARRY((\U0|Mult0|auto_generated|mac_out4~DATAOUT4\ & ((\U0|Mult0|auto_generated|mac_out2~DATAOUT22\) # (!\U0|Mult0|auto_generated|op_1~7\))) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT4\ & 
-- (\U0|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\U0|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \U0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~7\,
	combout => \U0|Mult0|auto_generated|op_1~8_combout\,
	cout => \U0|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X45_Y11_N12
\U0|Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~10_combout\ = (\U0|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\U0|Mult0|auto_generated|mac_out4~DATAOUT5\ & (\U0|Mult0|auto_generated|op_1~9\ & VCC)) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- (!\U0|Mult0|auto_generated|op_1~9\)))) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\U0|Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\U0|Mult0|auto_generated|op_1~9\)) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\U0|Mult0|auto_generated|op_1~9\) # (GND)))))
-- \U0|Mult0|auto_generated|op_1~11\ = CARRY((\U0|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\U0|Mult0|auto_generated|mac_out4~DATAOUT5\ & !\U0|Mult0|auto_generated|op_1~9\)) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((!\U0|Mult0|auto_generated|op_1~9\) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \U0|Mult0|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~9\,
	combout => \U0|Mult0|auto_generated|op_1~10_combout\,
	cout => \U0|Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X45_Y11_N14
\U0|Mult0|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~12_combout\ = ((\U0|Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\U0|Mult0|auto_generated|mac_out4~DATAOUT6\ $ (!\U0|Mult0|auto_generated|op_1~11\)))) # (GND)
-- \U0|Mult0|auto_generated|op_1~13\ = CARRY((\U0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\U0|Mult0|auto_generated|mac_out4~DATAOUT6\) # (!\U0|Mult0|auto_generated|op_1~11\))) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- (\U0|Mult0|auto_generated|mac_out4~DATAOUT6\ & !\U0|Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \U0|Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~11\,
	combout => \U0|Mult0|auto_generated|op_1~12_combout\,
	cout => \U0|Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X45_Y11_N16
\U0|Mult0|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~14_combout\ = (\U0|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\U0|Mult0|auto_generated|mac_out2~DATAOUT25\ & (\U0|Mult0|auto_generated|op_1~13\ & VCC)) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- (!\U0|Mult0|auto_generated|op_1~13\)))) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\U0|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\U0|Mult0|auto_generated|op_1~13\)) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- ((\U0|Mult0|auto_generated|op_1~13\) # (GND)))))
-- \U0|Mult0|auto_generated|op_1~15\ = CARRY((\U0|Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\U0|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\U0|Mult0|auto_generated|op_1~13\)) # (!\U0|Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- ((!\U0|Mult0|auto_generated|op_1~13\) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|mac_out4~DATAOUT7\,
	datab => \U0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~13\,
	combout => \U0|Mult0|auto_generated|op_1~14_combout\,
	cout => \U0|Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X45_Y11_N18
\U0|Mult0|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~16_combout\ = ((\U0|Mult0|auto_generated|op_2~0_combout\ $ (\U0|Mult0|auto_generated|mac_out2~DATAOUT26\ $ (\U0|Mult0|auto_generated|op_1~15\)))) # (GND)
-- \U0|Mult0|auto_generated|op_1~17\ = CARRY((\U0|Mult0|auto_generated|op_2~0_combout\ & ((!\U0|Mult0|auto_generated|op_1~15\) # (!\U0|Mult0|auto_generated|mac_out2~DATAOUT26\))) # (!\U0|Mult0|auto_generated|op_2~0_combout\ & 
-- (!\U0|Mult0|auto_generated|mac_out2~DATAOUT26\ & !\U0|Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|op_2~0_combout\,
	datab => \U0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~15\,
	combout => \U0|Mult0|auto_generated|op_1~16_combout\,
	cout => \U0|Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X45_Y11_N20
\U0|Mult0|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~18_combout\ = (\U0|Mult0|auto_generated|op_2~2_combout\ & (\U0|Mult0|auto_generated|op_1~17\ & VCC)) # (!\U0|Mult0|auto_generated|op_2~2_combout\ & (!\U0|Mult0|auto_generated|op_1~17\))
-- \U0|Mult0|auto_generated|op_1~19\ = CARRY((!\U0|Mult0|auto_generated|op_2~2_combout\ & !\U0|Mult0|auto_generated|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_2~2_combout\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~17\,
	combout => \U0|Mult0|auto_generated|op_1~18_combout\,
	cout => \U0|Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X45_Y11_N22
\U0|Mult0|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~20_combout\ = (\U0|Mult0|auto_generated|op_2~4_combout\ & ((GND) # (!\U0|Mult0|auto_generated|op_1~19\))) # (!\U0|Mult0|auto_generated|op_2~4_combout\ & (\U0|Mult0|auto_generated|op_1~19\ $ (GND)))
-- \U0|Mult0|auto_generated|op_1~21\ = CARRY((\U0|Mult0|auto_generated|op_2~4_combout\) # (!\U0|Mult0|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~19\,
	combout => \U0|Mult0|auto_generated|op_1~20_combout\,
	cout => \U0|Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X45_Y11_N24
\U0|Mult0|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~22_combout\ = (\U0|Mult0|auto_generated|op_2~6_combout\ & (\U0|Mult0|auto_generated|op_1~21\ & VCC)) # (!\U0|Mult0|auto_generated|op_2~6_combout\ & (!\U0|Mult0|auto_generated|op_1~21\))
-- \U0|Mult0|auto_generated|op_1~23\ = CARRY((!\U0|Mult0|auto_generated|op_2~6_combout\ & !\U0|Mult0|auto_generated|op_1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~21\,
	combout => \U0|Mult0|auto_generated|op_1~22_combout\,
	cout => \U0|Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X45_Y11_N26
\U0|Mult0|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~24_combout\ = (\U0|Mult0|auto_generated|op_2~8_combout\ & ((GND) # (!\U0|Mult0|auto_generated|op_1~23\))) # (!\U0|Mult0|auto_generated|op_2~8_combout\ & (\U0|Mult0|auto_generated|op_1~23\ $ (GND)))
-- \U0|Mult0|auto_generated|op_1~25\ = CARRY((\U0|Mult0|auto_generated|op_2~8_combout\) # (!\U0|Mult0|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \U0|Mult0|auto_generated|op_1~23\,
	combout => \U0|Mult0|auto_generated|op_1~24_combout\,
	cout => \U0|Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X45_Y11_N28
\U0|Mult0|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult0|auto_generated|op_1~26_combout\ = \U0|Mult0|auto_generated|op_2~10_combout\ $ (!\U0|Mult0|auto_generated|op_1~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|op_2~10_combout\,
	cin => \U0|Mult0|auto_generated|op_1~25\,
	combout => \U0|Mult0|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X44_Y15_N4
\U0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = \U0|Mult0|auto_generated|w260w\(3) $ (VCC)
-- \U0|Add0~1\ = CARRY(\U0|Mult0|auto_generated|w260w\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|w260w\(3),
	datad => VCC,
	combout => \U0|Add0~0_combout\,
	cout => \U0|Add0~1\);

-- Location: LCCOMB_X44_Y15_N6
\U0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (\U0|Mult0|auto_generated|w260w\(4) & (!\U0|Add0~1\)) # (!\U0|Mult0|auto_generated|w260w\(4) & ((\U0|Add0~1\) # (GND)))
-- \U0|Add0~3\ = CARRY((!\U0|Add0~1\) # (!\U0|Mult0|auto_generated|w260w\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|w260w\(4),
	datad => VCC,
	cin => \U0|Add0~1\,
	combout => \U0|Add0~2_combout\,
	cout => \U0|Add0~3\);

-- Location: LCCOMB_X44_Y15_N8
\U0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~4_combout\ = (\U0|Mult0|auto_generated|w260w\(5) & (\U0|Add0~3\ $ (GND))) # (!\U0|Mult0|auto_generated|w260w\(5) & (!\U0|Add0~3\ & VCC))
-- \U0|Add0~5\ = CARRY((\U0|Mult0|auto_generated|w260w\(5) & !\U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|w260w\(5),
	datad => VCC,
	cin => \U0|Add0~3\,
	combout => \U0|Add0~4_combout\,
	cout => \U0|Add0~5\);

-- Location: LCCOMB_X44_Y15_N10
\U0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (\U0|Mult0|auto_generated|w260w\(6) & (!\U0|Add0~5\)) # (!\U0|Mult0|auto_generated|w260w\(6) & ((\U0|Add0~5\) # (GND)))
-- \U0|Add0~7\ = CARRY((!\U0|Add0~5\) # (!\U0|Mult0|auto_generated|w260w\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|w260w\(6),
	datad => VCC,
	cin => \U0|Add0~5\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: LCCOMB_X44_Y15_N12
\U0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~8_combout\ = (\U0|Mult0|auto_generated|w260w\(7) & (\U0|Add0~7\ $ (GND))) # (!\U0|Mult0|auto_generated|w260w\(7) & (!\U0|Add0~7\ & VCC))
-- \U0|Add0~9\ = CARRY((\U0|Mult0|auto_generated|w260w\(7) & !\U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|w260w\(7),
	datad => VCC,
	cin => \U0|Add0~7\,
	combout => \U0|Add0~8_combout\,
	cout => \U0|Add0~9\);

-- Location: LCCOMB_X44_Y15_N14
\U0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~10_combout\ = (\U0|Mult0|auto_generated|w260w\(8) & (!\U0|Add0~9\)) # (!\U0|Mult0|auto_generated|w260w\(8) & ((\U0|Add0~9\) # (GND)))
-- \U0|Add0~11\ = CARRY((!\U0|Add0~9\) # (!\U0|Mult0|auto_generated|w260w\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|w260w\(8),
	datad => VCC,
	cin => \U0|Add0~9\,
	combout => \U0|Add0~10_combout\,
	cout => \U0|Add0~11\);

-- Location: LCCOMB_X44_Y15_N16
\U0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = (\U0|Mult0|auto_generated|w260w\(9) & (\U0|Add0~11\ $ (GND))) # (!\U0|Mult0|auto_generated|w260w\(9) & (!\U0|Add0~11\ & VCC))
-- \U0|Add0~13\ = CARRY((\U0|Mult0|auto_generated|w260w\(9) & !\U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|w260w\(9),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: LCCOMB_X44_Y15_N18
\U0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~14_combout\ = (\U0|Mult0|auto_generated|w260w\(10) & (!\U0|Add0~13\)) # (!\U0|Mult0|auto_generated|w260w\(10) & ((\U0|Add0~13\) # (GND)))
-- \U0|Add0~15\ = CARRY((!\U0|Add0~13\) # (!\U0|Mult0|auto_generated|w260w\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|w260w\(10),
	datad => VCC,
	cin => \U0|Add0~13\,
	combout => \U0|Add0~14_combout\,
	cout => \U0|Add0~15\);

-- Location: LCCOMB_X44_Y15_N20
\U0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~16_combout\ = (\U0|Mult0|auto_generated|w260w\(11) & (\U0|Add0~15\ $ (GND))) # (!\U0|Mult0|auto_generated|w260w\(11) & (!\U0|Add0~15\ & VCC))
-- \U0|Add0~17\ = CARRY((\U0|Mult0|auto_generated|w260w\(11) & !\U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|w260w\(11),
	datad => VCC,
	cin => \U0|Add0~15\,
	combout => \U0|Add0~16_combout\,
	cout => \U0|Add0~17\);

-- Location: LCCOMB_X44_Y15_N22
\U0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~18_combout\ = (\U0|Mult0|auto_generated|w260w\(12) & (!\U0|Add0~17\)) # (!\U0|Mult0|auto_generated|w260w\(12) & ((\U0|Add0~17\) # (GND)))
-- \U0|Add0~19\ = CARRY((!\U0|Add0~17\) # (!\U0|Mult0|auto_generated|w260w\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|w260w\(12),
	datad => VCC,
	cin => \U0|Add0~17\,
	combout => \U0|Add0~18_combout\,
	cout => \U0|Add0~19\);

-- Location: LCCOMB_X44_Y15_N24
\U0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~20_combout\ = (\U0|Mult0|auto_generated|w260w\(13) & (\U0|Add0~19\ $ (GND))) # (!\U0|Mult0|auto_generated|w260w\(13) & (!\U0|Add0~19\ & VCC))
-- \U0|Add0~21\ = CARRY((\U0|Mult0|auto_generated|w260w\(13) & !\U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|w260w\(13),
	datad => VCC,
	cin => \U0|Add0~19\,
	combout => \U0|Add0~20_combout\,
	cout => \U0|Add0~21\);

-- Location: LCCOMB_X44_Y15_N26
\U0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~22_combout\ = (\U0|Mult0|auto_generated|w260w\(14) & (!\U0|Add0~21\)) # (!\U0|Mult0|auto_generated|w260w\(14) & ((\U0|Add0~21\) # (GND)))
-- \U0|Add0~23\ = CARRY((!\U0|Add0~21\) # (!\U0|Mult0|auto_generated|w260w\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|w260w\(14),
	datad => VCC,
	cin => \U0|Add0~21\,
	combout => \U0|Add0~22_combout\,
	cout => \U0|Add0~23\);

-- Location: LCCOMB_X44_Y15_N28
\U0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~24_combout\ = (\U0|Mult0|auto_generated|w260w\(15) & (\U0|Add0~23\ $ (GND))) # (!\U0|Mult0|auto_generated|w260w\(15) & (!\U0|Add0~23\ & VCC))
-- \U0|Add0~25\ = CARRY((\U0|Mult0|auto_generated|w260w\(15) & !\U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|w260w\(15),
	datad => VCC,
	cin => \U0|Add0~23\,
	combout => \U0|Add0~24_combout\,
	cout => \U0|Add0~25\);

-- Location: LCCOMB_X44_Y15_N30
\U0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~26_combout\ = (\U0|Mult0|auto_generated|w260w\(16) & (!\U0|Add0~25\)) # (!\U0|Mult0|auto_generated|w260w\(16) & ((\U0|Add0~25\) # (GND)))
-- \U0|Add0~27\ = CARRY((!\U0|Add0~25\) # (!\U0|Mult0|auto_generated|w260w\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|w260w\(16),
	datad => VCC,
	cin => \U0|Add0~25\,
	combout => \U0|Add0~26_combout\,
	cout => \U0|Add0~27\);

-- Location: LCCOMB_X44_Y14_N0
\U0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~28_combout\ = (\U0|Mult0|auto_generated|w260w\(17) & (\U0|Add0~27\ $ (GND))) # (!\U0|Mult0|auto_generated|w260w\(17) & (!\U0|Add0~27\ & VCC))
-- \U0|Add0~29\ = CARRY((\U0|Mult0|auto_generated|w260w\(17) & !\U0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|w260w\(17),
	datad => VCC,
	cin => \U0|Add0~27\,
	combout => \U0|Add0~28_combout\,
	cout => \U0|Add0~29\);

-- Location: LCCOMB_X44_Y14_N2
\U0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~30_combout\ = (\U0|Mult0|auto_generated|op_1~0_combout\ & (!\U0|Add0~29\)) # (!\U0|Mult0|auto_generated|op_1~0_combout\ & ((\U0|Add0~29\) # (GND)))
-- \U0|Add0~31\ = CARRY((!\U0|Add0~29\) # (!\U0|Mult0|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \U0|Add0~29\,
	combout => \U0|Add0~30_combout\,
	cout => \U0|Add0~31\);

-- Location: LCCOMB_X44_Y14_N4
\U0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~32_combout\ = (\U0|Mult0|auto_generated|op_1~2_combout\ & (\U0|Add0~31\ $ (GND))) # (!\U0|Mult0|auto_generated|op_1~2_combout\ & (!\U0|Add0~31\ & VCC))
-- \U0|Add0~33\ = CARRY((\U0|Mult0|auto_generated|op_1~2_combout\ & !\U0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \U0|Add0~31\,
	combout => \U0|Add0~32_combout\,
	cout => \U0|Add0~33\);

-- Location: LCCOMB_X44_Y14_N6
\U0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~34_combout\ = (\U0|Mult0|auto_generated|op_1~4_combout\ & (!\U0|Add0~33\)) # (!\U0|Mult0|auto_generated|op_1~4_combout\ & ((\U0|Add0~33\) # (GND)))
-- \U0|Add0~35\ = CARRY((!\U0|Add0~33\) # (!\U0|Mult0|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \U0|Add0~33\,
	combout => \U0|Add0~34_combout\,
	cout => \U0|Add0~35\);

-- Location: LCCOMB_X44_Y14_N8
\U0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~36_combout\ = (\U0|Mult0|auto_generated|op_1~6_combout\ & (\U0|Add0~35\ $ (GND))) # (!\U0|Mult0|auto_generated|op_1~6_combout\ & (!\U0|Add0~35\ & VCC))
-- \U0|Add0~37\ = CARRY((\U0|Mult0|auto_generated|op_1~6_combout\ & !\U0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \U0|Add0~35\,
	combout => \U0|Add0~36_combout\,
	cout => \U0|Add0~37\);

-- Location: LCCOMB_X44_Y14_N10
\U0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~38_combout\ = (\U0|Mult0|auto_generated|op_1~8_combout\ & (!\U0|Add0~37\)) # (!\U0|Mult0|auto_generated|op_1~8_combout\ & ((\U0|Add0~37\) # (GND)))
-- \U0|Add0~39\ = CARRY((!\U0|Add0~37\) # (!\U0|Mult0|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \U0|Add0~37\,
	combout => \U0|Add0~38_combout\,
	cout => \U0|Add0~39\);

-- Location: LCCOMB_X44_Y14_N12
\U0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~40_combout\ = (\U0|Mult0|auto_generated|op_1~10_combout\ & (\U0|Add0~39\ $ (GND))) # (!\U0|Mult0|auto_generated|op_1~10_combout\ & (!\U0|Add0~39\ & VCC))
-- \U0|Add0~41\ = CARRY((\U0|Mult0|auto_generated|op_1~10_combout\ & !\U0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \U0|Add0~39\,
	combout => \U0|Add0~40_combout\,
	cout => \U0|Add0~41\);

-- Location: LCCOMB_X44_Y14_N14
\U0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~42_combout\ = (\U0|Mult0|auto_generated|op_1~12_combout\ & (!\U0|Add0~41\)) # (!\U0|Mult0|auto_generated|op_1~12_combout\ & ((\U0|Add0~41\) # (GND)))
-- \U0|Add0~43\ = CARRY((!\U0|Add0~41\) # (!\U0|Mult0|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \U0|Add0~41\,
	combout => \U0|Add0~42_combout\,
	cout => \U0|Add0~43\);

-- Location: LCCOMB_X44_Y14_N16
\U0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~44_combout\ = (\U0|Mult0|auto_generated|op_1~14_combout\ & (\U0|Add0~43\ $ (GND))) # (!\U0|Mult0|auto_generated|op_1~14_combout\ & (!\U0|Add0~43\ & VCC))
-- \U0|Add0~45\ = CARRY((\U0|Mult0|auto_generated|op_1~14_combout\ & !\U0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \U0|Add0~43\,
	combout => \U0|Add0~44_combout\,
	cout => \U0|Add0~45\);

-- Location: LCCOMB_X44_Y14_N18
\U0|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~46_combout\ = (\U0|Mult0|auto_generated|op_1~16_combout\ & (!\U0|Add0~45\)) # (!\U0|Mult0|auto_generated|op_1~16_combout\ & ((\U0|Add0~45\) # (GND)))
-- \U0|Add0~47\ = CARRY((!\U0|Add0~45\) # (!\U0|Mult0|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \U0|Add0~45\,
	combout => \U0|Add0~46_combout\,
	cout => \U0|Add0~47\);

-- Location: LCCOMB_X44_Y14_N20
\U0|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~48_combout\ = (\U0|Mult0|auto_generated|op_1~18_combout\ & (\U0|Add0~47\ $ (GND))) # (!\U0|Mult0|auto_generated|op_1~18_combout\ & (!\U0|Add0~47\ & VCC))
-- \U0|Add0~49\ = CARRY((\U0|Mult0|auto_generated|op_1~18_combout\ & !\U0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \U0|Add0~47\,
	combout => \U0|Add0~48_combout\,
	cout => \U0|Add0~49\);

-- Location: LCCOMB_X44_Y14_N22
\U0|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~50_combout\ = (\U0|Mult0|auto_generated|op_1~20_combout\ & (!\U0|Add0~49\)) # (!\U0|Mult0|auto_generated|op_1~20_combout\ & ((\U0|Add0~49\) # (GND)))
-- \U0|Add0~51\ = CARRY((!\U0|Add0~49\) # (!\U0|Mult0|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult0|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \U0|Add0~49\,
	combout => \U0|Add0~50_combout\,
	cout => \U0|Add0~51\);

-- Location: LCCOMB_X44_Y14_N24
\U0|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~52_combout\ = (\U0|Mult0|auto_generated|op_1~22_combout\ & (\U0|Add0~51\ $ (GND))) # (!\U0|Mult0|auto_generated|op_1~22_combout\ & (!\U0|Add0~51\ & VCC))
-- \U0|Add0~53\ = CARRY((\U0|Mult0|auto_generated|op_1~22_combout\ & !\U0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \U0|Add0~51\,
	combout => \U0|Add0~52_combout\,
	cout => \U0|Add0~53\);

-- Location: LCCOMB_X44_Y14_N26
\U0|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~54_combout\ = (\U0|Mult0|auto_generated|op_1~24_combout\ & (!\U0|Add0~53\)) # (!\U0|Mult0|auto_generated|op_1~24_combout\ & ((\U0|Add0~53\) # (GND)))
-- \U0|Add0~55\ = CARRY((!\U0|Add0~53\) # (!\U0|Mult0|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult0|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \U0|Add0~53\,
	combout => \U0|Add0~54_combout\,
	cout => \U0|Add0~55\);

-- Location: LCCOMB_X44_Y14_N28
\U0|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~56_combout\ = \U0|Add0~55\ $ (!\U0|Mult0|auto_generated|op_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Mult0|auto_generated|op_1~26_combout\,
	cin => \U0|Add0~55\,
	combout => \U0|Add0~56_combout\);

-- Location: LCCOMB_X41_Y15_N4
\U0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~0_combout\ = \U0|Add0~0_combout\ $ (VCC)
-- \U0|Add1~1\ = CARRY(\U0|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~0_combout\,
	datad => VCC,
	combout => \U0|Add1~0_combout\,
	cout => \U0|Add1~1\);

-- Location: LCCOMB_X41_Y15_N6
\U0|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~2_combout\ = (\U0|Add0~2_combout\ & (\U0|Add1~1\ & VCC)) # (!\U0|Add0~2_combout\ & (!\U0|Add1~1\))
-- \U0|Add1~3\ = CARRY((!\U0|Add0~2_combout\ & !\U0|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~2_combout\,
	datad => VCC,
	cin => \U0|Add1~1\,
	combout => \U0|Add1~2_combout\,
	cout => \U0|Add1~3\);

-- Location: LCCOMB_X41_Y15_N8
\U0|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~4_combout\ = (\U0|Add0~4_combout\ & ((GND) # (!\U0|Add1~3\))) # (!\U0|Add0~4_combout\ & (\U0|Add1~3\ $ (GND)))
-- \U0|Add1~5\ = CARRY((\U0|Add0~4_combout\) # (!\U0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~4_combout\,
	datad => VCC,
	cin => \U0|Add1~3\,
	combout => \U0|Add1~4_combout\,
	cout => \U0|Add1~5\);

-- Location: LCCOMB_X41_Y15_N10
\U0|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~6_combout\ = (\U0|Add0~6_combout\ & (!\U0|Add1~5\)) # (!\U0|Add0~6_combout\ & ((\U0|Add1~5\) # (GND)))
-- \U0|Add1~7\ = CARRY((!\U0|Add1~5\) # (!\U0|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~6_combout\,
	datad => VCC,
	cin => \U0|Add1~5\,
	combout => \U0|Add1~6_combout\,
	cout => \U0|Add1~7\);

-- Location: LCCOMB_X41_Y15_N12
\U0|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~8_combout\ = (\U0|Add0~8_combout\ & ((GND) # (!\U0|Add1~7\))) # (!\U0|Add0~8_combout\ & (\U0|Add1~7\ $ (GND)))
-- \U0|Add1~9\ = CARRY((\U0|Add0~8_combout\) # (!\U0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~8_combout\,
	datad => VCC,
	cin => \U0|Add1~7\,
	combout => \U0|Add1~8_combout\,
	cout => \U0|Add1~9\);

-- Location: LCCOMB_X41_Y15_N14
\U0|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~10_combout\ = (\U0|Add0~10_combout\ & (!\U0|Add1~9\)) # (!\U0|Add0~10_combout\ & ((\U0|Add1~9\) # (GND)))
-- \U0|Add1~11\ = CARRY((!\U0|Add1~9\) # (!\U0|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~10_combout\,
	datad => VCC,
	cin => \U0|Add1~9\,
	combout => \U0|Add1~10_combout\,
	cout => \U0|Add1~11\);

-- Location: LCCOMB_X41_Y15_N16
\U0|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~12_combout\ = (\U0|Add0~12_combout\ & (\U0|Add1~11\ $ (GND))) # (!\U0|Add0~12_combout\ & (!\U0|Add1~11\ & VCC))
-- \U0|Add1~13\ = CARRY((\U0|Add0~12_combout\ & !\U0|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~12_combout\,
	datad => VCC,
	cin => \U0|Add1~11\,
	combout => \U0|Add1~12_combout\,
	cout => \U0|Add1~13\);

-- Location: LCCOMB_X41_Y15_N18
\U0|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~14_combout\ = (\U0|Add0~14_combout\ & (!\U0|Add1~13\)) # (!\U0|Add0~14_combout\ & ((\U0|Add1~13\) # (GND)))
-- \U0|Add1~15\ = CARRY((!\U0|Add1~13\) # (!\U0|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~14_combout\,
	datad => VCC,
	cin => \U0|Add1~13\,
	combout => \U0|Add1~14_combout\,
	cout => \U0|Add1~15\);

-- Location: LCCOMB_X41_Y15_N20
\U0|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~16_combout\ = (\U0|Add0~16_combout\ & (\U0|Add1~15\ $ (GND))) # (!\U0|Add0~16_combout\ & (!\U0|Add1~15\ & VCC))
-- \U0|Add1~17\ = CARRY((\U0|Add0~16_combout\ & !\U0|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~16_combout\,
	datad => VCC,
	cin => \U0|Add1~15\,
	combout => \U0|Add1~16_combout\,
	cout => \U0|Add1~17\);

-- Location: LCCOMB_X41_Y15_N22
\U0|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~18_combout\ = (\U0|Add0~18_combout\ & (!\U0|Add1~17\)) # (!\U0|Add0~18_combout\ & ((\U0|Add1~17\) # (GND)))
-- \U0|Add1~19\ = CARRY((!\U0|Add1~17\) # (!\U0|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~18_combout\,
	datad => VCC,
	cin => \U0|Add1~17\,
	combout => \U0|Add1~18_combout\,
	cout => \U0|Add1~19\);

-- Location: LCCOMB_X41_Y15_N24
\U0|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~20_combout\ = (\U0|Add0~20_combout\ & (\U0|Add1~19\ $ (GND))) # (!\U0|Add0~20_combout\ & (!\U0|Add1~19\ & VCC))
-- \U0|Add1~21\ = CARRY((\U0|Add0~20_combout\ & !\U0|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~20_combout\,
	datad => VCC,
	cin => \U0|Add1~19\,
	combout => \U0|Add1~20_combout\,
	cout => \U0|Add1~21\);

-- Location: LCCOMB_X41_Y15_N26
\U0|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~22_combout\ = (\U0|Add0~22_combout\ & (!\U0|Add1~21\)) # (!\U0|Add0~22_combout\ & ((\U0|Add1~21\) # (GND)))
-- \U0|Add1~23\ = CARRY((!\U0|Add1~21\) # (!\U0|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~22_combout\,
	datad => VCC,
	cin => \U0|Add1~21\,
	combout => \U0|Add1~22_combout\,
	cout => \U0|Add1~23\);

-- Location: LCCOMB_X41_Y15_N28
\U0|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~24_combout\ = (\U0|Add0~24_combout\ & (\U0|Add1~23\ $ (GND))) # (!\U0|Add0~24_combout\ & (!\U0|Add1~23\ & VCC))
-- \U0|Add1~25\ = CARRY((\U0|Add0~24_combout\ & !\U0|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~24_combout\,
	datad => VCC,
	cin => \U0|Add1~23\,
	combout => \U0|Add1~24_combout\,
	cout => \U0|Add1~25\);

-- Location: LCCOMB_X41_Y15_N30
\U0|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~26_combout\ = (\U0|Add0~26_combout\ & (!\U0|Add1~25\)) # (!\U0|Add0~26_combout\ & ((\U0|Add1~25\) # (GND)))
-- \U0|Add1~27\ = CARRY((!\U0|Add1~25\) # (!\U0|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~26_combout\,
	datad => VCC,
	cin => \U0|Add1~25\,
	combout => \U0|Add1~26_combout\,
	cout => \U0|Add1~27\);

-- Location: LCCOMB_X41_Y14_N0
\U0|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~28_combout\ = (\U0|Add0~28_combout\ & (\U0|Add1~27\ $ (GND))) # (!\U0|Add0~28_combout\ & (!\U0|Add1~27\ & VCC))
-- \U0|Add1~29\ = CARRY((\U0|Add0~28_combout\ & !\U0|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~28_combout\,
	datad => VCC,
	cin => \U0|Add1~27\,
	combout => \U0|Add1~28_combout\,
	cout => \U0|Add1~29\);

-- Location: LCCOMB_X41_Y14_N2
\U0|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~30_combout\ = (\U0|Add0~30_combout\ & (!\U0|Add1~29\)) # (!\U0|Add0~30_combout\ & ((\U0|Add1~29\) # (GND)))
-- \U0|Add1~31\ = CARRY((!\U0|Add1~29\) # (!\U0|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~30_combout\,
	datad => VCC,
	cin => \U0|Add1~29\,
	combout => \U0|Add1~30_combout\,
	cout => \U0|Add1~31\);

-- Location: LCCOMB_X41_Y14_N4
\U0|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~32_combout\ = (\U0|Add0~32_combout\ & (\U0|Add1~31\ $ (GND))) # (!\U0|Add0~32_combout\ & (!\U0|Add1~31\ & VCC))
-- \U0|Add1~33\ = CARRY((\U0|Add0~32_combout\ & !\U0|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~32_combout\,
	datad => VCC,
	cin => \U0|Add1~31\,
	combout => \U0|Add1~32_combout\,
	cout => \U0|Add1~33\);

-- Location: LCCOMB_X41_Y14_N6
\U0|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~34_combout\ = (\U0|Add0~34_combout\ & (!\U0|Add1~33\)) # (!\U0|Add0~34_combout\ & ((\U0|Add1~33\) # (GND)))
-- \U0|Add1~35\ = CARRY((!\U0|Add1~33\) # (!\U0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~34_combout\,
	datad => VCC,
	cin => \U0|Add1~33\,
	combout => \U0|Add1~34_combout\,
	cout => \U0|Add1~35\);

-- Location: LCCOMB_X41_Y14_N8
\U0|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~36_combout\ = (\U0|Add0~36_combout\ & (\U0|Add1~35\ $ (GND))) # (!\U0|Add0~36_combout\ & (!\U0|Add1~35\ & VCC))
-- \U0|Add1~37\ = CARRY((\U0|Add0~36_combout\ & !\U0|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~36_combout\,
	datad => VCC,
	cin => \U0|Add1~35\,
	combout => \U0|Add1~36_combout\,
	cout => \U0|Add1~37\);

-- Location: LCCOMB_X41_Y14_N10
\U0|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~38_combout\ = (\U0|Add0~38_combout\ & (!\U0|Add1~37\)) # (!\U0|Add0~38_combout\ & ((\U0|Add1~37\) # (GND)))
-- \U0|Add1~39\ = CARRY((!\U0|Add1~37\) # (!\U0|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~38_combout\,
	datad => VCC,
	cin => \U0|Add1~37\,
	combout => \U0|Add1~38_combout\,
	cout => \U0|Add1~39\);

-- Location: LCCOMB_X41_Y14_N12
\U0|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~40_combout\ = (\U0|Add0~40_combout\ & (\U0|Add1~39\ $ (GND))) # (!\U0|Add0~40_combout\ & (!\U0|Add1~39\ & VCC))
-- \U0|Add1~41\ = CARRY((\U0|Add0~40_combout\ & !\U0|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~40_combout\,
	datad => VCC,
	cin => \U0|Add1~39\,
	combout => \U0|Add1~40_combout\,
	cout => \U0|Add1~41\);

-- Location: LCCOMB_X41_Y14_N14
\U0|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~42_combout\ = (\U0|Add0~42_combout\ & (!\U0|Add1~41\)) # (!\U0|Add0~42_combout\ & ((\U0|Add1~41\) # (GND)))
-- \U0|Add1~43\ = CARRY((!\U0|Add1~41\) # (!\U0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~42_combout\,
	datad => VCC,
	cin => \U0|Add1~41\,
	combout => \U0|Add1~42_combout\,
	cout => \U0|Add1~43\);

-- Location: LCCOMB_X41_Y14_N16
\U0|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~44_combout\ = (\U0|Add0~44_combout\ & (\U0|Add1~43\ $ (GND))) # (!\U0|Add0~44_combout\ & (!\U0|Add1~43\ & VCC))
-- \U0|Add1~45\ = CARRY((\U0|Add0~44_combout\ & !\U0|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~44_combout\,
	datad => VCC,
	cin => \U0|Add1~43\,
	combout => \U0|Add1~44_combout\,
	cout => \U0|Add1~45\);

-- Location: LCCOMB_X41_Y14_N18
\U0|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~46_combout\ = (\U0|Add0~46_combout\ & (!\U0|Add1~45\)) # (!\U0|Add0~46_combout\ & ((\U0|Add1~45\) # (GND)))
-- \U0|Add1~47\ = CARRY((!\U0|Add1~45\) # (!\U0|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~46_combout\,
	datad => VCC,
	cin => \U0|Add1~45\,
	combout => \U0|Add1~46_combout\,
	cout => \U0|Add1~47\);

-- Location: LCCOMB_X41_Y14_N20
\U0|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~48_combout\ = (\U0|Add0~48_combout\ & (\U0|Add1~47\ $ (GND))) # (!\U0|Add0~48_combout\ & (!\U0|Add1~47\ & VCC))
-- \U0|Add1~49\ = CARRY((\U0|Add0~48_combout\ & !\U0|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~48_combout\,
	datad => VCC,
	cin => \U0|Add1~47\,
	combout => \U0|Add1~48_combout\,
	cout => \U0|Add1~49\);

-- Location: LCCOMB_X41_Y14_N22
\U0|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~50_combout\ = (\U0|Add0~50_combout\ & (!\U0|Add1~49\)) # (!\U0|Add0~50_combout\ & ((\U0|Add1~49\) # (GND)))
-- \U0|Add1~51\ = CARRY((!\U0|Add1~49\) # (!\U0|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~50_combout\,
	datad => VCC,
	cin => \U0|Add1~49\,
	combout => \U0|Add1~50_combout\,
	cout => \U0|Add1~51\);

-- Location: LCCOMB_X41_Y14_N24
\U0|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~52_combout\ = (\U0|Add0~52_combout\ & (\U0|Add1~51\ $ (GND))) # (!\U0|Add0~52_combout\ & (!\U0|Add1~51\ & VCC))
-- \U0|Add1~53\ = CARRY((\U0|Add0~52_combout\ & !\U0|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~52_combout\,
	datad => VCC,
	cin => \U0|Add1~51\,
	combout => \U0|Add1~52_combout\,
	cout => \U0|Add1~53\);

-- Location: LCCOMB_X41_Y14_N26
\U0|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~54_combout\ = (\U0|Add0~54_combout\ & (!\U0|Add1~53\)) # (!\U0|Add0~54_combout\ & ((\U0|Add1~53\) # (GND)))
-- \U0|Add1~55\ = CARRY((!\U0|Add1~53\) # (!\U0|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~54_combout\,
	datad => VCC,
	cin => \U0|Add1~53\,
	combout => \U0|Add1~54_combout\,
	cout => \U0|Add1~55\);

-- Location: LCCOMB_X41_Y14_N28
\U0|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add1~56_combout\ = \U0|Add1~55\ $ (!\U0|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add0~56_combout\,
	cin => \U0|Add1~55\,
	combout => \U0|Add1~56_combout\);

-- Location: LCCOMB_X40_Y15_N4
\U0|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~0_combout\ = \U0|Add1~0_combout\ $ (VCC)
-- \U0|Add6~1\ = CARRY(\U0|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~0_combout\,
	datad => VCC,
	combout => \U0|Add6~0_combout\,
	cout => \U0|Add6~1\);

-- Location: LCCOMB_X40_Y15_N6
\U0|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~2_combout\ = (\U0|Add1~2_combout\ & (!\U0|Add6~1\)) # (!\U0|Add1~2_combout\ & ((\U0|Add6~1\) # (GND)))
-- \U0|Add6~3\ = CARRY((!\U0|Add6~1\) # (!\U0|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~2_combout\,
	datad => VCC,
	cin => \U0|Add6~1\,
	combout => \U0|Add6~2_combout\,
	cout => \U0|Add6~3\);

-- Location: LCCOMB_X40_Y15_N8
\U0|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~4_combout\ = (\U0|Add1~4_combout\ & (\U0|Add6~3\ $ (GND))) # (!\U0|Add1~4_combout\ & (!\U0|Add6~3\ & VCC))
-- \U0|Add6~5\ = CARRY((\U0|Add1~4_combout\ & !\U0|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~4_combout\,
	datad => VCC,
	cin => \U0|Add6~3\,
	combout => \U0|Add6~4_combout\,
	cout => \U0|Add6~5\);

-- Location: LCCOMB_X40_Y15_N10
\U0|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~6_combout\ = (\U0|Add1~6_combout\ & (!\U0|Add6~5\)) # (!\U0|Add1~6_combout\ & ((\U0|Add6~5\) # (GND)))
-- \U0|Add6~7\ = CARRY((!\U0|Add6~5\) # (!\U0|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~6_combout\,
	datad => VCC,
	cin => \U0|Add6~5\,
	combout => \U0|Add6~6_combout\,
	cout => \U0|Add6~7\);

-- Location: LCCOMB_X40_Y15_N12
\U0|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~8_combout\ = (\U0|Add1~8_combout\ & (\U0|Add6~7\ $ (GND))) # (!\U0|Add1~8_combout\ & (!\U0|Add6~7\ & VCC))
-- \U0|Add6~9\ = CARRY((\U0|Add1~8_combout\ & !\U0|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~8_combout\,
	datad => VCC,
	cin => \U0|Add6~7\,
	combout => \U0|Add6~8_combout\,
	cout => \U0|Add6~9\);

-- Location: LCCOMB_X40_Y15_N14
\U0|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~10_combout\ = (\U0|Add1~10_combout\ & (!\U0|Add6~9\)) # (!\U0|Add1~10_combout\ & ((\U0|Add6~9\) # (GND)))
-- \U0|Add6~11\ = CARRY((!\U0|Add6~9\) # (!\U0|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~10_combout\,
	datad => VCC,
	cin => \U0|Add6~9\,
	combout => \U0|Add6~10_combout\,
	cout => \U0|Add6~11\);

-- Location: LCCOMB_X40_Y15_N16
\U0|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~12_combout\ = (\U0|Add1~12_combout\ & (\U0|Add6~11\ $ (GND))) # (!\U0|Add1~12_combout\ & (!\U0|Add6~11\ & VCC))
-- \U0|Add6~13\ = CARRY((\U0|Add1~12_combout\ & !\U0|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~12_combout\,
	datad => VCC,
	cin => \U0|Add6~11\,
	combout => \U0|Add6~12_combout\,
	cout => \U0|Add6~13\);

-- Location: LCCOMB_X40_Y15_N18
\U0|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~14_combout\ = (\U0|Add1~14_combout\ & (!\U0|Add6~13\)) # (!\U0|Add1~14_combout\ & ((\U0|Add6~13\) # (GND)))
-- \U0|Add6~15\ = CARRY((!\U0|Add6~13\) # (!\U0|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~14_combout\,
	datad => VCC,
	cin => \U0|Add6~13\,
	combout => \U0|Add6~14_combout\,
	cout => \U0|Add6~15\);

-- Location: LCCOMB_X40_Y15_N20
\U0|Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~16_combout\ = (\U0|Add1~16_combout\ & (\U0|Add6~15\ $ (GND))) # (!\U0|Add1~16_combout\ & (!\U0|Add6~15\ & VCC))
-- \U0|Add6~17\ = CARRY((\U0|Add1~16_combout\ & !\U0|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~16_combout\,
	datad => VCC,
	cin => \U0|Add6~15\,
	combout => \U0|Add6~16_combout\,
	cout => \U0|Add6~17\);

-- Location: LCCOMB_X40_Y15_N22
\U0|Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~18_combout\ = (\U0|Add1~18_combout\ & (!\U0|Add6~17\)) # (!\U0|Add1~18_combout\ & ((\U0|Add6~17\) # (GND)))
-- \U0|Add6~19\ = CARRY((!\U0|Add6~17\) # (!\U0|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~18_combout\,
	datad => VCC,
	cin => \U0|Add6~17\,
	combout => \U0|Add6~18_combout\,
	cout => \U0|Add6~19\);

-- Location: LCCOMB_X40_Y15_N24
\U0|Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~20_combout\ = (\U0|Add1~20_combout\ & (\U0|Add6~19\ $ (GND))) # (!\U0|Add1~20_combout\ & (!\U0|Add6~19\ & VCC))
-- \U0|Add6~21\ = CARRY((\U0|Add1~20_combout\ & !\U0|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~20_combout\,
	datad => VCC,
	cin => \U0|Add6~19\,
	combout => \U0|Add6~20_combout\,
	cout => \U0|Add6~21\);

-- Location: LCCOMB_X40_Y15_N26
\U0|Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~22_combout\ = (\U0|Add1~22_combout\ & (!\U0|Add6~21\)) # (!\U0|Add1~22_combout\ & ((\U0|Add6~21\) # (GND)))
-- \U0|Add6~23\ = CARRY((!\U0|Add6~21\) # (!\U0|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~22_combout\,
	datad => VCC,
	cin => \U0|Add6~21\,
	combout => \U0|Add6~22_combout\,
	cout => \U0|Add6~23\);

-- Location: LCCOMB_X40_Y15_N28
\U0|Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~24_combout\ = (\U0|Add1~24_combout\ & (\U0|Add6~23\ $ (GND))) # (!\U0|Add1~24_combout\ & (!\U0|Add6~23\ & VCC))
-- \U0|Add6~25\ = CARRY((\U0|Add1~24_combout\ & !\U0|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~24_combout\,
	datad => VCC,
	cin => \U0|Add6~23\,
	combout => \U0|Add6~24_combout\,
	cout => \U0|Add6~25\);

-- Location: LCCOMB_X40_Y15_N30
\U0|Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~26_combout\ = (\U0|Add1~26_combout\ & (!\U0|Add6~25\)) # (!\U0|Add1~26_combout\ & ((\U0|Add6~25\) # (GND)))
-- \U0|Add6~27\ = CARRY((!\U0|Add6~25\) # (!\U0|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~26_combout\,
	datad => VCC,
	cin => \U0|Add6~25\,
	combout => \U0|Add6~26_combout\,
	cout => \U0|Add6~27\);

-- Location: LCCOMB_X40_Y14_N0
\U0|Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~28_combout\ = (\U0|Add1~28_combout\ & (\U0|Add6~27\ $ (GND))) # (!\U0|Add1~28_combout\ & (!\U0|Add6~27\ & VCC))
-- \U0|Add6~29\ = CARRY((\U0|Add1~28_combout\ & !\U0|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~28_combout\,
	datad => VCC,
	cin => \U0|Add6~27\,
	combout => \U0|Add6~28_combout\,
	cout => \U0|Add6~29\);

-- Location: LCCOMB_X40_Y14_N2
\U0|Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~30_combout\ = (\U0|Add1~30_combout\ & (!\U0|Add6~29\)) # (!\U0|Add1~30_combout\ & ((\U0|Add6~29\) # (GND)))
-- \U0|Add6~31\ = CARRY((!\U0|Add6~29\) # (!\U0|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~30_combout\,
	datad => VCC,
	cin => \U0|Add6~29\,
	combout => \U0|Add6~30_combout\,
	cout => \U0|Add6~31\);

-- Location: LCCOMB_X40_Y14_N4
\U0|Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~32_combout\ = (\U0|Add1~32_combout\ & (\U0|Add6~31\ $ (GND))) # (!\U0|Add1~32_combout\ & (!\U0|Add6~31\ & VCC))
-- \U0|Add6~33\ = CARRY((\U0|Add1~32_combout\ & !\U0|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~32_combout\,
	datad => VCC,
	cin => \U0|Add6~31\,
	combout => \U0|Add6~32_combout\,
	cout => \U0|Add6~33\);

-- Location: LCCOMB_X40_Y14_N6
\U0|Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~34_combout\ = (\U0|Add1~34_combout\ & (!\U0|Add6~33\)) # (!\U0|Add1~34_combout\ & ((\U0|Add6~33\) # (GND)))
-- \U0|Add6~35\ = CARRY((!\U0|Add6~33\) # (!\U0|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~34_combout\,
	datad => VCC,
	cin => \U0|Add6~33\,
	combout => \U0|Add6~34_combout\,
	cout => \U0|Add6~35\);

-- Location: LCCOMB_X40_Y14_N8
\U0|Add6~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~36_combout\ = (\U0|Add1~36_combout\ & (\U0|Add6~35\ $ (GND))) # (!\U0|Add1~36_combout\ & (!\U0|Add6~35\ & VCC))
-- \U0|Add6~37\ = CARRY((\U0|Add1~36_combout\ & !\U0|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~36_combout\,
	datad => VCC,
	cin => \U0|Add6~35\,
	combout => \U0|Add6~36_combout\,
	cout => \U0|Add6~37\);

-- Location: LCCOMB_X40_Y14_N10
\U0|Add6~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~38_combout\ = (\U0|Add1~38_combout\ & (!\U0|Add6~37\)) # (!\U0|Add1~38_combout\ & ((\U0|Add6~37\) # (GND)))
-- \U0|Add6~39\ = CARRY((!\U0|Add6~37\) # (!\U0|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~38_combout\,
	datad => VCC,
	cin => \U0|Add6~37\,
	combout => \U0|Add6~38_combout\,
	cout => \U0|Add6~39\);

-- Location: LCCOMB_X40_Y14_N12
\U0|Add6~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~40_combout\ = (\U0|Add1~40_combout\ & (\U0|Add6~39\ $ (GND))) # (!\U0|Add1~40_combout\ & (!\U0|Add6~39\ & VCC))
-- \U0|Add6~41\ = CARRY((\U0|Add1~40_combout\ & !\U0|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~40_combout\,
	datad => VCC,
	cin => \U0|Add6~39\,
	combout => \U0|Add6~40_combout\,
	cout => \U0|Add6~41\);

-- Location: LCCOMB_X40_Y14_N14
\U0|Add6~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~42_combout\ = (\U0|Add1~42_combout\ & (!\U0|Add6~41\)) # (!\U0|Add1~42_combout\ & ((\U0|Add6~41\) # (GND)))
-- \U0|Add6~43\ = CARRY((!\U0|Add6~41\) # (!\U0|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~42_combout\,
	datad => VCC,
	cin => \U0|Add6~41\,
	combout => \U0|Add6~42_combout\,
	cout => \U0|Add6~43\);

-- Location: LCCOMB_X40_Y14_N16
\U0|Add6~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~44_combout\ = (\U0|Add1~44_combout\ & (\U0|Add6~43\ $ (GND))) # (!\U0|Add1~44_combout\ & (!\U0|Add6~43\ & VCC))
-- \U0|Add6~45\ = CARRY((\U0|Add1~44_combout\ & !\U0|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~44_combout\,
	datad => VCC,
	cin => \U0|Add6~43\,
	combout => \U0|Add6~44_combout\,
	cout => \U0|Add6~45\);

-- Location: LCCOMB_X40_Y14_N18
\U0|Add6~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~46_combout\ = (\U0|Add1~46_combout\ & (!\U0|Add6~45\)) # (!\U0|Add1~46_combout\ & ((\U0|Add6~45\) # (GND)))
-- \U0|Add6~47\ = CARRY((!\U0|Add6~45\) # (!\U0|Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~46_combout\,
	datad => VCC,
	cin => \U0|Add6~45\,
	combout => \U0|Add6~46_combout\,
	cout => \U0|Add6~47\);

-- Location: LCCOMB_X40_Y14_N20
\U0|Add6~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~48_combout\ = (\U0|Add1~48_combout\ & (\U0|Add6~47\ $ (GND))) # (!\U0|Add1~48_combout\ & (!\U0|Add6~47\ & VCC))
-- \U0|Add6~49\ = CARRY((\U0|Add1~48_combout\ & !\U0|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~48_combout\,
	datad => VCC,
	cin => \U0|Add6~47\,
	combout => \U0|Add6~48_combout\,
	cout => \U0|Add6~49\);

-- Location: LCCOMB_X40_Y14_N22
\U0|Add6~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~50_combout\ = (\U0|Add1~50_combout\ & (!\U0|Add6~49\)) # (!\U0|Add1~50_combout\ & ((\U0|Add6~49\) # (GND)))
-- \U0|Add6~51\ = CARRY((!\U0|Add6~49\) # (!\U0|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~50_combout\,
	datad => VCC,
	cin => \U0|Add6~49\,
	combout => \U0|Add6~50_combout\,
	cout => \U0|Add6~51\);

-- Location: LCCOMB_X40_Y14_N24
\U0|Add6~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~52_combout\ = (\U0|Add1~52_combout\ & (\U0|Add6~51\ $ (GND))) # (!\U0|Add1~52_combout\ & (!\U0|Add6~51\ & VCC))
-- \U0|Add6~53\ = CARRY((\U0|Add1~52_combout\ & !\U0|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~52_combout\,
	datad => VCC,
	cin => \U0|Add6~51\,
	combout => \U0|Add6~52_combout\,
	cout => \U0|Add6~53\);

-- Location: LCCOMB_X40_Y14_N26
\U0|Add6~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~54_combout\ = (\U0|Add1~54_combout\ & (!\U0|Add6~53\)) # (!\U0|Add1~54_combout\ & ((\U0|Add6~53\) # (GND)))
-- \U0|Add6~55\ = CARRY((!\U0|Add6~53\) # (!\U0|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add1~54_combout\,
	datad => VCC,
	cin => \U0|Add6~53\,
	combout => \U0|Add6~54_combout\,
	cout => \U0|Add6~55\);

-- Location: LCCOMB_X40_Y14_N28
\U0|Add6~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add6~56_combout\ = \U0|Add6~55\ $ (!\U0|Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add1~56_combout\,
	cin => \U0|Add6~55\,
	combout => \U0|Add6~56_combout\);

-- Location: LCCOMB_X39_Y14_N6
\U0|LessThan12~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~22_combout\ = (\U0|Add6~54_combout\) # (\U0|Add6~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add6~54_combout\,
	datad => \U0|Add6~52_combout\,
	combout => \U0|LessThan12~22_combout\);

-- Location: LCCOMB_X40_Y14_N30
\U0|LessThan12~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~18_combout\ = (\U0|Add6~34_combout\) # ((\U0|Add6~28_combout\) # ((\U0|Add6~32_combout\) # (\U0|Add6~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~34_combout\,
	datab => \U0|Add6~28_combout\,
	datac => \U0|Add6~32_combout\,
	datad => \U0|Add6~30_combout\,
	combout => \U0|LessThan12~18_combout\);

-- Location: LCCOMB_X39_Y14_N20
\U0|LessThan12~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~19_combout\ = (\U0|Add6~42_combout\) # ((\U0|Add6~38_combout\) # ((\U0|Add6~40_combout\) # (\U0|Add6~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~42_combout\,
	datab => \U0|Add6~38_combout\,
	datac => \U0|Add6~40_combout\,
	datad => \U0|Add6~36_combout\,
	combout => \U0|LessThan12~19_combout\);

-- Location: LCCOMB_X40_Y15_N0
\U0|LessThan12~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~17_combout\ = (\U0|Add6~26_combout\) # ((\U0|Add6~24_combout\) # ((\U0|Add6~22_combout\) # (\U0|Add6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~26_combout\,
	datab => \U0|Add6~24_combout\,
	datac => \U0|Add6~22_combout\,
	datad => \U0|Add6~20_combout\,
	combout => \U0|LessThan12~17_combout\);

-- Location: LCCOMB_X38_Y15_N16
\U0|LessThan12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~1_cout\ = CARRY((!\U0|U1|column\(2) & \U1|select_xShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(2),
	datab => \U1|select_xShift\(0),
	datad => VCC,
	cout => \U0|LessThan12~1_cout\);

-- Location: LCCOMB_X38_Y15_N18
\U0|LessThan12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~3_cout\ = CARRY((\U0|Add6~0_combout\ & (\U0|U1|column\(3) & !\U0|LessThan12~1_cout\)) # (!\U0|Add6~0_combout\ & ((\U0|U1|column\(3)) # (!\U0|LessThan12~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~0_combout\,
	datab => \U0|U1|column\(3),
	datad => VCC,
	cin => \U0|LessThan12~1_cout\,
	cout => \U0|LessThan12~3_cout\);

-- Location: LCCOMB_X38_Y15_N20
\U0|LessThan12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~5_cout\ = CARRY((\U0|Add6~2_combout\ & ((!\U0|LessThan12~3_cout\) # (!\U0|U1|column\(4)))) # (!\U0|Add6~2_combout\ & (!\U0|U1|column\(4) & !\U0|LessThan12~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~2_combout\,
	datab => \U0|U1|column\(4),
	datad => VCC,
	cin => \U0|LessThan12~3_cout\,
	cout => \U0|LessThan12~5_cout\);

-- Location: LCCOMB_X38_Y15_N22
\U0|LessThan12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~7_cout\ = CARRY((\U0|U1|column\(5) & ((!\U0|LessThan12~5_cout\) # (!\U0|Add6~4_combout\))) # (!\U0|U1|column\(5) & (!\U0|Add6~4_combout\ & !\U0|LessThan12~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(5),
	datab => \U0|Add6~4_combout\,
	datad => VCC,
	cin => \U0|LessThan12~5_cout\,
	cout => \U0|LessThan12~7_cout\);

-- Location: LCCOMB_X38_Y15_N24
\U0|LessThan12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~9_cout\ = CARRY((\U0|U1|column\(6) & (\U0|Add6~6_combout\ & !\U0|LessThan12~7_cout\)) # (!\U0|U1|column\(6) & ((\U0|Add6~6_combout\) # (!\U0|LessThan12~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(6),
	datab => \U0|Add6~6_combout\,
	datad => VCC,
	cin => \U0|LessThan12~7_cout\,
	cout => \U0|LessThan12~9_cout\);

-- Location: LCCOMB_X38_Y15_N26
\U0|LessThan12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~11_cout\ = CARRY((\U0|U1|column\(7) & ((!\U0|LessThan12~9_cout\) # (!\U0|Add6~8_combout\))) # (!\U0|U1|column\(7) & (!\U0|Add6~8_combout\ & !\U0|LessThan12~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(7),
	datab => \U0|Add6~8_combout\,
	datad => VCC,
	cin => \U0|LessThan12~9_cout\,
	cout => \U0|LessThan12~11_cout\);

-- Location: LCCOMB_X38_Y15_N28
\U0|LessThan12~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~13_cout\ = CARRY((\U0|U1|column\(8) & (\U0|Add6~10_combout\ & !\U0|LessThan12~11_cout\)) # (!\U0|U1|column\(8) & ((\U0|Add6~10_combout\) # (!\U0|LessThan12~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(8),
	datab => \U0|Add6~10_combout\,
	datad => VCC,
	cin => \U0|LessThan12~11_cout\,
	cout => \U0|LessThan12~13_cout\);

-- Location: LCCOMB_X38_Y15_N30
\U0|LessThan12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~14_combout\ = (\U0|Add6~12_combout\ & ((\U0|LessThan12~13_cout\) # (!\U0|U1|column\(9)))) # (!\U0|Add6~12_combout\ & (\U0|LessThan12~13_cout\ & !\U0|U1|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~12_combout\,
	datad => \U0|U1|column\(9),
	cin => \U0|LessThan12~13_cout\,
	combout => \U0|LessThan12~14_combout\);

-- Location: LCCOMB_X40_Y15_N2
\U0|LessThan12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~16_combout\ = (\U0|Add6~18_combout\) # ((\U0|Add6~16_combout\) # ((\U0|LessThan12~14_combout\) # (\U0|Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~18_combout\,
	datab => \U0|Add6~16_combout\,
	datac => \U0|LessThan12~14_combout\,
	datad => \U0|Add6~14_combout\,
	combout => \U0|LessThan12~16_combout\);

-- Location: LCCOMB_X39_Y14_N4
\U0|LessThan12~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~20_combout\ = (\U0|LessThan12~18_combout\) # ((\U0|LessThan12~19_combout\) # ((\U0|LessThan12~17_combout\) # (\U0|LessThan12~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan12~18_combout\,
	datab => \U0|LessThan12~19_combout\,
	datac => \U0|LessThan12~17_combout\,
	datad => \U0|LessThan12~16_combout\,
	combout => \U0|LessThan12~20_combout\);

-- Location: LCCOMB_X42_Y14_N24
\U0|LessThan12~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan12~21_combout\ = (\U0|Add6~50_combout\) # ((\U0|Add6~48_combout\) # ((\U0|Add6~46_combout\) # (\U0|Add6~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~50_combout\,
	datab => \U0|Add6~48_combout\,
	datac => \U0|Add6~46_combout\,
	datad => \U0|Add6~44_combout\,
	combout => \U0|LessThan12~21_combout\);

-- Location: LCCOMB_X42_Y14_N10
\U0|FSM~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~51_combout\ = (!\U0|Add6~56_combout\ & ((\U0|LessThan12~22_combout\) # ((\U0|LessThan12~20_combout\) # (\U0|LessThan12~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add6~56_combout\,
	datab => \U0|LessThan12~22_combout\,
	datac => \U0|LessThan12~20_combout\,
	datad => \U0|LessThan12~21_combout\,
	combout => \U0|FSM~51_combout\);

-- Location: LCCOMB_X44_Y14_N30
\U0|LessThan8~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~21_combout\ = (!\U0|Add0~34_combout\ & (!\U0|Add0~30_combout\ & (!\U0|Add0~32_combout\ & !\U0|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~34_combout\,
	datab => \U0|Add0~30_combout\,
	datac => \U0|Add0~32_combout\,
	datad => \U0|Add0~28_combout\,
	combout => \U0|LessThan8~21_combout\);

-- Location: LCCOMB_X39_Y15_N0
\U0|LessThan8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~2_cout\ = CARRY(\U0|LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan8~0_combout\,
	datad => VCC,
	cout => \U0|LessThan8~2_cout\);

-- Location: LCCOMB_X39_Y15_N2
\U0|LessThan8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~4_cout\ = CARRY((\U1|select_xShift\(0) & ((!\U0|LessThan8~2_cout\) # (!\U0|U1|column\(2)))) # (!\U1|select_xShift\(0) & (!\U0|U1|column\(2) & !\U0|LessThan8~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(0),
	datab => \U0|U1|column\(2),
	datad => VCC,
	cin => \U0|LessThan8~2_cout\,
	cout => \U0|LessThan8~4_cout\);

-- Location: LCCOMB_X39_Y15_N4
\U0|LessThan8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~6_cout\ = CARRY((\U0|U1|column\(3) & ((!\U0|LessThan8~4_cout\) # (!\U0|Add0~0_combout\))) # (!\U0|U1|column\(3) & (!\U0|Add0~0_combout\ & !\U0|LessThan8~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(3),
	datab => \U0|Add0~0_combout\,
	datad => VCC,
	cin => \U0|LessThan8~4_cout\,
	cout => \U0|LessThan8~6_cout\);

-- Location: LCCOMB_X39_Y15_N6
\U0|LessThan8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~8_cout\ = CARRY((\U0|U1|column\(4) & (\U0|Add0~2_combout\ & !\U0|LessThan8~6_cout\)) # (!\U0|U1|column\(4) & ((\U0|Add0~2_combout\) # (!\U0|LessThan8~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(4),
	datab => \U0|Add0~2_combout\,
	datad => VCC,
	cin => \U0|LessThan8~6_cout\,
	cout => \U0|LessThan8~8_cout\);

-- Location: LCCOMB_X39_Y15_N8
\U0|LessThan8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~10_cout\ = CARRY((\U0|Add0~4_combout\ & (\U0|U1|column\(5) & !\U0|LessThan8~8_cout\)) # (!\U0|Add0~4_combout\ & ((\U0|U1|column\(5)) # (!\U0|LessThan8~8_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~4_combout\,
	datab => \U0|U1|column\(5),
	datad => VCC,
	cin => \U0|LessThan8~8_cout\,
	cout => \U0|LessThan8~10_cout\);

-- Location: LCCOMB_X39_Y15_N10
\U0|LessThan8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~12_cout\ = CARRY((\U0|Add0~6_combout\ & ((!\U0|LessThan8~10_cout\) # (!\U0|U1|column\(6)))) # (!\U0|Add0~6_combout\ & (!\U0|U1|column\(6) & !\U0|LessThan8~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~6_combout\,
	datab => \U0|U1|column\(6),
	datad => VCC,
	cin => \U0|LessThan8~10_cout\,
	cout => \U0|LessThan8~12_cout\);

-- Location: LCCOMB_X39_Y15_N12
\U0|LessThan8~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~14_cout\ = CARRY((\U0|Add0~8_combout\ & (\U0|U1|column\(7) & !\U0|LessThan8~12_cout\)) # (!\U0|Add0~8_combout\ & ((\U0|U1|column\(7)) # (!\U0|LessThan8~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~8_combout\,
	datab => \U0|U1|column\(7),
	datad => VCC,
	cin => \U0|LessThan8~12_cout\,
	cout => \U0|LessThan8~14_cout\);

-- Location: LCCOMB_X39_Y15_N14
\U0|LessThan8~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~16_cout\ = CARRY((\U0|U1|column\(8) & (\U0|Add0~10_combout\ & !\U0|LessThan8~14_cout\)) # (!\U0|U1|column\(8) & ((\U0|Add0~10_combout\) # (!\U0|LessThan8~14_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(8),
	datab => \U0|Add0~10_combout\,
	datad => VCC,
	cin => \U0|LessThan8~14_cout\,
	cout => \U0|LessThan8~16_cout\);

-- Location: LCCOMB_X39_Y15_N16
\U0|LessThan8~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~17_combout\ = (\U0|U1|column\(9) & ((!\U0|Add0~12_combout\) # (!\U0|LessThan8~16_cout\))) # (!\U0|U1|column\(9) & (!\U0|LessThan8~16_cout\ & !\U0|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(9),
	datad => \U0|Add0~12_combout\,
	cin => \U0|LessThan8~16_cout\,
	combout => \U0|LessThan8~17_combout\);

-- Location: LCCOMB_X44_Y15_N2
\U0|LessThan8~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~19_combout\ = (!\U0|Add0~18_combout\ & (!\U0|Add0~16_combout\ & (\U0|LessThan8~17_combout\ & !\U0|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~18_combout\,
	datab => \U0|Add0~16_combout\,
	datac => \U0|LessThan8~17_combout\,
	datad => \U0|Add0~14_combout\,
	combout => \U0|LessThan8~19_combout\);

-- Location: LCCOMB_X44_Y15_N0
\U0|LessThan8~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~20_combout\ = (!\U0|Add0~22_combout\ & (!\U0|Add0~24_combout\ & (!\U0|Add0~26_combout\ & !\U0|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~22_combout\,
	datab => \U0|Add0~24_combout\,
	datac => \U0|Add0~26_combout\,
	datad => \U0|Add0~20_combout\,
	combout => \U0|LessThan8~20_combout\);

-- Location: LCCOMB_X45_Y15_N18
\U0|LessThan8~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~22_combout\ = (!\U0|Add0~40_combout\ & (!\U0|Add0~38_combout\ & (!\U0|Add0~36_combout\ & !\U0|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~40_combout\,
	datab => \U0|Add0~38_combout\,
	datac => \U0|Add0~36_combout\,
	datad => \U0|Add0~42_combout\,
	combout => \U0|LessThan8~22_combout\);

-- Location: LCCOMB_X45_Y15_N30
\U0|LessThan8~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~23_combout\ = (\U0|LessThan8~21_combout\ & (\U0|LessThan8~19_combout\ & (\U0|LessThan8~20_combout\ & \U0|LessThan8~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan8~21_combout\,
	datab => \U0|LessThan8~19_combout\,
	datac => \U0|LessThan8~20_combout\,
	datad => \U0|LessThan8~22_combout\,
	combout => \U0|LessThan8~23_combout\);

-- Location: LCCOMB_X45_Y14_N4
\U0|LessThan8~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~25_combout\ = (!\U0|Add0~54_combout\ & !\U0|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add0~54_combout\,
	datad => \U0|Add0~52_combout\,
	combout => \U0|LessThan8~25_combout\);

-- Location: LCCOMB_X45_Y14_N30
\U0|LessThan8~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~24_combout\ = (!\U0|Add0~44_combout\ & (!\U0|Add0~46_combout\ & (!\U0|Add0~50_combout\ & !\U0|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~44_combout\,
	datab => \U0|Add0~46_combout\,
	datac => \U0|Add0~50_combout\,
	datad => \U0|Add0~48_combout\,
	combout => \U0|LessThan8~24_combout\);

-- Location: LCCOMB_X45_Y14_N28
\U0|LessThan8~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan8~26_combout\ = (\U0|Add0~56_combout\) # ((\U0|LessThan8~23_combout\ & (\U0|LessThan8~25_combout\ & \U0|LessThan8~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan8~23_combout\,
	datab => \U0|LessThan8~25_combout\,
	datac => \U0|LessThan8~24_combout\,
	datad => \U0|Add0~56_combout\,
	combout => \U0|LessThan8~26_combout\);

-- Location: LCCOMB_X45_Y14_N10
\U0|FSM~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~63_combout\ = (\U0|FSM~61_combout\ & (\U0|FSM~62_combout\ & (\U0|FSM~51_combout\ & \U0|LessThan8~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~61_combout\,
	datab => \U0|FSM~62_combout\,
	datac => \U0|FSM~51_combout\,
	datad => \U0|LessThan8~26_combout\,
	combout => \U0|FSM~63_combout\);

-- Location: LCCOMB_X45_Y14_N12
\U0|LessThan10~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan10~11_combout\ = (\U0|LessThan10~6_combout\ & (\U0|LessThan10~4_combout\ & ((\U0|LessThan10~9_combout\) # (\U0|LessThan10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan10~6_combout\,
	datab => \U0|LessThan10~9_combout\,
	datac => \U0|LessThan10~10_combout\,
	datad => \U0|LessThan10~4_combout\,
	combout => \U0|LessThan10~11_combout\);

-- Location: LCCOMB_X46_Y15_N8
\U0|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~0_combout\ = \U0|Add2~0_combout\ $ (VCC)
-- \U0|Add3~1\ = CARRY(\U0|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~0_combout\,
	datad => VCC,
	combout => \U0|Add3~0_combout\,
	cout => \U0|Add3~1\);

-- Location: LCCOMB_X46_Y15_N10
\U0|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~2_combout\ = (\U0|Add2~2_combout\ & (!\U0|Add3~1\)) # (!\U0|Add2~2_combout\ & ((\U0|Add3~1\) # (GND)))
-- \U0|Add3~3\ = CARRY((!\U0|Add3~1\) # (!\U0|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~2_combout\,
	datad => VCC,
	cin => \U0|Add3~1\,
	combout => \U0|Add3~2_combout\,
	cout => \U0|Add3~3\);

-- Location: LCCOMB_X46_Y15_N12
\U0|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~4_combout\ = (\U0|Add2~4_combout\ & (\U0|Add3~3\ $ (GND))) # (!\U0|Add2~4_combout\ & (!\U0|Add3~3\ & VCC))
-- \U0|Add3~5\ = CARRY((\U0|Add2~4_combout\ & !\U0|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~4_combout\,
	datad => VCC,
	cin => \U0|Add3~3\,
	combout => \U0|Add3~4_combout\,
	cout => \U0|Add3~5\);

-- Location: LCCOMB_X46_Y15_N14
\U0|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~6_combout\ = (\U0|Add2~6_combout\ & (!\U0|Add3~5\)) # (!\U0|Add2~6_combout\ & ((\U0|Add3~5\) # (GND)))
-- \U0|Add3~7\ = CARRY((!\U0|Add3~5\) # (!\U0|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~6_combout\,
	datad => VCC,
	cin => \U0|Add3~5\,
	combout => \U0|Add3~6_combout\,
	cout => \U0|Add3~7\);

-- Location: LCCOMB_X46_Y15_N16
\U0|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~8_combout\ = (\U0|Add2~8_combout\ & (\U0|Add3~7\ $ (GND))) # (!\U0|Add2~8_combout\ & (!\U0|Add3~7\ & VCC))
-- \U0|Add3~9\ = CARRY((\U0|Add2~8_combout\ & !\U0|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~8_combout\,
	datad => VCC,
	cin => \U0|Add3~7\,
	combout => \U0|Add3~8_combout\,
	cout => \U0|Add3~9\);

-- Location: LCCOMB_X46_Y15_N18
\U0|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~10_combout\ = (\U0|Add2~10_combout\ & (!\U0|Add3~9\)) # (!\U0|Add2~10_combout\ & ((\U0|Add3~9\) # (GND)))
-- \U0|Add3~11\ = CARRY((!\U0|Add3~9\) # (!\U0|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~10_combout\,
	datad => VCC,
	cin => \U0|Add3~9\,
	combout => \U0|Add3~10_combout\,
	cout => \U0|Add3~11\);

-- Location: LCCOMB_X46_Y15_N20
\U0|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~12_combout\ = (\U0|Add2~12_combout\ & (\U0|Add3~11\ $ (GND))) # (!\U0|Add2~12_combout\ & (!\U0|Add3~11\ & VCC))
-- \U0|Add3~13\ = CARRY((\U0|Add2~12_combout\ & !\U0|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~12_combout\,
	datad => VCC,
	cin => \U0|Add3~11\,
	combout => \U0|Add3~12_combout\,
	cout => \U0|Add3~13\);

-- Location: LCCOMB_X46_Y15_N22
\U0|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~14_combout\ = (\U0|Add2~14_combout\ & (!\U0|Add3~13\)) # (!\U0|Add2~14_combout\ & ((\U0|Add3~13\) # (GND)))
-- \U0|Add3~15\ = CARRY((!\U0|Add3~13\) # (!\U0|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~14_combout\,
	datad => VCC,
	cin => \U0|Add3~13\,
	combout => \U0|Add3~14_combout\,
	cout => \U0|Add3~15\);

-- Location: LCCOMB_X46_Y15_N24
\U0|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~16_combout\ = (\U0|Add2~16_combout\ & (\U0|Add3~15\ $ (GND))) # (!\U0|Add2~16_combout\ & (!\U0|Add3~15\ & VCC))
-- \U0|Add3~17\ = CARRY((\U0|Add2~16_combout\ & !\U0|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~16_combout\,
	datad => VCC,
	cin => \U0|Add3~15\,
	combout => \U0|Add3~16_combout\,
	cout => \U0|Add3~17\);

-- Location: LCCOMB_X46_Y15_N26
\U0|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~18_combout\ = (\U0|Add2~18_combout\ & (!\U0|Add3~17\)) # (!\U0|Add2~18_combout\ & ((\U0|Add3~17\) # (GND)))
-- \U0|Add3~19\ = CARRY((!\U0|Add3~17\) # (!\U0|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~18_combout\,
	datad => VCC,
	cin => \U0|Add3~17\,
	combout => \U0|Add3~18_combout\,
	cout => \U0|Add3~19\);

-- Location: LCCOMB_X46_Y15_N28
\U0|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~20_combout\ = (\U0|Add2~20_combout\ & (\U0|Add3~19\ $ (GND))) # (!\U0|Add2~20_combout\ & (!\U0|Add3~19\ & VCC))
-- \U0|Add3~21\ = CARRY((\U0|Add2~20_combout\ & !\U0|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~20_combout\,
	datad => VCC,
	cin => \U0|Add3~19\,
	combout => \U0|Add3~20_combout\,
	cout => \U0|Add3~21\);

-- Location: LCCOMB_X46_Y15_N30
\U0|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~22_combout\ = (\U0|Add2~22_combout\ & (!\U0|Add3~21\)) # (!\U0|Add2~22_combout\ & ((\U0|Add3~21\) # (GND)))
-- \U0|Add3~23\ = CARRY((!\U0|Add3~21\) # (!\U0|Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~22_combout\,
	datad => VCC,
	cin => \U0|Add3~21\,
	combout => \U0|Add3~22_combout\,
	cout => \U0|Add3~23\);

-- Location: LCCOMB_X46_Y14_N0
\U0|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~24_combout\ = (\U0|Add2~24_combout\ & (\U0|Add3~23\ $ (GND))) # (!\U0|Add2~24_combout\ & (!\U0|Add3~23\ & VCC))
-- \U0|Add3~25\ = CARRY((\U0|Add2~24_combout\ & !\U0|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~24_combout\,
	datad => VCC,
	cin => \U0|Add3~23\,
	combout => \U0|Add3~24_combout\,
	cout => \U0|Add3~25\);

-- Location: LCCOMB_X46_Y14_N2
\U0|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~26_combout\ = (\U0|Add2~26_combout\ & (!\U0|Add3~25\)) # (!\U0|Add2~26_combout\ & ((\U0|Add3~25\) # (GND)))
-- \U0|Add3~27\ = CARRY((!\U0|Add3~25\) # (!\U0|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~26_combout\,
	datad => VCC,
	cin => \U0|Add3~25\,
	combout => \U0|Add3~26_combout\,
	cout => \U0|Add3~27\);

-- Location: LCCOMB_X46_Y14_N28
\U0|FSM~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~52_combout\ = (!\U0|Add3~22_combout\ & (!\U0|Add3~24_combout\ & (!\U0|Add3~20_combout\ & !\U0|Add3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add3~22_combout\,
	datab => \U0|Add3~24_combout\,
	datac => \U0|Add3~20_combout\,
	datad => \U0|Add3~26_combout\,
	combout => \U0|FSM~52_combout\);

-- Location: LCCOMB_X46_Y14_N4
\U0|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~28_combout\ = (\U0|Add2~28_combout\ & (\U0|Add3~27\ $ (GND))) # (!\U0|Add2~28_combout\ & (!\U0|Add3~27\ & VCC))
-- \U0|Add3~29\ = CARRY((\U0|Add2~28_combout\ & !\U0|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~28_combout\,
	datad => VCC,
	cin => \U0|Add3~27\,
	combout => \U0|Add3~28_combout\,
	cout => \U0|Add3~29\);

-- Location: LCCOMB_X46_Y14_N6
\U0|Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~30_combout\ = (\U0|Add2~30_combout\ & (!\U0|Add3~29\)) # (!\U0|Add2~30_combout\ & ((\U0|Add3~29\) # (GND)))
-- \U0|Add3~31\ = CARRY((!\U0|Add3~29\) # (!\U0|Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~30_combout\,
	datad => VCC,
	cin => \U0|Add3~29\,
	combout => \U0|Add3~30_combout\,
	cout => \U0|Add3~31\);

-- Location: LCCOMB_X46_Y14_N8
\U0|Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~32_combout\ = (\U0|Add2~32_combout\ & (\U0|Add3~31\ $ (GND))) # (!\U0|Add2~32_combout\ & (!\U0|Add3~31\ & VCC))
-- \U0|Add3~33\ = CARRY((\U0|Add2~32_combout\ & !\U0|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~32_combout\,
	datad => VCC,
	cin => \U0|Add3~31\,
	combout => \U0|Add3~32_combout\,
	cout => \U0|Add3~33\);

-- Location: LCCOMB_X46_Y14_N10
\U0|Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~34_combout\ = (\U0|Add2~34_combout\ & (!\U0|Add3~33\)) # (!\U0|Add2~34_combout\ & ((\U0|Add3~33\) # (GND)))
-- \U0|Add3~35\ = CARRY((!\U0|Add3~33\) # (!\U0|Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~34_combout\,
	datad => VCC,
	cin => \U0|Add3~33\,
	combout => \U0|Add3~34_combout\,
	cout => \U0|Add3~35\);

-- Location: LCCOMB_X46_Y14_N12
\U0|Add3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~36_combout\ = (\U0|Add2~36_combout\ & (\U0|Add3~35\ $ (GND))) # (!\U0|Add2~36_combout\ & (!\U0|Add3~35\ & VCC))
-- \U0|Add3~37\ = CARRY((\U0|Add2~36_combout\ & !\U0|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~36_combout\,
	datad => VCC,
	cin => \U0|Add3~35\,
	combout => \U0|Add3~36_combout\,
	cout => \U0|Add3~37\);

-- Location: LCCOMB_X46_Y14_N14
\U0|Add3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~38_combout\ = (\U0|Add2~38_combout\ & (!\U0|Add3~37\)) # (!\U0|Add2~38_combout\ & ((\U0|Add3~37\) # (GND)))
-- \U0|Add3~39\ = CARRY((!\U0|Add3~37\) # (!\U0|Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~38_combout\,
	datad => VCC,
	cin => \U0|Add3~37\,
	combout => \U0|Add3~38_combout\,
	cout => \U0|Add3~39\);

-- Location: LCCOMB_X46_Y14_N16
\U0|Add3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~40_combout\ = (\U0|Add2~40_combout\ & (\U0|Add3~39\ $ (GND))) # (!\U0|Add2~40_combout\ & (!\U0|Add3~39\ & VCC))
-- \U0|Add3~41\ = CARRY((\U0|Add2~40_combout\ & !\U0|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~40_combout\,
	datad => VCC,
	cin => \U0|Add3~39\,
	combout => \U0|Add3~40_combout\,
	cout => \U0|Add3~41\);

-- Location: LCCOMB_X46_Y15_N0
\U0|FSM~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~55_combout\ = (\U0|Add3~14_combout\) # ((\U0|Add3~36_combout\) # ((\U0|Add3~18_combout\) # (\U0|Add3~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add3~14_combout\,
	datab => \U0|Add3~36_combout\,
	datac => \U0|Add3~18_combout\,
	datad => \U0|Add3~40_combout\,
	combout => \U0|FSM~55_combout\);

-- Location: LCCOMB_X46_Y15_N4
\U0|FSM~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~54_combout\ = (!\U0|Add3~4_combout\ & (!\U0|Add3~8_combout\ & (!\U0|Add3~6_combout\ & !\U0|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add3~4_combout\,
	datab => \U0|Add3~8_combout\,
	datac => \U0|Add3~6_combout\,
	datad => \U0|Add3~10_combout\,
	combout => \U0|FSM~54_combout\);

-- Location: LCCOMB_X46_Y15_N2
\U0|FSM~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~56_combout\ = (!\U0|FSM~55_combout\ & (!\U0|Add3~16_combout\ & (\U0|FSM~54_combout\ & !\U0|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~55_combout\,
	datab => \U0|Add3~16_combout\,
	datac => \U0|FSM~54_combout\,
	datad => \U0|Add3~12_combout\,
	combout => \U0|FSM~56_combout\);

-- Location: LCCOMB_X46_Y14_N30
\U0|FSM~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~53_combout\ = (!\U0|Add3~30_combout\ & (!\U0|Add3~32_combout\ & (!\U0|Add3~28_combout\ & !\U0|Add3~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add3~30_combout\,
	datab => \U0|Add3~32_combout\,
	datac => \U0|Add3~28_combout\,
	datad => \U0|Add3~34_combout\,
	combout => \U0|FSM~53_combout\);

-- Location: LCCOMB_X45_Y14_N26
\U0|FSM~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~57_combout\ = (\U0|FSM~52_combout\ & (\U0|FSM~56_combout\ & (\U0|FSM~53_combout\ & !\U0|Add3~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~52_combout\,
	datab => \U0|FSM~56_combout\,
	datac => \U0|FSM~53_combout\,
	datad => \U0|Add3~38_combout\,
	combout => \U0|FSM~57_combout\);

-- Location: LCCOMB_X45_Y14_N24
\U0|LessThan11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan11~3_combout\ = \U0|U1|row\(8) $ (\U0|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|row\(8),
	datad => \U0|Add3~2_combout\,
	combout => \U0|LessThan11~3_combout\);

-- Location: LCCOMB_X40_Y11_N0
\U0|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan11~0_combout\ = ((!\U0|U1|row\(3) & ((!\U0|U1|row\(1)) # (!\U0|U1|row\(2))))) # (!\U0|U1|row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|U1|row\(4),
	datac => \U0|U1|row\(3),
	datad => \U0|U1|row\(1),
	combout => \U0|LessThan11~0_combout\);

-- Location: LCCOMB_X41_Y11_N30
\U0|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan11~1_combout\ = (\U1|select_yShift\(0) & ((\U0|LessThan11~0_combout\) # (!\U0|U1|row\(5)))) # (!\U1|select_yShift\(0) & (\U0|LessThan11~0_combout\ & !\U0|U1|row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|select_yShift\(0),
	datac => \U0|LessThan11~0_combout\,
	datad => \U0|U1|row\(5),
	combout => \U0|LessThan11~1_combout\);

-- Location: LCCOMB_X41_Y11_N4
\U0|LessThan11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan11~2_combout\ = (\U0|U1|row\(6) & (\U0|LessThan11~1_combout\ & \U1|select_yShift\(1))) # (!\U0|U1|row\(6) & ((\U0|LessThan11~1_combout\) # (\U1|select_yShift\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|row\(6),
	datac => \U0|LessThan11~1_combout\,
	datad => \U1|select_yShift\(1),
	combout => \U0|LessThan11~2_combout\);

-- Location: LCCOMB_X45_Y14_N18
\U0|LessThan11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan11~4_combout\ = (!\U0|LessThan11~3_combout\ & ((\U0|U1|row\(7) & (\U0|LessThan11~2_combout\ & \U0|Add3~0_combout\)) # (!\U0|U1|row\(7) & ((\U0|LessThan11~2_combout\) # (\U0|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(7),
	datab => \U0|LessThan11~3_combout\,
	datac => \U0|LessThan11~2_combout\,
	datad => \U0|Add3~0_combout\,
	combout => \U0|LessThan11~4_combout\);

-- Location: LCCOMB_X46_Y15_N6
\U0|LessThan11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan11~5_combout\ = (!\U0|U1|row\(8) & \U0|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|row\(8),
	datad => \U0|Add3~2_combout\,
	combout => \U0|LessThan11~5_combout\);

-- Location: LCCOMB_X46_Y14_N18
\U0|Add3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~42_combout\ = (\U0|Add2~42_combout\ & (!\U0|Add3~41\)) # (!\U0|Add2~42_combout\ & ((\U0|Add3~41\) # (GND)))
-- \U0|Add3~43\ = CARRY((!\U0|Add3~41\) # (!\U0|Add2~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~42_combout\,
	datad => VCC,
	cin => \U0|Add3~41\,
	combout => \U0|Add3~42_combout\,
	cout => \U0|Add3~43\);

-- Location: LCCOMB_X46_Y14_N20
\U0|Add3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~44_combout\ = (\U0|Add2~44_combout\ & (\U0|Add3~43\ $ (GND))) # (!\U0|Add2~44_combout\ & (!\U0|Add3~43\ & VCC))
-- \U0|Add3~45\ = CARRY((\U0|Add2~44_combout\ & !\U0|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add2~44_combout\,
	datad => VCC,
	cin => \U0|Add3~43\,
	combout => \U0|Add3~44_combout\,
	cout => \U0|Add3~45\);

-- Location: LCCOMB_X46_Y14_N22
\U0|Add3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~46_combout\ = (\U0|Add2~46_combout\ & (!\U0|Add3~45\)) # (!\U0|Add2~46_combout\ & ((\U0|Add3~45\) # (GND)))
-- \U0|Add3~47\ = CARRY((!\U0|Add3~45\) # (!\U0|Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add2~46_combout\,
	datad => VCC,
	cin => \U0|Add3~45\,
	combout => \U0|Add3~46_combout\,
	cout => \U0|Add3~47\);

-- Location: LCCOMB_X46_Y14_N26
\U0|FSM~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~58_combout\ = (!\U0|Add3~42_combout\ & (!\U0|Add3~46_combout\ & !\U0|Add3~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add3~42_combout\,
	datac => \U0|Add3~46_combout\,
	datad => \U0|Add3~44_combout\,
	combout => \U0|FSM~58_combout\);

-- Location: LCCOMB_X45_Y14_N14
\U0|LessThan11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan11~6_combout\ = ((\U0|LessThan11~4_combout\) # ((\U0|LessThan11~5_combout\) # (!\U0|FSM~58_combout\))) # (!\U0|FSM~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~57_combout\,
	datab => \U0|LessThan11~4_combout\,
	datac => \U0|LessThan11~5_combout\,
	datad => \U0|FSM~58_combout\,
	combout => \U0|LessThan11~6_combout\);

-- Location: LCCOMB_X46_Y14_N24
\U0|Add3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add3~48_combout\ = \U0|Add3~47\ $ (!\U0|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add2~48_combout\,
	cin => \U0|Add3~47\,
	combout => \U0|Add3~48_combout\);

-- Location: LCCOMB_X45_Y14_N20
\U0|FSM~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~59_combout\ = (\U0|LessThan11~6_combout\ & (!\U0|Add3~48_combout\ & ((\U0|LessThan10~11_combout\) # (\U0|Add2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan10~11_combout\,
	datab => \U0|Add2~48_combout\,
	datac => \U0|LessThan11~6_combout\,
	datad => \U0|Add3~48_combout\,
	combout => \U0|FSM~59_combout\);

-- Location: LCCOMB_X42_Y14_N18
\U0|FSM~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~49_combout\ = (!\U0|Add1~48_combout\ & (!\U0|Add1~50_combout\ & (!\U0|Add1~44_combout\ & !\U0|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~48_combout\,
	datab => \U0|Add1~50_combout\,
	datac => \U0|Add1~44_combout\,
	datad => \U0|Add1~46_combout\,
	combout => \U0|FSM~49_combout\);

-- Location: LCCOMB_X42_Y14_N12
\U0|FSM~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~47_combout\ = (!\U0|Add1~36_combout\ & (!\U0|Add1~42_combout\ & (!\U0|Add1~38_combout\ & !\U0|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~36_combout\,
	datab => \U0|Add1~42_combout\,
	datac => \U0|Add1~38_combout\,
	datad => \U0|Add1~40_combout\,
	combout => \U0|FSM~47_combout\);

-- Location: LCCOMB_X41_Y15_N2
\U0|FSM~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~45_combout\ = (!\U0|Add1~26_combout\ & (!\U0|Add1~24_combout\ & (!\U0|Add1~22_combout\ & !\U0|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~26_combout\,
	datab => \U0|Add1~24_combout\,
	datac => \U0|Add1~22_combout\,
	datad => \U0|Add1~20_combout\,
	combout => \U0|FSM~45_combout\);

-- Location: LCCOMB_X38_Y15_N0
\U0|LessThan14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan14~1_cout\ = CARRY((\U0|U1|column\(2) & !\U1|select_xShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(2),
	datab => \U1|select_xShift\(0),
	datad => VCC,
	cout => \U0|LessThan14~1_cout\);

-- Location: LCCOMB_X38_Y15_N2
\U0|LessThan14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan14~3_cout\ = CARRY((\U0|U1|column\(3) & (\U0|Add1~0_combout\ & !\U0|LessThan14~1_cout\)) # (!\U0|U1|column\(3) & ((\U0|Add1~0_combout\) # (!\U0|LessThan14~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(3),
	datab => \U0|Add1~0_combout\,
	datad => VCC,
	cin => \U0|LessThan14~1_cout\,
	cout => \U0|LessThan14~3_cout\);

-- Location: LCCOMB_X38_Y15_N4
\U0|LessThan14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan14~5_cout\ = CARRY((\U0|Add1~2_combout\ & (\U0|U1|column\(4) & !\U0|LessThan14~3_cout\)) # (!\U0|Add1~2_combout\ & ((\U0|U1|column\(4)) # (!\U0|LessThan14~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~2_combout\,
	datab => \U0|U1|column\(4),
	datad => VCC,
	cin => \U0|LessThan14~3_cout\,
	cout => \U0|LessThan14~5_cout\);

-- Location: LCCOMB_X38_Y15_N6
\U0|LessThan14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan14~7_cout\ = CARRY((\U0|U1|column\(5) & (\U0|Add1~4_combout\ & !\U0|LessThan14~5_cout\)) # (!\U0|U1|column\(5) & ((\U0|Add1~4_combout\) # (!\U0|LessThan14~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(5),
	datab => \U0|Add1~4_combout\,
	datad => VCC,
	cin => \U0|LessThan14~5_cout\,
	cout => \U0|LessThan14~7_cout\);

-- Location: LCCOMB_X38_Y15_N8
\U0|LessThan14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan14~9_cout\ = CARRY((\U0|U1|column\(6) & ((!\U0|LessThan14~7_cout\) # (!\U0|Add1~6_combout\))) # (!\U0|U1|column\(6) & (!\U0|Add1~6_combout\ & !\U0|LessThan14~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(6),
	datab => \U0|Add1~6_combout\,
	datad => VCC,
	cin => \U0|LessThan14~7_cout\,
	cout => \U0|LessThan14~9_cout\);

-- Location: LCCOMB_X38_Y15_N10
\U0|LessThan14~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan14~11_cout\ = CARRY((\U0|U1|column\(7) & (\U0|Add1~8_combout\ & !\U0|LessThan14~9_cout\)) # (!\U0|U1|column\(7) & ((\U0|Add1~8_combout\) # (!\U0|LessThan14~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(7),
	datab => \U0|Add1~8_combout\,
	datad => VCC,
	cin => \U0|LessThan14~9_cout\,
	cout => \U0|LessThan14~11_cout\);

-- Location: LCCOMB_X38_Y15_N12
\U0|LessThan14~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan14~13_cout\ = CARRY((\U0|Add1~10_combout\ & (\U0|U1|column\(8) & !\U0|LessThan14~11_cout\)) # (!\U0|Add1~10_combout\ & ((\U0|U1|column\(8)) # (!\U0|LessThan14~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~10_combout\,
	datab => \U0|U1|column\(8),
	datad => VCC,
	cin => \U0|LessThan14~11_cout\,
	cout => \U0|LessThan14~13_cout\);

-- Location: LCCOMB_X38_Y15_N14
\U0|LessThan14~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan14~14_combout\ = (\U0|Add1~12_combout\ & (\U0|LessThan14~13_cout\ & \U0|U1|column\(9))) # (!\U0|Add1~12_combout\ & ((\U0|LessThan14~13_cout\) # (\U0|U1|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~12_combout\,
	datad => \U0|U1|column\(9),
	cin => \U0|LessThan14~13_cout\,
	combout => \U0|LessThan14~14_combout\);

-- Location: LCCOMB_X41_Y15_N0
\U0|FSM~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~44_combout\ = (!\U0|Add1~18_combout\ & (!\U0|Add1~16_combout\ & (\U0|LessThan14~14_combout\ & !\U0|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~18_combout\,
	datab => \U0|Add1~16_combout\,
	datac => \U0|LessThan14~14_combout\,
	datad => \U0|Add1~14_combout\,
	combout => \U0|FSM~44_combout\);

-- Location: LCCOMB_X41_Y14_N30
\U0|FSM~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~46_combout\ = (!\U0|Add1~34_combout\ & (!\U0|Add1~30_combout\ & (!\U0|Add1~32_combout\ & !\U0|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~34_combout\,
	datab => \U0|Add1~30_combout\,
	datac => \U0|Add1~32_combout\,
	datad => \U0|Add1~28_combout\,
	combout => \U0|FSM~46_combout\);

-- Location: LCCOMB_X42_Y14_N30
\U0|FSM~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~48_combout\ = (\U0|FSM~47_combout\ & (\U0|FSM~45_combout\ & (\U0|FSM~44_combout\ & \U0|FSM~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~47_combout\,
	datab => \U0|FSM~45_combout\,
	datac => \U0|FSM~44_combout\,
	datad => \U0|FSM~46_combout\,
	combout => \U0|FSM~48_combout\);

-- Location: LCCOMB_X42_Y14_N4
\U0|FSM~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~50_combout\ = (!\U0|Add1~54_combout\ & (\U0|FSM~49_combout\ & (\U0|FSM~48_combout\ & !\U0|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add1~54_combout\,
	datab => \U0|FSM~49_combout\,
	datac => \U0|FSM~48_combout\,
	datad => \U0|Add1~52_combout\,
	combout => \U0|FSM~50_combout\);

-- Location: LCCOMB_X42_Y14_N2
\U0|FSM~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~60_combout\ = (((!\U0|FSM~50_combout\ & !\U0|Add1~56_combout\)) # (!\U0|FSM~59_combout\)) # (!\U0|FSM~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~51_combout\,
	datab => \U0|FSM~59_combout\,
	datac => \U0|FSM~50_combout\,
	datad => \U0|Add1~56_combout\,
	combout => \U0|FSM~60_combout\);

-- Location: LCCOMB_X43_Y15_N4
\U0|Add4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~1_cout\ = CARRY((\U0|Add0~0_combout\ & \U1|select_xShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~0_combout\,
	datab => \U1|select_xShift\(0),
	datad => VCC,
	cout => \U0|Add4~1_cout\);

-- Location: LCCOMB_X43_Y15_N6
\U0|Add4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~3_cout\ = CARRY((!\U0|Add4~1_cout\) # (!\U0|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~2_combout\,
	datad => VCC,
	cin => \U0|Add4~1_cout\,
	cout => \U0|Add4~3_cout\);

-- Location: LCCOMB_X43_Y15_N8
\U0|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~4_combout\ = (\U0|Add0~4_combout\ & (\U0|Add4~3_cout\ $ (GND))) # (!\U0|Add0~4_combout\ & (!\U0|Add4~3_cout\ & VCC))
-- \U0|Add4~5\ = CARRY((\U0|Add0~4_combout\ & !\U0|Add4~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~4_combout\,
	datad => VCC,
	cin => \U0|Add4~3_cout\,
	combout => \U0|Add4~4_combout\,
	cout => \U0|Add4~5\);

-- Location: LCCOMB_X43_Y15_N10
\U0|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~6_combout\ = (\U0|Add0~6_combout\ & (!\U0|Add4~5\)) # (!\U0|Add0~6_combout\ & ((\U0|Add4~5\) # (GND)))
-- \U0|Add4~7\ = CARRY((!\U0|Add4~5\) # (!\U0|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~6_combout\,
	datad => VCC,
	cin => \U0|Add4~5\,
	combout => \U0|Add4~6_combout\,
	cout => \U0|Add4~7\);

-- Location: LCCOMB_X43_Y15_N12
\U0|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~8_combout\ = (\U0|Add0~8_combout\ & (\U0|Add4~7\ $ (GND))) # (!\U0|Add0~8_combout\ & (!\U0|Add4~7\ & VCC))
-- \U0|Add4~9\ = CARRY((\U0|Add0~8_combout\ & !\U0|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~8_combout\,
	datad => VCC,
	cin => \U0|Add4~7\,
	combout => \U0|Add4~8_combout\,
	cout => \U0|Add4~9\);

-- Location: LCCOMB_X43_Y15_N14
\U0|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~10_combout\ = (\U0|Add0~10_combout\ & (!\U0|Add4~9\)) # (!\U0|Add0~10_combout\ & ((\U0|Add4~9\) # (GND)))
-- \U0|Add4~11\ = CARRY((!\U0|Add4~9\) # (!\U0|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~10_combout\,
	datad => VCC,
	cin => \U0|Add4~9\,
	combout => \U0|Add4~10_combout\,
	cout => \U0|Add4~11\);

-- Location: LCCOMB_X43_Y15_N16
\U0|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~12_combout\ = (\U0|Add0~12_combout\ & (\U0|Add4~11\ $ (GND))) # (!\U0|Add0~12_combout\ & (!\U0|Add4~11\ & VCC))
-- \U0|Add4~13\ = CARRY((\U0|Add0~12_combout\ & !\U0|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~12_combout\,
	datad => VCC,
	cin => \U0|Add4~11\,
	combout => \U0|Add4~12_combout\,
	cout => \U0|Add4~13\);

-- Location: LCCOMB_X43_Y15_N18
\U0|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~14_combout\ = (\U0|Add0~14_combout\ & (!\U0|Add4~13\)) # (!\U0|Add0~14_combout\ & ((\U0|Add4~13\) # (GND)))
-- \U0|Add4~15\ = CARRY((!\U0|Add4~13\) # (!\U0|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~14_combout\,
	datad => VCC,
	cin => \U0|Add4~13\,
	combout => \U0|Add4~14_combout\,
	cout => \U0|Add4~15\);

-- Location: LCCOMB_X43_Y15_N20
\U0|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~16_combout\ = (\U0|Add0~16_combout\ & (\U0|Add4~15\ $ (GND))) # (!\U0|Add0~16_combout\ & (!\U0|Add4~15\ & VCC))
-- \U0|Add4~17\ = CARRY((\U0|Add0~16_combout\ & !\U0|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~16_combout\,
	datad => VCC,
	cin => \U0|Add4~15\,
	combout => \U0|Add4~16_combout\,
	cout => \U0|Add4~17\);

-- Location: LCCOMB_X43_Y15_N22
\U0|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~18_combout\ = (\U0|Add0~18_combout\ & (!\U0|Add4~17\)) # (!\U0|Add0~18_combout\ & ((\U0|Add4~17\) # (GND)))
-- \U0|Add4~19\ = CARRY((!\U0|Add4~17\) # (!\U0|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~18_combout\,
	datad => VCC,
	cin => \U0|Add4~17\,
	combout => \U0|Add4~18_combout\,
	cout => \U0|Add4~19\);

-- Location: LCCOMB_X43_Y15_N24
\U0|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~20_combout\ = (\U0|Add0~20_combout\ & (\U0|Add4~19\ $ (GND))) # (!\U0|Add0~20_combout\ & (!\U0|Add4~19\ & VCC))
-- \U0|Add4~21\ = CARRY((\U0|Add0~20_combout\ & !\U0|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~20_combout\,
	datad => VCC,
	cin => \U0|Add4~19\,
	combout => \U0|Add4~20_combout\,
	cout => \U0|Add4~21\);

-- Location: LCCOMB_X43_Y15_N26
\U0|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~22_combout\ = (\U0|Add0~22_combout\ & (!\U0|Add4~21\)) # (!\U0|Add0~22_combout\ & ((\U0|Add4~21\) # (GND)))
-- \U0|Add4~23\ = CARRY((!\U0|Add4~21\) # (!\U0|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~22_combout\,
	datad => VCC,
	cin => \U0|Add4~21\,
	combout => \U0|Add4~22_combout\,
	cout => \U0|Add4~23\);

-- Location: LCCOMB_X43_Y15_N28
\U0|Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~24_combout\ = (\U0|Add0~24_combout\ & (\U0|Add4~23\ $ (GND))) # (!\U0|Add0~24_combout\ & (!\U0|Add4~23\ & VCC))
-- \U0|Add4~25\ = CARRY((\U0|Add0~24_combout\ & !\U0|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~24_combout\,
	datad => VCC,
	cin => \U0|Add4~23\,
	combout => \U0|Add4~24_combout\,
	cout => \U0|Add4~25\);

-- Location: LCCOMB_X43_Y15_N30
\U0|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~26_combout\ = (\U0|Add0~26_combout\ & (!\U0|Add4~25\)) # (!\U0|Add0~26_combout\ & ((\U0|Add4~25\) # (GND)))
-- \U0|Add4~27\ = CARRY((!\U0|Add4~25\) # (!\U0|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~26_combout\,
	datad => VCC,
	cin => \U0|Add4~25\,
	combout => \U0|Add4~26_combout\,
	cout => \U0|Add4~27\);

-- Location: LCCOMB_X43_Y14_N0
\U0|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~28_combout\ = (\U0|Add0~28_combout\ & (\U0|Add4~27\ $ (GND))) # (!\U0|Add0~28_combout\ & (!\U0|Add4~27\ & VCC))
-- \U0|Add4~29\ = CARRY((\U0|Add0~28_combout\ & !\U0|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~28_combout\,
	datad => VCC,
	cin => \U0|Add4~27\,
	combout => \U0|Add4~28_combout\,
	cout => \U0|Add4~29\);

-- Location: LCCOMB_X43_Y14_N2
\U0|Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~30_combout\ = (\U0|Add0~30_combout\ & (!\U0|Add4~29\)) # (!\U0|Add0~30_combout\ & ((\U0|Add4~29\) # (GND)))
-- \U0|Add4~31\ = CARRY((!\U0|Add4~29\) # (!\U0|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~30_combout\,
	datad => VCC,
	cin => \U0|Add4~29\,
	combout => \U0|Add4~30_combout\,
	cout => \U0|Add4~31\);

-- Location: LCCOMB_X43_Y14_N4
\U0|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~32_combout\ = (\U0|Add0~32_combout\ & (\U0|Add4~31\ $ (GND))) # (!\U0|Add0~32_combout\ & (!\U0|Add4~31\ & VCC))
-- \U0|Add4~33\ = CARRY((\U0|Add0~32_combout\ & !\U0|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~32_combout\,
	datad => VCC,
	cin => \U0|Add4~31\,
	combout => \U0|Add4~32_combout\,
	cout => \U0|Add4~33\);

-- Location: LCCOMB_X43_Y14_N6
\U0|Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~34_combout\ = (\U0|Add0~34_combout\ & (!\U0|Add4~33\)) # (!\U0|Add0~34_combout\ & ((\U0|Add4~33\) # (GND)))
-- \U0|Add4~35\ = CARRY((!\U0|Add4~33\) # (!\U0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~34_combout\,
	datad => VCC,
	cin => \U0|Add4~33\,
	combout => \U0|Add4~34_combout\,
	cout => \U0|Add4~35\);

-- Location: LCCOMB_X43_Y14_N8
\U0|Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~36_combout\ = (\U0|Add0~36_combout\ & (\U0|Add4~35\ $ (GND))) # (!\U0|Add0~36_combout\ & (!\U0|Add4~35\ & VCC))
-- \U0|Add4~37\ = CARRY((\U0|Add0~36_combout\ & !\U0|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~36_combout\,
	datad => VCC,
	cin => \U0|Add4~35\,
	combout => \U0|Add4~36_combout\,
	cout => \U0|Add4~37\);

-- Location: LCCOMB_X43_Y14_N10
\U0|Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~38_combout\ = (\U0|Add0~38_combout\ & (!\U0|Add4~37\)) # (!\U0|Add0~38_combout\ & ((\U0|Add4~37\) # (GND)))
-- \U0|Add4~39\ = CARRY((!\U0|Add4~37\) # (!\U0|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~38_combout\,
	datad => VCC,
	cin => \U0|Add4~37\,
	combout => \U0|Add4~38_combout\,
	cout => \U0|Add4~39\);

-- Location: LCCOMB_X43_Y14_N12
\U0|Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~40_combout\ = (\U0|Add0~40_combout\ & (\U0|Add4~39\ $ (GND))) # (!\U0|Add0~40_combout\ & (!\U0|Add4~39\ & VCC))
-- \U0|Add4~41\ = CARRY((\U0|Add0~40_combout\ & !\U0|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~40_combout\,
	datad => VCC,
	cin => \U0|Add4~39\,
	combout => \U0|Add4~40_combout\,
	cout => \U0|Add4~41\);

-- Location: LCCOMB_X43_Y14_N14
\U0|Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~42_combout\ = (\U0|Add0~42_combout\ & (!\U0|Add4~41\)) # (!\U0|Add0~42_combout\ & ((\U0|Add4~41\) # (GND)))
-- \U0|Add4~43\ = CARRY((!\U0|Add4~41\) # (!\U0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~42_combout\,
	datad => VCC,
	cin => \U0|Add4~41\,
	combout => \U0|Add4~42_combout\,
	cout => \U0|Add4~43\);

-- Location: LCCOMB_X43_Y14_N16
\U0|Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~44_combout\ = (\U0|Add0~44_combout\ & (\U0|Add4~43\ $ (GND))) # (!\U0|Add0~44_combout\ & (!\U0|Add4~43\ & VCC))
-- \U0|Add4~45\ = CARRY((\U0|Add0~44_combout\ & !\U0|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~44_combout\,
	datad => VCC,
	cin => \U0|Add4~43\,
	combout => \U0|Add4~44_combout\,
	cout => \U0|Add4~45\);

-- Location: LCCOMB_X43_Y14_N18
\U0|Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~46_combout\ = (\U0|Add0~46_combout\ & (!\U0|Add4~45\)) # (!\U0|Add0~46_combout\ & ((\U0|Add4~45\) # (GND)))
-- \U0|Add4~47\ = CARRY((!\U0|Add4~45\) # (!\U0|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~46_combout\,
	datad => VCC,
	cin => \U0|Add4~45\,
	combout => \U0|Add4~46_combout\,
	cout => \U0|Add4~47\);

-- Location: LCCOMB_X43_Y14_N20
\U0|Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~48_combout\ = (\U0|Add0~48_combout\ & (\U0|Add4~47\ $ (GND))) # (!\U0|Add0~48_combout\ & (!\U0|Add4~47\ & VCC))
-- \U0|Add4~49\ = CARRY((\U0|Add0~48_combout\ & !\U0|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~48_combout\,
	datad => VCC,
	cin => \U0|Add4~47\,
	combout => \U0|Add4~48_combout\,
	cout => \U0|Add4~49\);

-- Location: LCCOMB_X43_Y14_N22
\U0|Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~50_combout\ = (\U0|Add0~50_combout\ & (!\U0|Add4~49\)) # (!\U0|Add0~50_combout\ & ((\U0|Add4~49\) # (GND)))
-- \U0|Add4~51\ = CARRY((!\U0|Add4~49\) # (!\U0|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~50_combout\,
	datad => VCC,
	cin => \U0|Add4~49\,
	combout => \U0|Add4~50_combout\,
	cout => \U0|Add4~51\);

-- Location: LCCOMB_X43_Y14_N24
\U0|Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~52_combout\ = (\U0|Add0~52_combout\ & (\U0|Add4~51\ $ (GND))) # (!\U0|Add0~52_combout\ & (!\U0|Add4~51\ & VCC))
-- \U0|Add4~53\ = CARRY((\U0|Add0~52_combout\ & !\U0|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~52_combout\,
	datad => VCC,
	cin => \U0|Add4~51\,
	combout => \U0|Add4~52_combout\,
	cout => \U0|Add4~53\);

-- Location: LCCOMB_X43_Y14_N26
\U0|Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~54_combout\ = (\U0|Add0~54_combout\ & (!\U0|Add4~53\)) # (!\U0|Add0~54_combout\ & ((\U0|Add4~53\) # (GND)))
-- \U0|Add4~55\ = CARRY((!\U0|Add4~53\) # (!\U0|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~54_combout\,
	datad => VCC,
	cin => \U0|Add4~53\,
	combout => \U0|Add4~54_combout\,
	cout => \U0|Add4~55\);

-- Location: LCCOMB_X43_Y14_N28
\U0|Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add4~56_combout\ = \U0|Add4~55\ $ (!\U0|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add0~56_combout\,
	cin => \U0|Add4~55\,
	combout => \U0|Add4~56_combout\);

-- Location: LCCOMB_X42_Y14_N8
\U0|LessThan9~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~23_combout\ = (\U0|Add4~46_combout\) # ((\U0|Add4~50_combout\) # ((\U0|Add4~48_combout\) # (\U0|Add4~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~46_combout\,
	datab => \U0|Add4~50_combout\,
	datac => \U0|Add4~48_combout\,
	datad => \U0|Add4~44_combout\,
	combout => \U0|LessThan9~23_combout\);

-- Location: LCCOMB_X42_Y11_N6
\U0|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~1_cout\ = CARRY(!\U0|LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|LessThan8~0_combout\,
	datad => VCC,
	cout => \U0|LessThan9~1_cout\);

-- Location: LCCOMB_X42_Y11_N8
\U0|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~3_cout\ = CARRY((\U1|select_xShift\(0) & ((\U0|U1|column\(2)) # (!\U0|LessThan9~1_cout\))) # (!\U1|select_xShift\(0) & (\U0|U1|column\(2) & !\U0|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(0),
	datab => \U0|U1|column\(2),
	datad => VCC,
	cin => \U0|LessThan9~1_cout\,
	cout => \U0|LessThan9~3_cout\);

-- Location: LCCOMB_X42_Y11_N10
\U0|LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~5_cout\ = CARRY((\U0|U1|column\(3) & (!\U1|select_xShift\(1) & !\U0|LessThan9~3_cout\)) # (!\U0|U1|column\(3) & ((!\U0|LessThan9~3_cout\) # (!\U1|select_xShift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(3),
	datab => \U1|select_xShift\(1),
	datad => VCC,
	cin => \U0|LessThan9~3_cout\,
	cout => \U0|LessThan9~5_cout\);

-- Location: LCCOMB_X42_Y11_N12
\U0|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~7_cout\ = CARRY((\U0|U1|column\(4) & ((!\U0|LessThan9~5_cout\) # (!\U1|select_xShift\(2)))) # (!\U0|U1|column\(4) & (!\U1|select_xShift\(2) & !\U0|LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(4),
	datab => \U1|select_xShift\(2),
	datad => VCC,
	cin => \U0|LessThan9~5_cout\,
	cout => \U0|LessThan9~7_cout\);

-- Location: LCCOMB_X42_Y11_N14
\U0|LessThan9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~9_cout\ = CARRY((\U0|Add4~4_combout\ & ((!\U0|LessThan9~7_cout\) # (!\U0|U1|column\(5)))) # (!\U0|Add4~4_combout\ & (!\U0|U1|column\(5) & !\U0|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~4_combout\,
	datab => \U0|U1|column\(5),
	datad => VCC,
	cin => \U0|LessThan9~7_cout\,
	cout => \U0|LessThan9~9_cout\);

-- Location: LCCOMB_X42_Y11_N16
\U0|LessThan9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~11_cout\ = CARRY((\U0|Add4~6_combout\ & (\U0|U1|column\(6) & !\U0|LessThan9~9_cout\)) # (!\U0|Add4~6_combout\ & ((\U0|U1|column\(6)) # (!\U0|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~6_combout\,
	datab => \U0|U1|column\(6),
	datad => VCC,
	cin => \U0|LessThan9~9_cout\,
	cout => \U0|LessThan9~11_cout\);

-- Location: LCCOMB_X42_Y11_N18
\U0|LessThan9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~13_cout\ = CARRY((\U0|U1|column\(7) & (\U0|Add4~8_combout\ & !\U0|LessThan9~11_cout\)) # (!\U0|U1|column\(7) & ((\U0|Add4~8_combout\) # (!\U0|LessThan9~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(7),
	datab => \U0|Add4~8_combout\,
	datad => VCC,
	cin => \U0|LessThan9~11_cout\,
	cout => \U0|LessThan9~13_cout\);

-- Location: LCCOMB_X42_Y11_N20
\U0|LessThan9~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~15_cout\ = CARRY((\U0|Add4~10_combout\ & (\U0|U1|column\(8) & !\U0|LessThan9~13_cout\)) # (!\U0|Add4~10_combout\ & ((\U0|U1|column\(8)) # (!\U0|LessThan9~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~10_combout\,
	datab => \U0|U1|column\(8),
	datad => VCC,
	cin => \U0|LessThan9~13_cout\,
	cout => \U0|LessThan9~15_cout\);

-- Location: LCCOMB_X42_Y11_N22
\U0|LessThan9~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~16_combout\ = (\U0|Add4~12_combout\ & ((!\U0|U1|column\(9)) # (!\U0|LessThan9~15_cout\))) # (!\U0|Add4~12_combout\ & (!\U0|LessThan9~15_cout\ & !\U0|U1|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add4~12_combout\,
	datad => \U0|U1|column\(9),
	cin => \U0|LessThan9~15_cout\,
	combout => \U0|LessThan9~16_combout\);

-- Location: LCCOMB_X43_Y15_N2
\U0|LessThan9~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~18_combout\ = (\U0|Add4~18_combout\) # ((\U0|Add4~16_combout\) # ((\U0|LessThan9~16_combout\) # (\U0|Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~18_combout\,
	datab => \U0|Add4~16_combout\,
	datac => \U0|LessThan9~16_combout\,
	datad => \U0|Add4~14_combout\,
	combout => \U0|LessThan9~18_combout\);

-- Location: LCCOMB_X43_Y14_N30
\U0|LessThan9~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~20_combout\ = (\U0|Add4~34_combout\) # ((\U0|Add4~28_combout\) # ((\U0|Add4~32_combout\) # (\U0|Add4~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~34_combout\,
	datab => \U0|Add4~28_combout\,
	datac => \U0|Add4~32_combout\,
	datad => \U0|Add4~30_combout\,
	combout => \U0|LessThan9~20_combout\);

-- Location: LCCOMB_X43_Y15_N0
\U0|LessThan9~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~19_combout\ = (\U0|Add4~26_combout\) # ((\U0|Add4~24_combout\) # ((\U0|Add4~22_combout\) # (\U0|Add4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~26_combout\,
	datab => \U0|Add4~24_combout\,
	datac => \U0|Add4~22_combout\,
	datad => \U0|Add4~20_combout\,
	combout => \U0|LessThan9~19_combout\);

-- Location: LCCOMB_X42_Y14_N0
\U0|LessThan9~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~21_combout\ = (\U0|Add4~42_combout\) # ((\U0|Add4~38_combout\) # ((\U0|Add4~40_combout\) # (\U0|Add4~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~42_combout\,
	datab => \U0|Add4~38_combout\,
	datac => \U0|Add4~40_combout\,
	datad => \U0|Add4~36_combout\,
	combout => \U0|LessThan9~21_combout\);

-- Location: LCCOMB_X42_Y15_N30
\U0|LessThan9~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~22_combout\ = (\U0|LessThan9~18_combout\) # ((\U0|LessThan9~20_combout\) # ((\U0|LessThan9~19_combout\) # (\U0|LessThan9~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan9~18_combout\,
	datab => \U0|LessThan9~20_combout\,
	datac => \U0|LessThan9~19_combout\,
	datad => \U0|LessThan9~21_combout\,
	combout => \U0|LessThan9~22_combout\);

-- Location: LCCOMB_X42_Y14_N6
\U0|LessThan9~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan9~24_combout\ = (\U0|Add4~52_combout\) # ((\U0|LessThan9~23_combout\) # ((\U0|LessThan9~22_combout\) # (\U0|Add4~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add4~52_combout\,
	datab => \U0|LessThan9~23_combout\,
	datac => \U0|LessThan9~22_combout\,
	datad => \U0|Add4~54_combout\,
	combout => \U0|LessThan9~24_combout\);

-- Location: LCCOMB_X45_Y14_N22
\U0|FSM~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~64_combout\ = (\U0|FSM~59_combout\ & (!\U0|Add4~56_combout\ & (\U0|LessThan9~24_combout\ & \U0|LessThan8~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~59_combout\,
	datab => \U0|Add4~56_combout\,
	datac => \U0|LessThan9~24_combout\,
	datad => \U0|LessThan8~26_combout\,
	combout => \U0|FSM~64_combout\);

-- Location: LCCOMB_X40_Y11_N24
\U0|FSM~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~17_combout\ = (!\U0|U1|row\(2) & (!\U0|U1|row\(3) & !\U0|U1|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|row\(2),
	datac => \U0|U1|row\(3),
	datad => \U0|U1|row\(1),
	combout => \U0|FSM~17_combout\);

-- Location: LCCOMB_X41_Y11_N18
\U0|FSM~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~65_combout\ = (\U1|select_yShift\(0) & (!\U0|FSM~17_combout\ & (\U0|U1|row\(5) & \U0|U1|row\(4)))) # (!\U1|select_yShift\(0) & ((\U0|U1|row\(5)) # ((!\U0|FSM~17_combout\ & \U0|U1|row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(0),
	datab => \U0|FSM~17_combout\,
	datac => \U0|U1|row\(5),
	datad => \U0|U1|row\(4),
	combout => \U0|FSM~65_combout\);

-- Location: LCCOMB_X41_Y11_N0
\U0|FSM~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~66_combout\ = (\U1|select_yShift\(1) & (\U0|U1|row\(6) & \U0|FSM~65_combout\)) # (!\U1|select_yShift\(1) & ((\U0|U1|row\(6)) # (\U0|FSM~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(1),
	datac => \U0|U1|row\(6),
	datad => \U0|FSM~65_combout\,
	combout => \U0|FSM~66_combout\);

-- Location: LCCOMB_X41_Y11_N8
\U0|FSM~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~67_combout\ = (\U0|Add3~0_combout\ & (\U0|U1|row\(7) & \U0|FSM~66_combout\)) # (!\U0|Add3~0_combout\ & ((\U0|U1|row\(7)) # (\U0|FSM~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add3~0_combout\,
	datac => \U0|U1|row\(7),
	datad => \U0|FSM~66_combout\,
	combout => \U0|FSM~67_combout\);

-- Location: LCCOMB_X41_Y11_N6
\U0|FSM~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~68_combout\ = (\U0|FSM~57_combout\ & ((\U0|Add3~2_combout\ & (\U0|U1|row\(8) & \U0|FSM~67_combout\)) # (!\U0|Add3~2_combout\ & ((\U0|U1|row\(8)) # (\U0|FSM~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add3~2_combout\,
	datab => \U0|FSM~57_combout\,
	datac => \U0|U1|row\(8),
	datad => \U0|FSM~67_combout\,
	combout => \U0|FSM~68_combout\);

-- Location: LCCOMB_X45_Y14_N0
\U0|FSM~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~69_combout\ = (\U0|FSM~58_combout\ & (!\U0|Add3~48_combout\ & ((\U0|LessThan11~5_combout\) # (\U0|LessThan11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan11~5_combout\,
	datab => \U0|LessThan11~4_combout\,
	datac => \U0|FSM~58_combout\,
	datad => \U0|Add3~48_combout\,
	combout => \U0|FSM~69_combout\);

-- Location: LCCOMB_X45_Y14_N2
\U0|FSM~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~70_combout\ = (\U0|FSM~68_combout\ & (\U0|FSM~69_combout\ & (\U0|FSM~51_combout\ & \U0|LessThan8~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~68_combout\,
	datab => \U0|FSM~69_combout\,
	datac => \U0|FSM~51_combout\,
	datad => \U0|LessThan8~26_combout\,
	combout => \U0|FSM~70_combout\);

-- Location: LCCOMB_X45_Y14_N6
\U0|FSM~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~71_combout\ = (!\U0|FSM~63_combout\ & (\U0|FSM~60_combout\ & (!\U0|FSM~64_combout\ & !\U0|FSM~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~63_combout\,
	datab => \U0|FSM~60_combout\,
	datac => \U0|FSM~64_combout\,
	datad => \U0|FSM~70_combout\,
	combout => \U0|FSM~71_combout\);

-- Location: LCCOMB_X40_Y11_N4
\U0|U1|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|process_0~1_combout\ = (!\U0|U1|Add1~21_combout\ & (!\U0|U1|process_0~0_combout\ & \U0|U1|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~21_combout\,
	datab => \U0|U1|process_0~0_combout\,
	datad => \U0|U1|LessThan6~0_combout\,
	combout => \U0|U1|process_0~1_combout\);

-- Location: LCCOMB_X39_Y14_N10
\U0|U1|disp_ena~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|disp_ena~feeder_combout\ = \U0|U1|process_0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|process_0~1_combout\,
	combout => \U0|U1|disp_ena~feeder_combout\);

-- Location: FF_X39_Y14_N11
\U0|U1|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|disp_ena~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|disp_ena~q\);

-- Location: LCCOMB_X38_Y11_N0
\U0|FSM~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~31_combout\ = (\U0|U1|column\(5)) # ((!\U0|U1|column\(7) & \U0|U1|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(7),
	datab => \U0|U1|column\(0),
	datad => \U0|U1|column\(5),
	combout => \U0|FSM~31_combout\);

-- Location: LCCOMB_X38_Y11_N8
\U0|FSM~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~30_combout\ = (\U0|U1|column\(2)) # ((\U0|U1|column\(3)) # (\U0|U1|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(2),
	datac => \U0|U1|column\(3),
	datad => \U0|U1|column\(1),
	combout => \U0|FSM~30_combout\);

-- Location: LCCOMB_X38_Y11_N22
\U0|FSM~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~32_combout\ = (\U0|FSM~31_combout\) # ((\U0|U1|column\(7) & (\U0|FSM~30_combout\ & \U0|U1|column\(4))) # (!\U0|U1|column\(7) & ((\U0|FSM~30_combout\) # (\U0|U1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(7),
	datab => \U0|FSM~31_combout\,
	datac => \U0|FSM~30_combout\,
	datad => \U0|U1|column\(4),
	combout => \U0|FSM~32_combout\);

-- Location: LCCOMB_X38_Y11_N6
\U0|FSM~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~33_combout\ = (\U0|LessThan23~0_combout\ & ((\U0|FSM~32_combout\ & ((!\U0|U1|column\(6)) # (!\U0|U1|column\(7)))) # (!\U0|FSM~32_combout\ & ((\U0|U1|column\(7)) # (\U0|U1|column\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~32_combout\,
	datab => \U0|U1|column\(7),
	datac => \U0|U1|column\(6),
	datad => \U0|LessThan23~0_combout\,
	combout => \U0|FSM~33_combout\);

-- Location: LCCOMB_X39_Y11_N10
\U0|FSM~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~37_combout\ = (!\U0|U1|row\(5) & (!\U0|U1|row\(6) & (!\U0|U1|row\(0) & !\U0|U1|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(5),
	datab => \U0|U1|row\(6),
	datac => \U0|U1|row\(0),
	datad => \U0|U1|row\(7),
	combout => \U0|FSM~37_combout\);

-- Location: LCCOMB_X39_Y11_N30
\U0|FSM~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~36_combout\ = (\U0|U1|row\(8)) # ((\U0|U1|row\(7) & ((\U0|U1|row\(5)) # (\U0|U1|row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(5),
	datab => \U0|U1|row\(8),
	datac => \U0|U1|row\(6),
	datad => \U0|U1|row\(7),
	combout => \U0|FSM~36_combout\);

-- Location: LCCOMB_X39_Y11_N6
\U0|FSM~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~38_combout\ = (\U0|FSM~36_combout\) # ((\U0|FSM~37_combout\ & (!\U0|U1|row\(4) & \U0|FSM~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~37_combout\,
	datab => \U0|U1|row\(4),
	datac => \U0|FSM~36_combout\,
	datad => \U0|FSM~17_combout\,
	combout => \U0|FSM~38_combout\);

-- Location: LCCOMB_X46_Y11_N0
\U1|index[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[0]~32_combout\ = (\U1|select_yShift\(0) & (\U1|select_xShift\(0) $ (VCC))) # (!\U1|select_yShift\(0) & (\U1|select_xShift\(0) & VCC))
-- \U1|index[0]~33\ = CARRY((\U1|select_yShift\(0) & \U1|select_xShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(0),
	datab => \U1|select_xShift\(0),
	datad => VCC,
	combout => \U1|index[0]~32_combout\,
	cout => \U1|index[0]~33\);

-- Location: LCCOMB_X47_Y11_N2
\U1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = (\U1|select_yShift\(0) & (\U1|select_yShift\(1) $ (VCC))) # (!\U1|select_yShift\(0) & (\U1|select_yShift\(1) & VCC))
-- \U1|Add1~1\ = CARRY((\U1|select_yShift\(0) & \U1|select_yShift\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(0),
	datab => \U1|select_yShift\(1),
	datad => VCC,
	combout => \U1|Add1~0_combout\,
	cout => \U1|Add1~1\);

-- Location: LCCOMB_X47_Y11_N4
\U1|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = (\U1|select_yShift\(2) & ((\U1|select_yShift\(1) & (\U1|Add1~1\ & VCC)) # (!\U1|select_yShift\(1) & (!\U1|Add1~1\)))) # (!\U1|select_yShift\(2) & ((\U1|select_yShift\(1) & (!\U1|Add1~1\)) # (!\U1|select_yShift\(1) & ((\U1|Add1~1\) # 
-- (GND)))))
-- \U1|Add1~3\ = CARRY((\U1|select_yShift\(2) & (!\U1|select_yShift\(1) & !\U1|Add1~1\)) # (!\U1|select_yShift\(2) & ((!\U1|Add1~1\) # (!\U1|select_yShift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(2),
	datab => \U1|select_yShift\(1),
	datad => VCC,
	cin => \U1|Add1~1\,
	combout => \U1|Add1~2_combout\,
	cout => \U1|Add1~3\);

-- Location: LCCOMB_X47_Y11_N6
\U1|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~4_combout\ = ((\U1|select_yShift\(2) $ (\U1|select_yShift\(3) $ (!\U1|Add1~3\)))) # (GND)
-- \U1|Add1~5\ = CARRY((\U1|select_yShift\(2) & ((\U1|select_yShift\(3)) # (!\U1|Add1~3\))) # (!\U1|select_yShift\(2) & (\U1|select_yShift\(3) & !\U1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(2),
	datab => \U1|select_yShift\(3),
	datad => VCC,
	cin => \U1|Add1~3\,
	combout => \U1|Add1~4_combout\,
	cout => \U1|Add1~5\);

-- Location: LCCOMB_X46_Y11_N2
\U1|index[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[1]~34_combout\ = (\U1|Add1~0_combout\ & ((\U1|select_xShift\(1) & (\U1|index[0]~33\ & VCC)) # (!\U1|select_xShift\(1) & (!\U1|index[0]~33\)))) # (!\U1|Add1~0_combout\ & ((\U1|select_xShift\(1) & (!\U1|index[0]~33\)) # (!\U1|select_xShift\(1) & 
-- ((\U1|index[0]~33\) # (GND)))))
-- \U1|index[1]~35\ = CARRY((\U1|Add1~0_combout\ & (!\U1|select_xShift\(1) & !\U1|index[0]~33\)) # (!\U1|Add1~0_combout\ & ((!\U1|index[0]~33\) # (!\U1|select_xShift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~0_combout\,
	datab => \U1|select_xShift\(1),
	datad => VCC,
	cin => \U1|index[0]~33\,
	combout => \U1|index[1]~34_combout\,
	cout => \U1|index[1]~35\);

-- Location: LCCOMB_X46_Y11_N4
\U1|index[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[2]~36_combout\ = ((\U1|Add1~2_combout\ $ (\U1|select_xShift\(2) $ (!\U1|index[1]~35\)))) # (GND)
-- \U1|index[2]~37\ = CARRY((\U1|Add1~2_combout\ & ((\U1|select_xShift\(2)) # (!\U1|index[1]~35\))) # (!\U1|Add1~2_combout\ & (\U1|select_xShift\(2) & !\U1|index[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~2_combout\,
	datab => \U1|select_xShift\(2),
	datad => VCC,
	cin => \U1|index[1]~35\,
	combout => \U1|index[2]~36_combout\,
	cout => \U1|index[2]~37\);

-- Location: LCCOMB_X46_Y11_N6
\U1|index[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[3]~38_combout\ = (\U1|Add1~4_combout\ & ((\U1|select_xShift\(3) & (\U1|index[2]~37\ & VCC)) # (!\U1|select_xShift\(3) & (!\U1|index[2]~37\)))) # (!\U1|Add1~4_combout\ & ((\U1|select_xShift\(3) & (!\U1|index[2]~37\)) # (!\U1|select_xShift\(3) & 
-- ((\U1|index[2]~37\) # (GND)))))
-- \U1|index[3]~39\ = CARRY((\U1|Add1~4_combout\ & (!\U1|select_xShift\(3) & !\U1|index[2]~37\)) # (!\U1|Add1~4_combout\ & ((!\U1|index[2]~37\) # (!\U1|select_xShift\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~4_combout\,
	datab => \U1|select_xShift\(3),
	datad => VCC,
	cin => \U1|index[2]~37\,
	combout => \U1|index[3]~38_combout\,
	cout => \U1|index[3]~39\);

-- Location: IOIBUF_X51_Y54_N29
\BUT1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUT1,
	o => \BUT1~input_o\);

-- Location: LCCOMB_X40_Y6_N22
\U1|p~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|p~2_combout\ = (\U1|Equal0~10_combout\ & \BUT1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~10_combout\,
	datad => \BUT1~input_o\,
	combout => \U1|p~2_combout\);

-- Location: FF_X43_Y7_N19
\U1|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[3]~38_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(3));

-- Location: LCCOMB_X47_Y11_N8
\U1|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~6_combout\ = (\U1|select_yShift\(4) & ((\U1|select_yShift\(3) & (\U1|Add1~5\ & VCC)) # (!\U1|select_yShift\(3) & (!\U1|Add1~5\)))) # (!\U1|select_yShift\(4) & ((\U1|select_yShift\(3) & (!\U1|Add1~5\)) # (!\U1|select_yShift\(3) & ((\U1|Add1~5\) # 
-- (GND)))))
-- \U1|Add1~7\ = CARRY((\U1|select_yShift\(4) & (!\U1|select_yShift\(3) & !\U1|Add1~5\)) # (!\U1|select_yShift\(4) & ((!\U1|Add1~5\) # (!\U1|select_yShift\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(4),
	datab => \U1|select_yShift\(3),
	datad => VCC,
	cin => \U1|Add1~5\,
	combout => \U1|Add1~6_combout\,
	cout => \U1|Add1~7\);

-- Location: LCCOMB_X47_Y11_N10
\U1|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~8_combout\ = ((\U1|select_yShift\(4) $ (\U1|select_yShift\(5) $ (!\U1|Add1~7\)))) # (GND)
-- \U1|Add1~9\ = CARRY((\U1|select_yShift\(4) & ((\U1|select_yShift\(5)) # (!\U1|Add1~7\))) # (!\U1|select_yShift\(4) & (\U1|select_yShift\(5) & !\U1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(4),
	datab => \U1|select_yShift\(5),
	datad => VCC,
	cin => \U1|Add1~7\,
	combout => \U1|Add1~8_combout\,
	cout => \U1|Add1~9\);

-- Location: LCCOMB_X47_Y11_N12
\U1|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~10_combout\ = (\U1|select_yShift\(6) & ((\U1|select_yShift\(5) & (\U1|Add1~9\ & VCC)) # (!\U1|select_yShift\(5) & (!\U1|Add1~9\)))) # (!\U1|select_yShift\(6) & ((\U1|select_yShift\(5) & (!\U1|Add1~9\)) # (!\U1|select_yShift\(5) & ((\U1|Add1~9\) # 
-- (GND)))))
-- \U1|Add1~11\ = CARRY((\U1|select_yShift\(6) & (!\U1|select_yShift\(5) & !\U1|Add1~9\)) # (!\U1|select_yShift\(6) & ((!\U1|Add1~9\) # (!\U1|select_yShift\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(6),
	datab => \U1|select_yShift\(5),
	datad => VCC,
	cin => \U1|Add1~9\,
	combout => \U1|Add1~10_combout\,
	cout => \U1|Add1~11\);

-- Location: LCCOMB_X47_Y11_N14
\U1|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~12_combout\ = ((\U1|select_yShift\(6) $ (\U1|select_yShift\(7) $ (!\U1|Add1~11\)))) # (GND)
-- \U1|Add1~13\ = CARRY((\U1|select_yShift\(6) & ((\U1|select_yShift\(7)) # (!\U1|Add1~11\))) # (!\U1|select_yShift\(6) & (\U1|select_yShift\(7) & !\U1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(6),
	datab => \U1|select_yShift\(7),
	datad => VCC,
	cin => \U1|Add1~11\,
	combout => \U1|Add1~12_combout\,
	cout => \U1|Add1~13\);

-- Location: LCCOMB_X47_Y11_N16
\U1|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~14_combout\ = (\U1|select_yShift\(8) & ((\U1|select_yShift\(7) & (\U1|Add1~13\ & VCC)) # (!\U1|select_yShift\(7) & (!\U1|Add1~13\)))) # (!\U1|select_yShift\(8) & ((\U1|select_yShift\(7) & (!\U1|Add1~13\)) # (!\U1|select_yShift\(7) & 
-- ((\U1|Add1~13\) # (GND)))))
-- \U1|Add1~15\ = CARRY((\U1|select_yShift\(8) & (!\U1|select_yShift\(7) & !\U1|Add1~13\)) # (!\U1|select_yShift\(8) & ((!\U1|Add1~13\) # (!\U1|select_yShift\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(8),
	datab => \U1|select_yShift\(7),
	datad => VCC,
	cin => \U1|Add1~13\,
	combout => \U1|Add1~14_combout\,
	cout => \U1|Add1~15\);

-- Location: LCCOMB_X47_Y11_N18
\U1|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~16_combout\ = ((\U1|select_yShift\(8) $ (\U1|select_yShift\(9) $ (!\U1|Add1~15\)))) # (GND)
-- \U1|Add1~17\ = CARRY((\U1|select_yShift\(8) & ((\U1|select_yShift\(9)) # (!\U1|Add1~15\))) # (!\U1|select_yShift\(8) & (\U1|select_yShift\(9) & !\U1|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(8),
	datab => \U1|select_yShift\(9),
	datad => VCC,
	cin => \U1|Add1~15\,
	combout => \U1|Add1~16_combout\,
	cout => \U1|Add1~17\);

-- Location: LCCOMB_X47_Y11_N20
\U1|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~18_combout\ = (\U1|select_yShift\(10) & ((\U1|select_yShift\(9) & (\U1|Add1~17\ & VCC)) # (!\U1|select_yShift\(9) & (!\U1|Add1~17\)))) # (!\U1|select_yShift\(10) & ((\U1|select_yShift\(9) & (!\U1|Add1~17\)) # (!\U1|select_yShift\(9) & 
-- ((\U1|Add1~17\) # (GND)))))
-- \U1|Add1~19\ = CARRY((\U1|select_yShift\(10) & (!\U1|select_yShift\(9) & !\U1|Add1~17\)) # (!\U1|select_yShift\(10) & ((!\U1|Add1~17\) # (!\U1|select_yShift\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(10),
	datab => \U1|select_yShift\(9),
	datad => VCC,
	cin => \U1|Add1~17\,
	combout => \U1|Add1~18_combout\,
	cout => \U1|Add1~19\);

-- Location: LCCOMB_X47_Y11_N22
\U1|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~20_combout\ = ((\U1|select_yShift\(10) $ (\U1|select_yShift\(11) $ (!\U1|Add1~19\)))) # (GND)
-- \U1|Add1~21\ = CARRY((\U1|select_yShift\(10) & ((\U1|select_yShift\(11)) # (!\U1|Add1~19\))) # (!\U1|select_yShift\(10) & (\U1|select_yShift\(11) & !\U1|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(10),
	datab => \U1|select_yShift\(11),
	datad => VCC,
	cin => \U1|Add1~19\,
	combout => \U1|Add1~20_combout\,
	cout => \U1|Add1~21\);

-- Location: LCCOMB_X47_Y11_N24
\U1|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~22_combout\ = (\U1|select_yShift\(11) & ((\U1|select_yShift\(12) & (\U1|Add1~21\ & VCC)) # (!\U1|select_yShift\(12) & (!\U1|Add1~21\)))) # (!\U1|select_yShift\(11) & ((\U1|select_yShift\(12) & (!\U1|Add1~21\)) # (!\U1|select_yShift\(12) & 
-- ((\U1|Add1~21\) # (GND)))))
-- \U1|Add1~23\ = CARRY((\U1|select_yShift\(11) & (!\U1|select_yShift\(12) & !\U1|Add1~21\)) # (!\U1|select_yShift\(11) & ((!\U1|Add1~21\) # (!\U1|select_yShift\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(11),
	datab => \U1|select_yShift\(12),
	datad => VCC,
	cin => \U1|Add1~21\,
	combout => \U1|Add1~22_combout\,
	cout => \U1|Add1~23\);

-- Location: LCCOMB_X47_Y11_N26
\U1|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~24_combout\ = ((\U1|select_yShift\(13) $ (\U1|select_yShift\(12) $ (!\U1|Add1~23\)))) # (GND)
-- \U1|Add1~25\ = CARRY((\U1|select_yShift\(13) & ((\U1|select_yShift\(12)) # (!\U1|Add1~23\))) # (!\U1|select_yShift\(13) & (\U1|select_yShift\(12) & !\U1|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(13),
	datab => \U1|select_yShift\(12),
	datad => VCC,
	cin => \U1|Add1~23\,
	combout => \U1|Add1~24_combout\,
	cout => \U1|Add1~25\);

-- Location: LCCOMB_X47_Y11_N28
\U1|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~26_combout\ = (\U1|select_yShift\(13) & ((\U1|select_yShift\(14) & (\U1|Add1~25\ & VCC)) # (!\U1|select_yShift\(14) & (!\U1|Add1~25\)))) # (!\U1|select_yShift\(13) & ((\U1|select_yShift\(14) & (!\U1|Add1~25\)) # (!\U1|select_yShift\(14) & 
-- ((\U1|Add1~25\) # (GND)))))
-- \U1|Add1~27\ = CARRY((\U1|select_yShift\(13) & (!\U1|select_yShift\(14) & !\U1|Add1~25\)) # (!\U1|select_yShift\(13) & ((!\U1|Add1~25\) # (!\U1|select_yShift\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(13),
	datab => \U1|select_yShift\(14),
	datad => VCC,
	cin => \U1|Add1~25\,
	combout => \U1|Add1~26_combout\,
	cout => \U1|Add1~27\);

-- Location: LCCOMB_X47_Y11_N30
\U1|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~28_combout\ = ((\U1|select_yShift\(15) $ (\U1|select_yShift\(14) $ (!\U1|Add1~27\)))) # (GND)
-- \U1|Add1~29\ = CARRY((\U1|select_yShift\(15) & ((\U1|select_yShift\(14)) # (!\U1|Add1~27\))) # (!\U1|select_yShift\(15) & (\U1|select_yShift\(14) & !\U1|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(15),
	datab => \U1|select_yShift\(14),
	datad => VCC,
	cin => \U1|Add1~27\,
	combout => \U1|Add1~28_combout\,
	cout => \U1|Add1~29\);

-- Location: LCCOMB_X47_Y10_N0
\U1|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~30_combout\ = (\U1|select_yShift\(16) & ((\U1|select_yShift\(15) & (\U1|Add1~29\ & VCC)) # (!\U1|select_yShift\(15) & (!\U1|Add1~29\)))) # (!\U1|select_yShift\(16) & ((\U1|select_yShift\(15) & (!\U1|Add1~29\)) # (!\U1|select_yShift\(15) & 
-- ((\U1|Add1~29\) # (GND)))))
-- \U1|Add1~31\ = CARRY((\U1|select_yShift\(16) & (!\U1|select_yShift\(15) & !\U1|Add1~29\)) # (!\U1|select_yShift\(16) & ((!\U1|Add1~29\) # (!\U1|select_yShift\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(16),
	datab => \U1|select_yShift\(15),
	datad => VCC,
	cin => \U1|Add1~29\,
	combout => \U1|Add1~30_combout\,
	cout => \U1|Add1~31\);

-- Location: LCCOMB_X46_Y11_N8
\U1|index[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[4]~40_combout\ = ((\U1|select_xShift\(4) $ (\U1|Add1~6_combout\ $ (!\U1|index[3]~39\)))) # (GND)
-- \U1|index[4]~41\ = CARRY((\U1|select_xShift\(4) & ((\U1|Add1~6_combout\) # (!\U1|index[3]~39\))) # (!\U1|select_xShift\(4) & (\U1|Add1~6_combout\ & !\U1|index[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(4),
	datab => \U1|Add1~6_combout\,
	datad => VCC,
	cin => \U1|index[3]~39\,
	combout => \U1|index[4]~40_combout\,
	cout => \U1|index[4]~41\);

-- Location: LCCOMB_X46_Y11_N10
\U1|index[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[5]~42_combout\ = (\U1|select_xShift\(5) & ((\U1|Add1~8_combout\ & (\U1|index[4]~41\ & VCC)) # (!\U1|Add1~8_combout\ & (!\U1|index[4]~41\)))) # (!\U1|select_xShift\(5) & ((\U1|Add1~8_combout\ & (!\U1|index[4]~41\)) # (!\U1|Add1~8_combout\ & 
-- ((\U1|index[4]~41\) # (GND)))))
-- \U1|index[5]~43\ = CARRY((\U1|select_xShift\(5) & (!\U1|Add1~8_combout\ & !\U1|index[4]~41\)) # (!\U1|select_xShift\(5) & ((!\U1|index[4]~41\) # (!\U1|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(5),
	datab => \U1|Add1~8_combout\,
	datad => VCC,
	cin => \U1|index[4]~41\,
	combout => \U1|index[5]~42_combout\,
	cout => \U1|index[5]~43\);

-- Location: LCCOMB_X46_Y11_N12
\U1|index[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[6]~44_combout\ = ((\U1|select_xShift\(6) $ (\U1|Add1~10_combout\ $ (!\U1|index[5]~43\)))) # (GND)
-- \U1|index[6]~45\ = CARRY((\U1|select_xShift\(6) & ((\U1|Add1~10_combout\) # (!\U1|index[5]~43\))) # (!\U1|select_xShift\(6) & (\U1|Add1~10_combout\ & !\U1|index[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(6),
	datab => \U1|Add1~10_combout\,
	datad => VCC,
	cin => \U1|index[5]~43\,
	combout => \U1|index[6]~44_combout\,
	cout => \U1|index[6]~45\);

-- Location: LCCOMB_X46_Y11_N14
\U1|index[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[7]~46_combout\ = (\U1|select_xShift\(7) & ((\U1|Add1~12_combout\ & (\U1|index[6]~45\ & VCC)) # (!\U1|Add1~12_combout\ & (!\U1|index[6]~45\)))) # (!\U1|select_xShift\(7) & ((\U1|Add1~12_combout\ & (!\U1|index[6]~45\)) # (!\U1|Add1~12_combout\ & 
-- ((\U1|index[6]~45\) # (GND)))))
-- \U1|index[7]~47\ = CARRY((\U1|select_xShift\(7) & (!\U1|Add1~12_combout\ & !\U1|index[6]~45\)) # (!\U1|select_xShift\(7) & ((!\U1|index[6]~45\) # (!\U1|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(7),
	datab => \U1|Add1~12_combout\,
	datad => VCC,
	cin => \U1|index[6]~45\,
	combout => \U1|index[7]~46_combout\,
	cout => \U1|index[7]~47\);

-- Location: LCCOMB_X46_Y11_N16
\U1|index[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[8]~48_combout\ = ((\U1|select_xShift\(8) $ (\U1|Add1~14_combout\ $ (!\U1|index[7]~47\)))) # (GND)
-- \U1|index[8]~49\ = CARRY((\U1|select_xShift\(8) & ((\U1|Add1~14_combout\) # (!\U1|index[7]~47\))) # (!\U1|select_xShift\(8) & (\U1|Add1~14_combout\ & !\U1|index[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(8),
	datab => \U1|Add1~14_combout\,
	datad => VCC,
	cin => \U1|index[7]~47\,
	combout => \U1|index[8]~48_combout\,
	cout => \U1|index[8]~49\);

-- Location: LCCOMB_X46_Y11_N18
\U1|index[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[9]~50_combout\ = (\U1|select_xShift\(9) & ((\U1|Add1~16_combout\ & (\U1|index[8]~49\ & VCC)) # (!\U1|Add1~16_combout\ & (!\U1|index[8]~49\)))) # (!\U1|select_xShift\(9) & ((\U1|Add1~16_combout\ & (!\U1|index[8]~49\)) # (!\U1|Add1~16_combout\ & 
-- ((\U1|index[8]~49\) # (GND)))))
-- \U1|index[9]~51\ = CARRY((\U1|select_xShift\(9) & (!\U1|Add1~16_combout\ & !\U1|index[8]~49\)) # (!\U1|select_xShift\(9) & ((!\U1|index[8]~49\) # (!\U1|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(9),
	datab => \U1|Add1~16_combout\,
	datad => VCC,
	cin => \U1|index[8]~49\,
	combout => \U1|index[9]~50_combout\,
	cout => \U1|index[9]~51\);

-- Location: LCCOMB_X46_Y11_N20
\U1|index[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[10]~52_combout\ = ((\U1|Add1~18_combout\ $ (\U1|select_xShift\(10) $ (!\U1|index[9]~51\)))) # (GND)
-- \U1|index[10]~53\ = CARRY((\U1|Add1~18_combout\ & ((\U1|select_xShift\(10)) # (!\U1|index[9]~51\))) # (!\U1|Add1~18_combout\ & (\U1|select_xShift\(10) & !\U1|index[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~18_combout\,
	datab => \U1|select_xShift\(10),
	datad => VCC,
	cin => \U1|index[9]~51\,
	combout => \U1|index[10]~52_combout\,
	cout => \U1|index[10]~53\);

-- Location: LCCOMB_X46_Y11_N22
\U1|index[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[11]~54_combout\ = (\U1|select_xShift\(11) & ((\U1|Add1~20_combout\ & (\U1|index[10]~53\ & VCC)) # (!\U1|Add1~20_combout\ & (!\U1|index[10]~53\)))) # (!\U1|select_xShift\(11) & ((\U1|Add1~20_combout\ & (!\U1|index[10]~53\)) # 
-- (!\U1|Add1~20_combout\ & ((\U1|index[10]~53\) # (GND)))))
-- \U1|index[11]~55\ = CARRY((\U1|select_xShift\(11) & (!\U1|Add1~20_combout\ & !\U1|index[10]~53\)) # (!\U1|select_xShift\(11) & ((!\U1|index[10]~53\) # (!\U1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(11),
	datab => \U1|Add1~20_combout\,
	datad => VCC,
	cin => \U1|index[10]~53\,
	combout => \U1|index[11]~54_combout\,
	cout => \U1|index[11]~55\);

-- Location: LCCOMB_X46_Y11_N24
\U1|index[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[12]~56_combout\ = ((\U1|select_xShift\(12) $ (\U1|Add1~22_combout\ $ (!\U1|index[11]~55\)))) # (GND)
-- \U1|index[12]~57\ = CARRY((\U1|select_xShift\(12) & ((\U1|Add1~22_combout\) # (!\U1|index[11]~55\))) # (!\U1|select_xShift\(12) & (\U1|Add1~22_combout\ & !\U1|index[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(12),
	datab => \U1|Add1~22_combout\,
	datad => VCC,
	cin => \U1|index[11]~55\,
	combout => \U1|index[12]~56_combout\,
	cout => \U1|index[12]~57\);

-- Location: LCCOMB_X46_Y11_N26
\U1|index[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[13]~58_combout\ = (\U1|select_xShift\(13) & ((\U1|Add1~24_combout\ & (\U1|index[12]~57\ & VCC)) # (!\U1|Add1~24_combout\ & (!\U1|index[12]~57\)))) # (!\U1|select_xShift\(13) & ((\U1|Add1~24_combout\ & (!\U1|index[12]~57\)) # 
-- (!\U1|Add1~24_combout\ & ((\U1|index[12]~57\) # (GND)))))
-- \U1|index[13]~59\ = CARRY((\U1|select_xShift\(13) & (!\U1|Add1~24_combout\ & !\U1|index[12]~57\)) # (!\U1|select_xShift\(13) & ((!\U1|index[12]~57\) # (!\U1|Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(13),
	datab => \U1|Add1~24_combout\,
	datad => VCC,
	cin => \U1|index[12]~57\,
	combout => \U1|index[13]~58_combout\,
	cout => \U1|index[13]~59\);

-- Location: LCCOMB_X46_Y11_N28
\U1|index[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[14]~60_combout\ = ((\U1|select_xShift\(14) $ (\U1|Add1~26_combout\ $ (!\U1|index[13]~59\)))) # (GND)
-- \U1|index[14]~61\ = CARRY((\U1|select_xShift\(14) & ((\U1|Add1~26_combout\) # (!\U1|index[13]~59\))) # (!\U1|select_xShift\(14) & (\U1|Add1~26_combout\ & !\U1|index[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(14),
	datab => \U1|Add1~26_combout\,
	datad => VCC,
	cin => \U1|index[13]~59\,
	combout => \U1|index[14]~60_combout\,
	cout => \U1|index[14]~61\);

-- Location: LCCOMB_X46_Y11_N30
\U1|index[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[15]~62_combout\ = (\U1|Add1~28_combout\ & ((\U1|select_xShift\(15) & (\U1|index[14]~61\ & VCC)) # (!\U1|select_xShift\(15) & (!\U1|index[14]~61\)))) # (!\U1|Add1~28_combout\ & ((\U1|select_xShift\(15) & (!\U1|index[14]~61\)) # 
-- (!\U1|select_xShift\(15) & ((\U1|index[14]~61\) # (GND)))))
-- \U1|index[15]~63\ = CARRY((\U1|Add1~28_combout\ & (!\U1|select_xShift\(15) & !\U1|index[14]~61\)) # (!\U1|Add1~28_combout\ & ((!\U1|index[14]~61\) # (!\U1|select_xShift\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~28_combout\,
	datab => \U1|select_xShift\(15),
	datad => VCC,
	cin => \U1|index[14]~61\,
	combout => \U1|index[15]~62_combout\,
	cout => \U1|index[15]~63\);

-- Location: LCCOMB_X46_Y10_N0
\U1|index[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[16]~64_combout\ = ((\U1|select_xShift\(16) $ (\U1|Add1~30_combout\ $ (!\U1|index[15]~63\)))) # (GND)
-- \U1|index[16]~65\ = CARRY((\U1|select_xShift\(16) & ((\U1|Add1~30_combout\) # (!\U1|index[15]~63\))) # (!\U1|select_xShift\(16) & (\U1|Add1~30_combout\ & !\U1|index[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(16),
	datab => \U1|Add1~30_combout\,
	datad => VCC,
	cin => \U1|index[15]~63\,
	combout => \U1|index[16]~64_combout\,
	cout => \U1|index[16]~65\);

-- Location: FF_X49_Y10_N27
\U1|index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[16]~64_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(16));

-- Location: LCCOMB_X47_Y10_N2
\U1|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~32_combout\ = ((\U1|select_yShift\(16) $ (\U1|select_yShift\(17) $ (!\U1|Add1~31\)))) # (GND)
-- \U1|Add1~33\ = CARRY((\U1|select_yShift\(16) & ((\U1|select_yShift\(17)) # (!\U1|Add1~31\))) # (!\U1|select_yShift\(16) & (\U1|select_yShift\(17) & !\U1|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(16),
	datab => \U1|select_yShift\(17),
	datad => VCC,
	cin => \U1|Add1~31\,
	combout => \U1|Add1~32_combout\,
	cout => \U1|Add1~33\);

-- Location: LCCOMB_X47_Y10_N4
\U1|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~34_combout\ = (\U1|select_yShift\(18) & ((\U1|select_yShift\(17) & (\U1|Add1~33\ & VCC)) # (!\U1|select_yShift\(17) & (!\U1|Add1~33\)))) # (!\U1|select_yShift\(18) & ((\U1|select_yShift\(17) & (!\U1|Add1~33\)) # (!\U1|select_yShift\(17) & 
-- ((\U1|Add1~33\) # (GND)))))
-- \U1|Add1~35\ = CARRY((\U1|select_yShift\(18) & (!\U1|select_yShift\(17) & !\U1|Add1~33\)) # (!\U1|select_yShift\(18) & ((!\U1|Add1~33\) # (!\U1|select_yShift\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(18),
	datab => \U1|select_yShift\(17),
	datad => VCC,
	cin => \U1|Add1~33\,
	combout => \U1|Add1~34_combout\,
	cout => \U1|Add1~35\);

-- Location: LCCOMB_X46_Y10_N2
\U1|index[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[17]~66_combout\ = (\U1|Add1~32_combout\ & ((\U1|select_xShift\(17) & (\U1|index[16]~65\ & VCC)) # (!\U1|select_xShift\(17) & (!\U1|index[16]~65\)))) # (!\U1|Add1~32_combout\ & ((\U1|select_xShift\(17) & (!\U1|index[16]~65\)) # 
-- (!\U1|select_xShift\(17) & ((\U1|index[16]~65\) # (GND)))))
-- \U1|index[17]~67\ = CARRY((\U1|Add1~32_combout\ & (!\U1|select_xShift\(17) & !\U1|index[16]~65\)) # (!\U1|Add1~32_combout\ & ((!\U1|index[16]~65\) # (!\U1|select_xShift\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~32_combout\,
	datab => \U1|select_xShift\(17),
	datad => VCC,
	cin => \U1|index[16]~65\,
	combout => \U1|index[17]~66_combout\,
	cout => \U1|index[17]~67\);

-- Location: LCCOMB_X46_Y10_N4
\U1|index[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[18]~68_combout\ = ((\U1|Add1~34_combout\ $ (\U1|select_xShift\(18) $ (!\U1|index[17]~67\)))) # (GND)
-- \U1|index[18]~69\ = CARRY((\U1|Add1~34_combout\ & ((\U1|select_xShift\(18)) # (!\U1|index[17]~67\))) # (!\U1|Add1~34_combout\ & (\U1|select_xShift\(18) & !\U1|index[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~34_combout\,
	datab => \U1|select_xShift\(18),
	datad => VCC,
	cin => \U1|index[17]~67\,
	combout => \U1|index[18]~68_combout\,
	cout => \U1|index[18]~69\);

-- Location: FF_X49_Y10_N3
\U1|index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[18]~68_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(18));

-- Location: FF_X49_Y10_N9
\U1|index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[17]~66_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(17));

-- Location: LCCOMB_X47_Y10_N6
\U1|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~36_combout\ = ((\U1|select_yShift\(18) $ (\U1|select_yShift\(19) $ (!\U1|Add1~35\)))) # (GND)
-- \U1|Add1~37\ = CARRY((\U1|select_yShift\(18) & ((\U1|select_yShift\(19)) # (!\U1|Add1~35\))) # (!\U1|select_yShift\(18) & (\U1|select_yShift\(19) & !\U1|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(18),
	datab => \U1|select_yShift\(19),
	datad => VCC,
	cin => \U1|Add1~35\,
	combout => \U1|Add1~36_combout\,
	cout => \U1|Add1~37\);

-- Location: LCCOMB_X46_Y10_N6
\U1|index[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[19]~70_combout\ = (\U1|Add1~36_combout\ & ((\U1|select_xShift\(19) & (\U1|index[18]~69\ & VCC)) # (!\U1|select_xShift\(19) & (!\U1|index[18]~69\)))) # (!\U1|Add1~36_combout\ & ((\U1|select_xShift\(19) & (!\U1|index[18]~69\)) # 
-- (!\U1|select_xShift\(19) & ((\U1|index[18]~69\) # (GND)))))
-- \U1|index[19]~71\ = CARRY((\U1|Add1~36_combout\ & (!\U1|select_xShift\(19) & !\U1|index[18]~69\)) # (!\U1|Add1~36_combout\ & ((!\U1|index[18]~69\) # (!\U1|select_xShift\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~36_combout\,
	datab => \U1|select_xShift\(19),
	datad => VCC,
	cin => \U1|index[18]~69\,
	combout => \U1|index[19]~70_combout\,
	cout => \U1|index[19]~71\);

-- Location: FF_X49_Y10_N13
\U1|index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[19]~70_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(19));

-- Location: LCCOMB_X49_Y10_N8
\U1|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~3_combout\ = (!\U1|index\(16) & (!\U1|index\(18) & (!\U1|index\(17) & !\U1|index\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(16),
	datab => \U1|index\(18),
	datac => \U1|index\(17),
	datad => \U1|index\(19),
	combout => \U1|Equal1~3_combout\);

-- Location: FF_X49_Y10_N23
\U1|index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[14]~60_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(14));

-- Location: FF_X49_Y10_N15
\U1|index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[12]~56_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(12));

-- Location: FF_X49_Y10_N1
\U1|index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[13]~58_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(13));

-- Location: FF_X49_Y10_N25
\U1|index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[15]~62_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(15));

-- Location: LCCOMB_X49_Y10_N0
\U1|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~2_combout\ = (!\U1|index\(14) & (!\U1|index\(12) & (!\U1|index\(13) & !\U1|index\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(14),
	datab => \U1|index\(12),
	datac => \U1|index\(13),
	datad => \U1|index\(15),
	combout => \U1|Equal1~2_combout\);

-- Location: FF_X49_Y10_N7
\U1|index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[10]~52_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(10));

-- Location: FF_X49_Y10_N21
\U1|index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[11]~54_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(11));

-- Location: FF_X49_Y10_N5
\U1|index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[9]~50_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(9));

-- Location: FF_X49_Y10_N19
\U1|index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[8]~48_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(8));

-- Location: LCCOMB_X49_Y10_N4
\U1|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~1_combout\ = (!\U1|index\(10) & (!\U1|index\(11) & (!\U1|index\(9) & !\U1|index\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(10),
	datab => \U1|index\(11),
	datac => \U1|index\(9),
	datad => \U1|index\(8),
	combout => \U1|Equal1~1_combout\);

-- Location: FF_X49_Y10_N31
\U1|index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[6]~44_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(6));

-- Location: FF_X45_Y10_N9
\U1|index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[4]~40_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(4));

-- Location: FF_X49_Y10_N29
\U1|index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[5]~42_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(5));

-- Location: FF_X49_Y10_N17
\U1|index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[7]~46_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(7));

-- Location: LCCOMB_X49_Y10_N28
\U1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~0_combout\ = (!\U1|index\(6) & (!\U1|index\(4) & (!\U1|index\(5) & !\U1|index\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(6),
	datab => \U1|index\(4),
	datac => \U1|index\(5),
	datad => \U1|index\(7),
	combout => \U1|Equal1~0_combout\);

-- Location: LCCOMB_X49_Y10_N10
\U1|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~4_combout\ = (\U1|Equal1~3_combout\ & (\U1|Equal1~2_combout\ & (\U1|Equal1~1_combout\ & \U1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~3_combout\,
	datab => \U1|Equal1~2_combout\,
	datac => \U1|Equal1~1_combout\,
	datad => \U1|Equal1~0_combout\,
	combout => \U1|Equal1~4_combout\);

-- Location: LCCOMB_X47_Y10_N8
\U1|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~38_combout\ = (\U1|select_yShift\(20) & ((\U1|select_yShift\(19) & (\U1|Add1~37\ & VCC)) # (!\U1|select_yShift\(19) & (!\U1|Add1~37\)))) # (!\U1|select_yShift\(20) & ((\U1|select_yShift\(19) & (!\U1|Add1~37\)) # (!\U1|select_yShift\(19) & 
-- ((\U1|Add1~37\) # (GND)))))
-- \U1|Add1~39\ = CARRY((\U1|select_yShift\(20) & (!\U1|select_yShift\(19) & !\U1|Add1~37\)) # (!\U1|select_yShift\(20) & ((!\U1|Add1~37\) # (!\U1|select_yShift\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(20),
	datab => \U1|select_yShift\(19),
	datad => VCC,
	cin => \U1|Add1~37\,
	combout => \U1|Add1~38_combout\,
	cout => \U1|Add1~39\);

-- Location: LCCOMB_X47_Y10_N10
\U1|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~40_combout\ = ((\U1|select_yShift\(20) $ (\U1|select_yShift\(21) $ (!\U1|Add1~39\)))) # (GND)
-- \U1|Add1~41\ = CARRY((\U1|select_yShift\(20) & ((\U1|select_yShift\(21)) # (!\U1|Add1~39\))) # (!\U1|select_yShift\(20) & (\U1|select_yShift\(21) & !\U1|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(20),
	datab => \U1|select_yShift\(21),
	datad => VCC,
	cin => \U1|Add1~39\,
	combout => \U1|Add1~40_combout\,
	cout => \U1|Add1~41\);

-- Location: LCCOMB_X47_Y10_N12
\U1|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~42_combout\ = (\U1|select_yShift\(22) & ((\U1|select_yShift\(21) & (\U1|Add1~41\ & VCC)) # (!\U1|select_yShift\(21) & (!\U1|Add1~41\)))) # (!\U1|select_yShift\(22) & ((\U1|select_yShift\(21) & (!\U1|Add1~41\)) # (!\U1|select_yShift\(21) & 
-- ((\U1|Add1~41\) # (GND)))))
-- \U1|Add1~43\ = CARRY((\U1|select_yShift\(22) & (!\U1|select_yShift\(21) & !\U1|Add1~41\)) # (!\U1|select_yShift\(22) & ((!\U1|Add1~41\) # (!\U1|select_yShift\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(22),
	datab => \U1|select_yShift\(21),
	datad => VCC,
	cin => \U1|Add1~41\,
	combout => \U1|Add1~42_combout\,
	cout => \U1|Add1~43\);

-- Location: LCCOMB_X46_Y10_N8
\U1|index[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[20]~72_combout\ = ((\U1|select_xShift\(20) $ (\U1|Add1~38_combout\ $ (!\U1|index[19]~71\)))) # (GND)
-- \U1|index[20]~73\ = CARRY((\U1|select_xShift\(20) & ((\U1|Add1~38_combout\) # (!\U1|index[19]~71\))) # (!\U1|select_xShift\(20) & (\U1|Add1~38_combout\ & !\U1|index[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(20),
	datab => \U1|Add1~38_combout\,
	datad => VCC,
	cin => \U1|index[19]~71\,
	combout => \U1|index[20]~72_combout\,
	cout => \U1|index[20]~73\);

-- Location: LCCOMB_X46_Y10_N10
\U1|index[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[21]~74_combout\ = (\U1|select_xShift\(21) & ((\U1|Add1~40_combout\ & (\U1|index[20]~73\ & VCC)) # (!\U1|Add1~40_combout\ & (!\U1|index[20]~73\)))) # (!\U1|select_xShift\(21) & ((\U1|Add1~40_combout\ & (!\U1|index[20]~73\)) # 
-- (!\U1|Add1~40_combout\ & ((\U1|index[20]~73\) # (GND)))))
-- \U1|index[21]~75\ = CARRY((\U1|select_xShift\(21) & (!\U1|Add1~40_combout\ & !\U1|index[20]~73\)) # (!\U1|select_xShift\(21) & ((!\U1|index[20]~73\) # (!\U1|Add1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(21),
	datab => \U1|Add1~40_combout\,
	datad => VCC,
	cin => \U1|index[20]~73\,
	combout => \U1|index[21]~74_combout\,
	cout => \U1|index[21]~75\);

-- Location: LCCOMB_X46_Y10_N12
\U1|index[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[22]~76_combout\ = ((\U1|select_xShift\(22) $ (\U1|Add1~42_combout\ $ (!\U1|index[21]~75\)))) # (GND)
-- \U1|index[22]~77\ = CARRY((\U1|select_xShift\(22) & ((\U1|Add1~42_combout\) # (!\U1|index[21]~75\))) # (!\U1|select_xShift\(22) & (\U1|Add1~42_combout\ & !\U1|index[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(22),
	datab => \U1|Add1~42_combout\,
	datad => VCC,
	cin => \U1|index[21]~75\,
	combout => \U1|index[22]~76_combout\,
	cout => \U1|index[22]~77\);

-- Location: FF_X45_Y10_N27
\U1|index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[22]~76_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(22));

-- Location: LCCOMB_X47_Y10_N14
\U1|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~44_combout\ = ((\U1|select_yShift\(23) $ (\U1|select_yShift\(22) $ (!\U1|Add1~43\)))) # (GND)
-- \U1|Add1~45\ = CARRY((\U1|select_yShift\(23) & ((\U1|select_yShift\(22)) # (!\U1|Add1~43\))) # (!\U1|select_yShift\(23) & (\U1|select_yShift\(22) & !\U1|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(23),
	datab => \U1|select_yShift\(22),
	datad => VCC,
	cin => \U1|Add1~43\,
	combout => \U1|Add1~44_combout\,
	cout => \U1|Add1~45\);

-- Location: LCCOMB_X46_Y10_N14
\U1|index[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[23]~78_combout\ = (\U1|select_xShift\(23) & ((\U1|Add1~44_combout\ & (\U1|index[22]~77\ & VCC)) # (!\U1|Add1~44_combout\ & (!\U1|index[22]~77\)))) # (!\U1|select_xShift\(23) & ((\U1|Add1~44_combout\ & (!\U1|index[22]~77\)) # 
-- (!\U1|Add1~44_combout\ & ((\U1|index[22]~77\) # (GND)))))
-- \U1|index[23]~79\ = CARRY((\U1|select_xShift\(23) & (!\U1|Add1~44_combout\ & !\U1|index[22]~77\)) # (!\U1|select_xShift\(23) & ((!\U1|index[22]~77\) # (!\U1|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(23),
	datab => \U1|Add1~44_combout\,
	datad => VCC,
	cin => \U1|index[22]~77\,
	combout => \U1|index[23]~78_combout\,
	cout => \U1|index[23]~79\);

-- Location: FF_X45_Y10_N21
\U1|index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[23]~78_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(23));

-- Location: FF_X45_Y10_N17
\U1|index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[21]~74_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(21));

-- Location: FF_X45_Y10_N3
\U1|index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[20]~72_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(20));

-- Location: LCCOMB_X45_Y10_N16
\U1|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~5_combout\ = (!\U1|index\(22) & (!\U1|index\(23) & (!\U1|index\(21) & !\U1|index\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(22),
	datab => \U1|index\(23),
	datac => \U1|index\(21),
	datad => \U1|index\(20),
	combout => \U1|Equal1~5_combout\);

-- Location: LCCOMB_X47_Y10_N16
\U1|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~46_combout\ = (\U1|select_yShift\(23) & ((\U1|select_yShift\(24) & (\U1|Add1~45\ & VCC)) # (!\U1|select_yShift\(24) & (!\U1|Add1~45\)))) # (!\U1|select_yShift\(23) & ((\U1|select_yShift\(24) & (!\U1|Add1~45\)) # (!\U1|select_yShift\(24) & 
-- ((\U1|Add1~45\) # (GND)))))
-- \U1|Add1~47\ = CARRY((\U1|select_yShift\(23) & (!\U1|select_yShift\(24) & !\U1|Add1~45\)) # (!\U1|select_yShift\(23) & ((!\U1|Add1~45\) # (!\U1|select_yShift\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(23),
	datab => \U1|select_yShift\(24),
	datad => VCC,
	cin => \U1|Add1~45\,
	combout => \U1|Add1~46_combout\,
	cout => \U1|Add1~47\);

-- Location: LCCOMB_X47_Y10_N18
\U1|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~48_combout\ = ((\U1|select_yShift\(25) $ (\U1|select_yShift\(24) $ (!\U1|Add1~47\)))) # (GND)
-- \U1|Add1~49\ = CARRY((\U1|select_yShift\(25) & ((\U1|select_yShift\(24)) # (!\U1|Add1~47\))) # (!\U1|select_yShift\(25) & (\U1|select_yShift\(24) & !\U1|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(25),
	datab => \U1|select_yShift\(24),
	datad => VCC,
	cin => \U1|Add1~47\,
	combout => \U1|Add1~48_combout\,
	cout => \U1|Add1~49\);

-- Location: LCCOMB_X47_Y10_N20
\U1|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~50_combout\ = (\U1|select_yShift\(26) & ((\U1|select_yShift\(25) & (\U1|Add1~49\ & VCC)) # (!\U1|select_yShift\(25) & (!\U1|Add1~49\)))) # (!\U1|select_yShift\(26) & ((\U1|select_yShift\(25) & (!\U1|Add1~49\)) # (!\U1|select_yShift\(25) & 
-- ((\U1|Add1~49\) # (GND)))))
-- \U1|Add1~51\ = CARRY((\U1|select_yShift\(26) & (!\U1|select_yShift\(25) & !\U1|Add1~49\)) # (!\U1|select_yShift\(26) & ((!\U1|Add1~49\) # (!\U1|select_yShift\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(26),
	datab => \U1|select_yShift\(25),
	datad => VCC,
	cin => \U1|Add1~49\,
	combout => \U1|Add1~50_combout\,
	cout => \U1|Add1~51\);

-- Location: LCCOMB_X47_Y10_N22
\U1|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~52_combout\ = ((\U1|select_yShift\(26) $ (\U1|select_yShift\(27) $ (!\U1|Add1~51\)))) # (GND)
-- \U1|Add1~53\ = CARRY((\U1|select_yShift\(26) & ((\U1|select_yShift\(27)) # (!\U1|Add1~51\))) # (!\U1|select_yShift\(26) & (\U1|select_yShift\(27) & !\U1|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(26),
	datab => \U1|select_yShift\(27),
	datad => VCC,
	cin => \U1|Add1~51\,
	combout => \U1|Add1~52_combout\,
	cout => \U1|Add1~53\);

-- Location: LCCOMB_X47_Y10_N24
\U1|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~54_combout\ = (\U1|select_yShift\(27) & ((\U1|select_yShift\(28) & (\U1|Add1~53\ & VCC)) # (!\U1|select_yShift\(28) & (!\U1|Add1~53\)))) # (!\U1|select_yShift\(27) & ((\U1|select_yShift\(28) & (!\U1|Add1~53\)) # (!\U1|select_yShift\(28) & 
-- ((\U1|Add1~53\) # (GND)))))
-- \U1|Add1~55\ = CARRY((\U1|select_yShift\(27) & (!\U1|select_yShift\(28) & !\U1|Add1~53\)) # (!\U1|select_yShift\(27) & ((!\U1|Add1~53\) # (!\U1|select_yShift\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(27),
	datab => \U1|select_yShift\(28),
	datad => VCC,
	cin => \U1|Add1~53\,
	combout => \U1|Add1~54_combout\,
	cout => \U1|Add1~55\);

-- Location: LCCOMB_X47_Y10_N26
\U1|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~56_combout\ = ((\U1|select_yShift\(29) $ (\U1|select_yShift\(28) $ (!\U1|Add1~55\)))) # (GND)
-- \U1|Add1~57\ = CARRY((\U1|select_yShift\(29) & ((\U1|select_yShift\(28)) # (!\U1|Add1~55\))) # (!\U1|select_yShift\(29) & (\U1|select_yShift\(28) & !\U1|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(29),
	datab => \U1|select_yShift\(28),
	datad => VCC,
	cin => \U1|Add1~55\,
	combout => \U1|Add1~56_combout\,
	cout => \U1|Add1~57\);

-- Location: LCCOMB_X47_Y10_N28
\U1|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~58_combout\ = (\U1|select_yShift\(29) & ((\U1|select_yShift\(30) & (\U1|Add1~57\ & VCC)) # (!\U1|select_yShift\(30) & (!\U1|Add1~57\)))) # (!\U1|select_yShift\(29) & ((\U1|select_yShift\(30) & (!\U1|Add1~57\)) # (!\U1|select_yShift\(30) & 
-- ((\U1|Add1~57\) # (GND)))))
-- \U1|Add1~59\ = CARRY((\U1|select_yShift\(29) & (!\U1|select_yShift\(30) & !\U1|Add1~57\)) # (!\U1|select_yShift\(29) & ((!\U1|Add1~57\) # (!\U1|select_yShift\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_yShift\(29),
	datab => \U1|select_yShift\(30),
	datad => VCC,
	cin => \U1|Add1~57\,
	combout => \U1|Add1~58_combout\,
	cout => \U1|Add1~59\);

-- Location: LCCOMB_X46_Y10_N16
\U1|index[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[24]~80_combout\ = ((\U1|select_xShift\(24) $ (\U1|Add1~46_combout\ $ (!\U1|index[23]~79\)))) # (GND)
-- \U1|index[24]~81\ = CARRY((\U1|select_xShift\(24) & ((\U1|Add1~46_combout\) # (!\U1|index[23]~79\))) # (!\U1|select_xShift\(24) & (\U1|Add1~46_combout\ & !\U1|index[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(24),
	datab => \U1|Add1~46_combout\,
	datad => VCC,
	cin => \U1|index[23]~79\,
	combout => \U1|index[24]~80_combout\,
	cout => \U1|index[24]~81\);

-- Location: LCCOMB_X46_Y10_N18
\U1|index[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[25]~82_combout\ = (\U1|select_xShift\(25) & ((\U1|Add1~48_combout\ & (\U1|index[24]~81\ & VCC)) # (!\U1|Add1~48_combout\ & (!\U1|index[24]~81\)))) # (!\U1|select_xShift\(25) & ((\U1|Add1~48_combout\ & (!\U1|index[24]~81\)) # 
-- (!\U1|Add1~48_combout\ & ((\U1|index[24]~81\) # (GND)))))
-- \U1|index[25]~83\ = CARRY((\U1|select_xShift\(25) & (!\U1|Add1~48_combout\ & !\U1|index[24]~81\)) # (!\U1|select_xShift\(25) & ((!\U1|index[24]~81\) # (!\U1|Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(25),
	datab => \U1|Add1~48_combout\,
	datad => VCC,
	cin => \U1|index[24]~81\,
	combout => \U1|index[25]~82_combout\,
	cout => \U1|index[25]~83\);

-- Location: LCCOMB_X46_Y10_N20
\U1|index[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[26]~84_combout\ = ((\U1|Add1~50_combout\ $ (\U1|select_xShift\(26) $ (!\U1|index[25]~83\)))) # (GND)
-- \U1|index[26]~85\ = CARRY((\U1|Add1~50_combout\ & ((\U1|select_xShift\(26)) # (!\U1|index[25]~83\))) # (!\U1|Add1~50_combout\ & (\U1|select_xShift\(26) & !\U1|index[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~50_combout\,
	datab => \U1|select_xShift\(26),
	datad => VCC,
	cin => \U1|index[25]~83\,
	combout => \U1|index[26]~84_combout\,
	cout => \U1|index[26]~85\);

-- Location: LCCOMB_X46_Y10_N22
\U1|index[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[27]~86_combout\ = (\U1|select_xShift\(27) & ((\U1|Add1~52_combout\ & (\U1|index[26]~85\ & VCC)) # (!\U1|Add1~52_combout\ & (!\U1|index[26]~85\)))) # (!\U1|select_xShift\(27) & ((\U1|Add1~52_combout\ & (!\U1|index[26]~85\)) # 
-- (!\U1|Add1~52_combout\ & ((\U1|index[26]~85\) # (GND)))))
-- \U1|index[27]~87\ = CARRY((\U1|select_xShift\(27) & (!\U1|Add1~52_combout\ & !\U1|index[26]~85\)) # (!\U1|select_xShift\(27) & ((!\U1|index[26]~85\) # (!\U1|Add1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(27),
	datab => \U1|Add1~52_combout\,
	datad => VCC,
	cin => \U1|index[26]~85\,
	combout => \U1|index[27]~86_combout\,
	cout => \U1|index[27]~87\);

-- Location: LCCOMB_X46_Y10_N24
\U1|index[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[28]~88_combout\ = ((\U1|select_xShift\(28) $ (\U1|Add1~54_combout\ $ (!\U1|index[27]~87\)))) # (GND)
-- \U1|index[28]~89\ = CARRY((\U1|select_xShift\(28) & ((\U1|Add1~54_combout\) # (!\U1|index[27]~87\))) # (!\U1|select_xShift\(28) & (\U1|Add1~54_combout\ & !\U1|index[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(28),
	datab => \U1|Add1~54_combout\,
	datad => VCC,
	cin => \U1|index[27]~87\,
	combout => \U1|index[28]~88_combout\,
	cout => \U1|index[28]~89\);

-- Location: LCCOMB_X46_Y10_N26
\U1|index[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[29]~90_combout\ = (\U1|select_xShift\(29) & ((\U1|Add1~56_combout\ & (\U1|index[28]~89\ & VCC)) # (!\U1|Add1~56_combout\ & (!\U1|index[28]~89\)))) # (!\U1|select_xShift\(29) & ((\U1|Add1~56_combout\ & (!\U1|index[28]~89\)) # 
-- (!\U1|Add1~56_combout\ & ((\U1|index[28]~89\) # (GND)))))
-- \U1|index[29]~91\ = CARRY((\U1|select_xShift\(29) & (!\U1|Add1~56_combout\ & !\U1|index[28]~89\)) # (!\U1|select_xShift\(29) & ((!\U1|index[28]~89\) # (!\U1|Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(29),
	datab => \U1|Add1~56_combout\,
	datad => VCC,
	cin => \U1|index[28]~89\,
	combout => \U1|index[29]~90_combout\,
	cout => \U1|index[29]~91\);

-- Location: LCCOMB_X46_Y10_N28
\U1|index[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[30]~92_combout\ = ((\U1|select_xShift\(30) $ (\U1|Add1~58_combout\ $ (!\U1|index[29]~91\)))) # (GND)
-- \U1|index[30]~93\ = CARRY((\U1|select_xShift\(30) & ((\U1|Add1~58_combout\) # (!\U1|index[29]~91\))) # (!\U1|select_xShift\(30) & (\U1|Add1~58_combout\ & !\U1|index[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|select_xShift\(30),
	datab => \U1|Add1~58_combout\,
	datad => VCC,
	cin => \U1|index[29]~91\,
	combout => \U1|index[30]~92_combout\,
	cout => \U1|index[30]~93\);

-- Location: FF_X45_Y10_N11
\U1|index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[30]~92_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(30));

-- Location: FF_X45_Y10_N29
\U1|index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[29]~90_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(29));

-- Location: LCCOMB_X47_Y10_N30
\U1|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~60_combout\ = \U1|select_yShift\(30) $ (\U1|Add1~59\ $ (!\U1|select_yShift\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|select_yShift\(30),
	datad => \U1|select_yShift\(31),
	cin => \U1|Add1~59\,
	combout => \U1|Add1~60_combout\);

-- Location: LCCOMB_X46_Y10_N30
\U1|index[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|index[31]~94_combout\ = \U1|Add1~60_combout\ $ (\U1|select_xShift\(31) $ (\U1|index[30]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~60_combout\,
	datab => \U1|select_xShift\(31),
	cin => \U1|index[30]~93\,
	combout => \U1|index[31]~94_combout\);

-- Location: FF_X45_Y10_N5
\U1|index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[31]~94_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(31));

-- Location: FF_X45_Y10_N7
\U1|index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[28]~88_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(28));

-- Location: LCCOMB_X45_Y10_N4
\U1|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~7_combout\ = (!\U1|index\(30) & (!\U1|index\(29) & (!\U1|index\(31) & !\U1|index\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(30),
	datab => \U1|index\(29),
	datac => \U1|index\(31),
	datad => \U1|index\(28),
	combout => \U1|Equal1~7_combout\);

-- Location: FF_X45_Y10_N13
\U1|index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[27]~86_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(27));

-- Location: FF_X45_Y10_N15
\U1|index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[26]~84_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(26));

-- Location: FF_X45_Y10_N25
\U1|index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[25]~82_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(25));

-- Location: FF_X45_Y10_N19
\U1|index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[24]~80_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(24));

-- Location: LCCOMB_X45_Y10_N24
\U1|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~6_combout\ = (!\U1|index\(27) & (!\U1|index\(26) & (!\U1|index\(25) & !\U1|index\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(27),
	datab => \U1|index\(26),
	datac => \U1|index\(25),
	datad => \U1|index\(24),
	combout => \U1|Equal1~6_combout\);

-- Location: LCCOMB_X45_Y10_N22
\U1|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~8_combout\ = (\U1|Equal1~4_combout\ & (\U1|Equal1~5_combout\ & (\U1|Equal1~7_combout\ & \U1|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~4_combout\,
	datab => \U1|Equal1~5_combout\,
	datac => \U1|Equal1~7_combout\,
	datad => \U1|Equal1~6_combout\,
	combout => \U1|Equal1~8_combout\);

-- Location: FF_X43_Y7_N13
\U1|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[2]~36_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(2));

-- Location: FF_X43_Y7_N3
\U1|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[1]~34_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(1));

-- Location: LCCOMB_X43_Y7_N12
\U1|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~9_combout\ = (!\U1|index\(2) & !\U1|index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|index\(2),
	datad => \U1|index\(1),
	combout => \U1|Equal1~9_combout\);

-- Location: LCCOMB_X43_Y7_N20
\U1|WideNor0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideNor0~combout\ = ((\U1|index\(3) & ((\U1|index\(0)) # (!\U1|Equal1~9_combout\)))) # (!\U1|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(0),
	datab => \U1|index\(3),
	datac => \U1|Equal1~8_combout\,
	datad => \U1|Equal1~9_combout\,
	combout => \U1|WideNor0~combout\);

-- Location: FF_X43_Y7_N23
\U1|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	asdata => \U1|index[0]~32_combout\,
	sclr => \U1|WideNor0~combout\,
	sload => VCC,
	ena => \U1|p~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|index\(0));

-- Location: LCCOMB_X43_Y7_N8
\U1|Equal1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~11_combout\ = (!\U1|index\(0) & (!\U1|index\(3) & (\U1|Equal1~8_combout\ & \U1|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(0),
	datab => \U1|index\(3),
	datac => \U1|Equal1~8_combout\,
	datad => \U1|Equal1~9_combout\,
	combout => \U1|Equal1~11_combout\);

-- Location: LCCOMB_X40_Y6_N0
\U1|used[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|used[0]~26_combout\ = (\U1|used\(0)) # ((\U1|Equal1~11_combout\ & (\U1|Equal0~10_combout\ & \BUT1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~11_combout\,
	datab => \U1|Equal0~10_combout\,
	datac => \U1|used\(0),
	datad => \BUT1~input_o\,
	combout => \U1|used[0]~26_combout\);

-- Location: FF_X40_Y6_N1
\U1|used[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|used[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|used\(0));

-- Location: LCCOMB_X40_Y7_N8
\U0|VGA_R~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R~20_combout\ = (\U0|FSM~33_combout\ & (!\U0|FSM~38_combout\ & \U1|used\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~33_combout\,
	datab => \U0|FSM~38_combout\,
	datad => \U1|used\(0),
	combout => \U0|VGA_R~20_combout\);

-- Location: LCCOMB_X37_Y11_N28
\U0|LessThan26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan26~2_combout\ = (\U0|U1|column\(2) & ((\U0|U1|column\(1)) # (\U0|U1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(2),
	datac => \U0|U1|column\(1),
	datad => \U0|U1|column\(0),
	combout => \U0|LessThan26~2_combout\);

-- Location: LCCOMB_X36_Y11_N30
\U0|FSM~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~24_combout\ = (\U0|U1|column\(5) & ((\U0|U1|column\(3)) # (\U0|LessThan26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(5),
	datac => \U0|U1|column\(3),
	datad => \U0|LessThan26~2_combout\,
	combout => \U0|FSM~24_combout\);

-- Location: LCCOMB_X36_Y11_N10
\U0|FSM~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~25_combout\ = (\U0|U1|column\(6)) # ((\U0|FSM~24_combout\ & \U0|U1|column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~24_combout\,
	datac => \U0|U1|column\(4),
	datad => \U0|U1|column\(6),
	combout => \U0|FSM~25_combout\);

-- Location: LCCOMB_X36_Y11_N12
\U0|FSM~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~26_combout\ = (\U0|U1|column\(7) & (!\U0|U1|column\(9) & (\U0|U1|column\(8) & \U0|FSM~25_combout\))) # (!\U0|U1|column\(7) & (\U0|U1|column\(9) & (!\U0|U1|column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(7),
	datab => \U0|U1|column\(9),
	datac => \U0|U1|column\(8),
	datad => \U0|FSM~25_combout\,
	combout => \U0|FSM~26_combout\);

-- Location: LCCOMB_X38_Y11_N28
\U0|LessThan23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan23~1_combout\ = (!\U0|U1|column\(4) & (((!\U0|U1|column\(1) & !\U0|U1|column\(2))) # (!\U0|U1|column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(4),
	datab => \U0|U1|column\(1),
	datac => \U0|U1|column\(3),
	datad => \U0|U1|column\(2),
	combout => \U0|LessThan23~1_combout\);

-- Location: LCCOMB_X38_Y11_N4
\U0|FSM~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~22_combout\ = (\U0|U1|column\(7) & ((\U0|U1|column\(6)) # ((!\U0|LessThan23~1_combout\ & \U0|U1|column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(7),
	datab => \U0|LessThan23~1_combout\,
	datac => \U0|U1|column\(6),
	datad => \U0|U1|column\(5),
	combout => \U0|FSM~22_combout\);

-- Location: LCCOMB_X37_Y11_N30
\U0|FSM~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~23_combout\ = (\U0|U1|column\(3) & (\U0|U1|column\(4) & \U0|LessThan26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(3),
	datab => \U0|U1|column\(4),
	datad => \U0|LessThan26~2_combout\,
	combout => \U0|FSM~23_combout\);

-- Location: LCCOMB_X37_Y11_N26
\U0|FSM~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~78_combout\ = (\U0|U1|column\(7) & (\U0|U1|column\(6) & ((\U0|FSM~23_combout\) # (\U0|U1|column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~23_combout\,
	datab => \U0|U1|column\(7),
	datac => \U0|U1|column\(6),
	datad => \U0|U1|column\(5),
	combout => \U0|FSM~78_combout\);

-- Location: LCCOMB_X38_Y11_N10
\U0|FSM~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~79_combout\ = (!\U0|U1|column\(9) & ((\U0|U1|column\(8) & (!\U0|FSM~22_combout\)) # (!\U0|U1|column\(8) & ((\U0|FSM~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(8),
	datab => \U0|FSM~22_combout\,
	datac => \U0|FSM~78_combout\,
	datad => \U0|U1|column\(9),
	combout => \U0|FSM~79_combout\);

-- Location: LCCOMB_X38_Y7_N8
\U0|fig_yShift[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_yShift[0]~2_combout\ = (\U0|FSM~38_combout\) # ((!\U0|FSM~26_combout\ & !\U0|FSM~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~26_combout\,
	datac => \U0|FSM~79_combout\,
	datad => \U0|FSM~38_combout\,
	combout => \U0|fig_yShift[0]~2_combout\);

-- Location: LCCOMB_X41_Y11_N14
\U0|FSM~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~20_combout\ = (\U0|U1|row\(8) & ((\U0|U1|row\(6)) # ((\U0|U1|row\(7))))) # (!\U0|U1|row\(8) & (((!\U0|U1|row\(6) & !\U0|U1|row\(5))) # (!\U0|U1|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(8),
	datab => \U0|U1|row\(6),
	datac => \U0|U1|row\(7),
	datad => \U0|U1|row\(5),
	combout => \U0|FSM~20_combout\);

-- Location: LCCOMB_X41_Y11_N24
\U0|FSM~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~21_combout\ = (\U0|FSM~20_combout\) # ((!\U0|U1|row\(8) & (!\U0|U1|row\(6) & !\U0|LessThan24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(8),
	datab => \U0|U1|row\(6),
	datac => \U0|FSM~20_combout\,
	datad => \U0|LessThan24~1_combout\,
	combout => \U0|FSM~21_combout\);

-- Location: LCCOMB_X40_Y8_N30
\U0|FSM~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~27_combout\ = (\U0|FSM~26_combout\ & !\U0|FSM~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|FSM~26_combout\,
	datad => \U0|FSM~21_combout\,
	combout => \U0|FSM~27_combout\);

-- Location: LCCOMB_X39_Y8_N30
\U0|FSM~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~40_combout\ = (\U0|FSM~33_combout\ & !\U0|FSM~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|FSM~33_combout\,
	datad => \U0|FSM~38_combout\,
	combout => \U0|FSM~40_combout\);

-- Location: LCCOMB_X39_Y11_N4
\U0|f2y2[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2[4]~11_combout\ = (\U0|FSM~38_combout\) # ((!\U0|FSM~79_combout\ & !\U0|FSM~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~79_combout\,
	datac => \U0|FSM~33_combout\,
	datad => \U0|FSM~38_combout\,
	combout => \U0|f2y2[4]~11_combout\);

-- Location: LCCOMB_X39_Y8_N4
\U0|y2[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~5_combout\ = (\U0|FSM~38_combout\ & (((\U0|FSM~21_combout\)) # (!\U0|FSM~33_combout\))) # (!\U0|FSM~38_combout\ & (!\U0|FSM~26_combout\ & ((\U0|FSM~21_combout\) # (!\U0|FSM~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~38_combout\,
	datab => \U0|FSM~33_combout\,
	datac => \U0|FSM~26_combout\,
	datad => \U0|FSM~21_combout\,
	combout => \U0|y2[0]~5_combout\);

-- Location: LCCOMB_X39_Y8_N24
\U0|fig_yShift[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_yShift[0]~5_combout\ = (((\U0|FSM~79_combout\ & !\U0|FSM~21_combout\)) # (!\U0|y2[0]~5_combout\)) # (!\U0|f2y2[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~79_combout\,
	datab => \U0|f2y2[4]~11_combout\,
	datac => \U0|FSM~21_combout\,
	datad => \U0|y2[0]~5_combout\,
	combout => \U0|fig_yShift[0]~5_combout\);

-- Location: LCCOMB_X39_Y8_N28
\U0|fig_yShift[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_yShift[0]~4_combout\ = (\U0|fig_yShift[0]~5_combout\ & (\U0|fig_yShift[0]~2_combout\ & ((!\U0|FSM~40_combout\)))) # (!\U0|fig_yShift[0]~5_combout\ & (((\U0|FSM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift[0]~2_combout\,
	datab => \U0|FSM~27_combout\,
	datac => \U0|FSM~40_combout\,
	datad => \U0|fig_yShift[0]~5_combout\,
	combout => \U0|fig_yShift[0]~4_combout\);

-- Location: LCCOMB_X43_Y7_N30
\U1|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal1~10_combout\ = (\U1|Equal1~8_combout\ & (!\U1|index\(3) & !\U1|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~8_combout\,
	datab => \U1|index\(3),
	datac => \U1|index\(0),
	combout => \U1|Equal1~10_combout\);

-- Location: LCCOMB_X43_Y7_N16
\U1|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal5~0_combout\ = (\U1|Equal1~10_combout\ & (!\U1|index\(1) & \U1|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~10_combout\,
	datab => \U1|index\(1),
	datac => \U1|index\(2),
	combout => \U1|Equal5~0_combout\);

-- Location: LCCOMB_X40_Y7_N12
\U1|used[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|used[4]~25_combout\ = (\U1|used\(4)) # ((\U1|Equal0~10_combout\ & (\U1|Equal5~0_combout\ & \BUT1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~10_combout\,
	datab => \U1|Equal5~0_combout\,
	datac => \U1|used\(4),
	datad => \BUT1~input_o\,
	combout => \U1|used[4]~25_combout\);

-- Location: FF_X40_Y7_N13
\U1|used[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|used[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|used\(4));

-- Location: LCCOMB_X43_Y7_N22
\U1|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal2~0_combout\ = (\U1|Equal1~8_combout\ & (!\U1|index\(3) & \U1|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~8_combout\,
	datab => \U1|index\(3),
	datac => \U1|index\(0),
	combout => \U1|Equal2~0_combout\);

-- Location: LCCOMB_X43_Y7_N14
\U1|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal4~0_combout\ = (\U1|index\(1) & (!\U1|index\(2) & \U1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|index\(1),
	datac => \U1|index\(2),
	datad => \U1|Equal2~0_combout\,
	combout => \U1|Equal4~0_combout\);

-- Location: LCCOMB_X42_Y7_N30
\U1|used[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|used[3]~23_combout\ = (\U1|used\(3)) # ((\BUT1~input_o\ & (\U1|Equal4~0_combout\ & \U1|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT1~input_o\,
	datab => \U1|Equal4~0_combout\,
	datac => \U1|used\(3),
	datad => \U1|Equal0~10_combout\,
	combout => \U1|used[3]~23_combout\);

-- Location: FF_X42_Y7_N31
\U1|used[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|used[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|used\(3));

-- Location: LCCOMB_X40_Y7_N6
\U0|FSM~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~28_combout\ = (\U0|U1|row\(6) & ((\U0|LessThan24~1_combout\) # (\U0|U1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan24~1_combout\,
	datac => \U0|U1|row\(6),
	datad => \U0|U1|row\(5),
	combout => \U0|FSM~28_combout\);

-- Location: LCCOMB_X41_Y7_N0
\U0|FSM~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~29_combout\ = ((\U0|FSM~28_combout\ & (\U0|U1|row\(7) & \U0|U1|row\(5))) # (!\U0|FSM~28_combout\ & (!\U0|U1|row\(7)))) # (!\U0|U1|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(8),
	datab => \U0|FSM~28_combout\,
	datac => \U0|U1|row\(7),
	datad => \U0|U1|row\(5),
	combout => \U0|FSM~29_combout\);

-- Location: LCCOMB_X41_Y7_N6
\U0|y2[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~4_combout\ = (\U0|FSM~27_combout\) # ((\U0|FSM~79_combout\ & (!\U0|FSM~29_combout\ & !\U0|FSM~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~79_combout\,
	datab => \U0|FSM~29_combout\,
	datac => \U0|FSM~33_combout\,
	datad => \U0|FSM~27_combout\,
	combout => \U0|y2[0]~4_combout\);

-- Location: LCCOMB_X41_Y6_N20
\U1|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal8~0_combout\ = (\U1|index\(1) & (\U1|index\(2) & \U1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(1),
	datac => \U1|index\(2),
	datad => \U1|Equal2~0_combout\,
	combout => \U1|Equal8~0_combout\);

-- Location: LCCOMB_X42_Y7_N8
\U1|used[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|used[7]~19_combout\ = (\U1|used\(7)) # ((\BUT1~input_o\ & (\U1|Equal8~0_combout\ & \U1|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT1~input_o\,
	datab => \U1|Equal8~0_combout\,
	datac => \U1|used\(7),
	datad => \U1|Equal0~10_combout\,
	combout => \U1|used[7]~19_combout\);

-- Location: FF_X42_Y7_N9
\U1|used[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|used[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|used\(7));

-- Location: LCCOMB_X41_Y6_N24
\U1|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal6~0_combout\ = (!\U1|index\(1) & (\U1|index\(2) & \U1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(1),
	datac => \U1|index\(2),
	datad => \U1|Equal2~0_combout\,
	combout => \U1|Equal6~0_combout\);

-- Location: LCCOMB_X40_Y6_N26
\U1|used[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|used[5]~24_combout\ = (\U1|used\(5)) # ((\BUT1~input_o\ & (\U1|Equal0~10_combout\ & \U1|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT1~input_o\,
	datab => \U1|Equal0~10_combout\,
	datac => \U1|used\(5),
	datad => \U1|Equal6~0_combout\,
	combout => \U1|used[5]~24_combout\);

-- Location: FF_X42_Y7_N11
\U1|used[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	asdata => \U1|used[5]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|used\(5));

-- Location: LCCOMB_X43_Y7_N28
\U1|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal9~0_combout\ = (!\U1|index\(0) & (\U1|index\(3) & (\U1|Equal1~8_combout\ & \U1|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(0),
	datab => \U1|index\(3),
	datac => \U1|Equal1~8_combout\,
	datad => \U1|Equal1~9_combout\,
	combout => \U1|Equal9~0_combout\);

-- Location: LCCOMB_X41_Y7_N28
\U1|used[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|used[8]~18_combout\ = (\U1|used\(8)) # ((\U1|Equal9~0_combout\ & (\BUT1~input_o\ & \U1|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal9~0_combout\,
	datab => \BUT1~input_o\,
	datac => \U1|used\(8),
	datad => \U1|Equal0~10_combout\,
	combout => \U1|used[8]~18_combout\);

-- Location: FF_X41_Y7_N29
\U1|used[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|used[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|used\(8));

-- Location: LCCOMB_X41_Y7_N20
\U0|y2[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~3_combout\ = (\U0|FSM~26_combout\ & (\U1|used\(8) & !\U0|FSM~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~26_combout\,
	datab => \U1|used\(8),
	datad => \U0|FSM~29_combout\,
	combout => \U0|y2[0]~3_combout\);

-- Location: LCCOMB_X41_Y7_N8
\U0|y2[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~2_combout\ = (\U0|FSM~21_combout\ & (((\U0|FSM~29_combout\) # (!\U0|FSM~33_combout\)))) # (!\U0|FSM~21_combout\ & (!\U0|FSM~26_combout\ & ((\U0|FSM~29_combout\) # (!\U0|FSM~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~21_combout\,
	datab => \U0|FSM~26_combout\,
	datac => \U0|FSM~33_combout\,
	datad => \U0|FSM~29_combout\,
	combout => \U0|y2[0]~2_combout\);

-- Location: LCCOMB_X41_Y6_N14
\U1|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal7~0_combout\ = (\U1|index\(1) & (\U1|Equal1~10_combout\ & \U1|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(1),
	datab => \U1|Equal1~10_combout\,
	datac => \U1|index\(2),
	combout => \U1|Equal7~0_combout\);

-- Location: LCCOMB_X40_Y7_N4
\U1|used[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|used[6]~22_combout\ = (\U1|used\(6)) # ((\BUT1~input_o\ & (\U1|Equal0~10_combout\ & \U1|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(6),
	datab => \BUT1~input_o\,
	datac => \U1|Equal0~10_combout\,
	datad => \U1|Equal7~0_combout\,
	combout => \U1|used[6]~22_combout\);

-- Location: FF_X41_Y7_N13
\U1|used[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	asdata => \U1|used[6]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|used\(6));

-- Location: LCCOMB_X41_Y7_N12
\U0|fig_xShift[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~4_combout\ = (\U0|y2[0]~2_combout\ & ((\U0|y2[0]~3_combout\) # ((\U0|y2[0]~4_combout\)))) # (!\U0|y2[0]~2_combout\ & (((\U1|used\(6) & !\U0|y2[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2[0]~3_combout\,
	datab => \U0|y2[0]~2_combout\,
	datac => \U1|used\(6),
	datad => \U0|y2[0]~4_combout\,
	combout => \U0|fig_xShift[0]~4_combout\);

-- Location: LCCOMB_X41_Y7_N16
\U0|fig_xShift[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~5_combout\ = (\U0|y2[0]~4_combout\ & ((\U0|fig_xShift[0]~4_combout\ & (\U1|used\(7))) # (!\U0|fig_xShift[0]~4_combout\ & ((\U1|used\(5)))))) # (!\U0|y2[0]~4_combout\ & (((\U0|fig_xShift[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2[0]~4_combout\,
	datab => \U1|used\(7),
	datac => \U1|used\(5),
	datad => \U0|fig_xShift[0]~4_combout\,
	combout => \U0|fig_xShift[0]~5_combout\);

-- Location: LCCOMB_X39_Y7_N0
\U0|FSM~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~39_combout\ = (\U0|FSM~38_combout\) # (!\U0|FSM~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|FSM~26_combout\,
	datad => \U0|FSM~38_combout\,
	combout => \U0|FSM~39_combout\);

-- Location: LCCOMB_X39_Y7_N18
\U0|y2[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~18_combout\ = ((\U0|FSM~79_combout\ & (!\U0|FSM~21_combout\ & !\U0|FSM~33_combout\))) # (!\U0|FSM~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~79_combout\,
	datab => \U0|FSM~39_combout\,
	datac => \U0|FSM~21_combout\,
	datad => \U0|FSM~33_combout\,
	combout => \U0|y2[0]~18_combout\);

-- Location: LCCOMB_X40_Y7_N2
\U0|fig_xShift[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~6_combout\ = (\U0|y2[0]~5_combout\ & (((\U0|fig_xShift[0]~5_combout\) # (\U0|y2[0]~18_combout\)))) # (!\U0|y2[0]~5_combout\ & (\U1|used\(3) & ((!\U0|y2[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(3),
	datab => \U0|fig_xShift[0]~5_combout\,
	datac => \U0|y2[0]~5_combout\,
	datad => \U0|y2[0]~18_combout\,
	combout => \U0|fig_xShift[0]~6_combout\);

-- Location: LCCOMB_X41_Y6_N26
\U1|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal3~0_combout\ = (\U1|index\(1) & (\U1|Equal1~10_combout\ & !\U1|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(1),
	datab => \U1|Equal1~10_combout\,
	datac => \U1|index\(2),
	combout => \U1|Equal3~0_combout\);

-- Location: LCCOMB_X40_Y7_N18
\U1|used[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|used[2]~21_combout\ = (\U1|used\(2)) # ((\U1|Equal3~0_combout\ & (\U1|Equal0~10_combout\ & \BUT1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal3~0_combout\,
	datab => \U1|used\(2),
	datac => \U1|Equal0~10_combout\,
	datad => \BUT1~input_o\,
	combout => \U1|used[2]~21_combout\);

-- Location: FF_X39_Y7_N7
\U1|used[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	asdata => \U1|used[2]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|used\(2));

-- Location: LCCOMB_X40_Y7_N20
\U0|fig_xShift[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~7_combout\ = (\U0|fig_xShift[0]~6_combout\ & ((\U1|used\(4)) # ((!\U0|y2[0]~18_combout\)))) # (!\U0|fig_xShift[0]~6_combout\ & (((\U1|used\(2) & \U0|y2[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(4),
	datab => \U0|fig_xShift[0]~6_combout\,
	datac => \U1|used\(2),
	datad => \U0|y2[0]~18_combout\,
	combout => \U0|fig_xShift[0]~7_combout\);

-- Location: LCCOMB_X43_Y7_N6
\U1|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Equal2~1_combout\ = (\U1|index\(0) & (!\U1|index\(3) & (\U1|Equal1~8_combout\ & \U1|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|index\(0),
	datab => \U1|index\(3),
	datac => \U1|Equal1~8_combout\,
	datad => \U1|Equal1~9_combout\,
	combout => \U1|Equal2~1_combout\);

-- Location: LCCOMB_X42_Y7_N14
\U1|used[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|used[1]~20_combout\ = (\U1|used\(1)) # ((\BUT1~input_o\ & (\U1|Equal0~10_combout\ & \U1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUT1~input_o\,
	datab => \U1|Equal0~10_combout\,
	datac => \U1|used\(1),
	datad => \U1|Equal2~1_combout\,
	combout => \U1|used[1]~20_combout\);

-- Location: FF_X42_Y7_N15
\U1|used[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|used[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|used\(1));

-- Location: LCCOMB_X40_Y7_N0
\U0|f2y2[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2[4]~10_combout\ = (!\U0|FSM~33_combout\ & (\U1|used\(1) & (!\U0|FSM~38_combout\ & \U0|FSM~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~33_combout\,
	datab => \U1|used\(1),
	datac => \U0|FSM~38_combout\,
	datad => \U0|FSM~79_combout\,
	combout => \U0|f2y2[4]~10_combout\);

-- Location: LCCOMB_X40_Y7_N16
\U0|fig_xShift[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~8_combout\ = (\U0|VGA_R~20_combout\) # ((\U0|f2y2[4]~10_combout\) # ((\U0|f2y2[4]~11_combout\ & \U0|fig_xShift[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2[4]~11_combout\,
	datab => \U0|fig_xShift[0]~7_combout\,
	datac => \U0|VGA_R~20_combout\,
	datad => \U0|f2y2[4]~10_combout\,
	combout => \U0|fig_xShift[0]~8_combout\);

-- Location: LCCOMB_X39_Y14_N24
\U0|fig_xShift[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~9_combout\ = (\U0|FSM~71_combout\ & (\U0|fig_xShift[0]~8_combout\ & (!\U0|FSM~15_combout\ & \U0|U1|disp_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~71_combout\,
	datab => \U0|fig_xShift[0]~8_combout\,
	datac => \U0|FSM~15_combout\,
	datad => \U0|U1|disp_ena~q\,
	combout => \U0|fig_xShift[0]~9_combout\);

-- Location: CLKCTRL_G12
\U0|fig_xShift[0]~9clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|fig_xShift[0]~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|fig_xShift[0]~9clkctrl_outclk\);

-- Location: LCCOMB_X40_Y9_N12
\U0|fig_yShift[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_yShift\(0) = (GLOBAL(\U0|fig_xShift[0]~9clkctrl_outclk\) & ((\U0|fig_yShift[0]~4_combout\))) # (!GLOBAL(\U0|fig_xShift[0]~9clkctrl_outclk\) & (\U0|fig_yShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(0),
	datac => \U0|fig_yShift[0]~4_combout\,
	datad => \U0|fig_xShift[0]~9clkctrl_outclk\,
	combout => \U0|fig_yShift\(0));

-- Location: LCCOMB_X40_Y8_N26
\U0|FSM~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~43_combout\ = (\U0|FSM~79_combout\ & !\U0|FSM~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|FSM~79_combout\,
	datad => \U0|FSM~21_combout\,
	combout => \U0|FSM~43_combout\);

-- Location: LCCOMB_X40_Y8_N14
\U0|fig_yShift[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_yShift[1]~3_combout\ = (((\U0|FSM~27_combout\) # (\U0|FSM~43_combout\)) # (!\U0|y2[0]~5_combout\)) # (!\U0|f2y2[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2[4]~11_combout\,
	datab => \U0|y2[0]~5_combout\,
	datac => \U0|FSM~27_combout\,
	datad => \U0|FSM~43_combout\,
	combout => \U0|fig_yShift[1]~3_combout\);

-- Location: LCCOMB_X40_Y9_N30
\U0|fig_yShift[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_yShift\(1) = (GLOBAL(\U0|fig_xShift[0]~9clkctrl_outclk\) & ((!\U0|fig_yShift[1]~3_combout\))) # (!GLOBAL(\U0|fig_xShift[0]~9clkctrl_outclk\) & (\U0|fig_yShift\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(1),
	datac => \U0|fig_yShift[1]~3_combout\,
	datad => \U0|fig_xShift[0]~9clkctrl_outclk\,
	combout => \U0|fig_yShift\(1));

-- Location: LCCOMB_X40_Y9_N10
\U0|Add23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add23~0_combout\ = (!\U0|fig_yShift\(0) & \U0|fig_yShift\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(0),
	datac => \U0|fig_yShift\(1),
	combout => \U0|Add23~0_combout\);

-- Location: LCCOMB_X42_Y7_N2
\U1|Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~6_combout\ = (\U1|Equal1~9_combout\ & (\U1|Equal2~0_combout\ & (\U1|p~q\ $ (\U1|used\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|p~q\,
	datab => \U1|Equal1~9_combout\,
	datac => \U1|used\(1),
	datad => \U1|Equal2~0_combout\,
	combout => \U1|Selector0~6_combout\);

-- Location: LCCOMB_X41_Y6_N16
\U1|Selector0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~7_combout\ = (\U1|Selector0~6_combout\) # ((\U1|Equal1~11_combout\ & (\U1|p~q\ $ (\U1|used\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|p~q\,
	datab => \U1|used\(0),
	datac => \U1|Selector0~6_combout\,
	datad => \U1|Equal1~11_combout\,
	combout => \U1|Selector0~7_combout\);

-- Location: LCCOMB_X41_Y6_N8
\U1|Selector0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~8_combout\ = (\U1|Selector0~7_combout\) # ((\U1|Equal3~0_combout\ & (\U1|p~q\ $ (\U1|used\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|p~q\,
	datab => \U1|Selector0~7_combout\,
	datac => \U1|used\(2),
	datad => \U1|Equal3~0_combout\,
	combout => \U1|Selector0~8_combout\);

-- Location: LCCOMB_X43_Y7_N24
\U1|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~4_combout\ = (\U1|Equal5~0_combout\ & (\U1|p~q\ $ (\U1|used\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|p~q\,
	datac => \U1|used\(4),
	datad => \U1|Equal5~0_combout\,
	combout => \U1|Selector0~4_combout\);

-- Location: LCCOMB_X42_Y6_N22
\U1|Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~5_combout\ = (\U1|Selector0~4_combout\) # ((\U1|Equal4~0_combout\ & (\U1|p~q\ $ (\U1|used\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector0~4_combout\,
	datab => \U1|p~q\,
	datac => \U1|used\(3),
	datad => \U1|Equal4~0_combout\,
	combout => \U1|Selector0~5_combout\);

-- Location: LCCOMB_X41_Y6_N4
\U1|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~2_combout\ = (\U1|Equal7~0_combout\ & (\U1|p~q\ $ (\U1|used\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|p~q\,
	datac => \U1|Equal7~0_combout\,
	datad => \U1|used\(6),
	combout => \U1|Selector0~2_combout\);

-- Location: LCCOMB_X41_Y6_N22
\U1|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~3_combout\ = (\U1|Selector0~2_combout\) # ((\U1|Equal6~0_combout\ & (\U1|p~q\ $ (\U1|used\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|p~q\,
	datab => \U1|used\(5),
	datac => \U1|Selector0~2_combout\,
	datad => \U1|Equal6~0_combout\,
	combout => \U1|Selector0~3_combout\);

-- Location: LCCOMB_X43_Y7_N0
\U1|WideNor0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|WideNor0~12_combout\ = (!\U1|index\(3) & \U1|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|index\(3),
	datac => \U1|Equal1~8_combout\,
	combout => \U1|WideNor0~12_combout\);

-- Location: LCCOMB_X43_Y7_N10
\U1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~0_combout\ = (\U1|Equal9~0_combout\ & (((!\U1|used\(8))))) # (!\U1|Equal9~0_combout\ & (!\U1|p~q\ & ((\U1|WideNor0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|p~q\,
	datab => \U1|Equal9~0_combout\,
	datac => \U1|used\(8),
	datad => \U1|WideNor0~12_combout\,
	combout => \U1|Selector0~0_combout\);

-- Location: LCCOMB_X42_Y6_N24
\U1|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~1_combout\ = (\U1|Selector0~0_combout\ & ((\U1|p~q\) # ((\U1|Equal8~0_combout\ & \U1|used\(7))))) # (!\U1|Selector0~0_combout\ & (((\U1|Equal8~0_combout\ & !\U1|used\(7))) # (!\U1|p~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector0~0_combout\,
	datab => \U1|Equal8~0_combout\,
	datac => \U1|used\(7),
	datad => \U1|p~q\,
	combout => \U1|Selector0~1_combout\);

-- Location: LCCOMB_X41_Y6_N28
\U1|Selector0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~9_combout\ = (\U1|Selector0~8_combout\) # ((\U1|Selector0~5_combout\) # ((\U1|Selector0~3_combout\) # (\U1|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector0~8_combout\,
	datab => \U1|Selector0~5_combout\,
	datac => \U1|Selector0~3_combout\,
	datad => \U1|Selector0~1_combout\,
	combout => \U1|Selector0~9_combout\);

-- Location: LCCOMB_X41_Y6_N10
\U1|p~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|p~3_combout\ = (\U1|Equal0~10_combout\ & ((\BUT1~input_o\ & (!\U1|Selector0~9_combout\)) # (!\BUT1~input_o\ & ((\U1|p~q\))))) # (!\U1|Equal0~10_combout\ & (((\U1|p~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~10_combout\,
	datab => \U1|Selector0~9_combout\,
	datac => \U1|p~q\,
	datad => \BUT1~input_o\,
	combout => \U1|p~3_combout\);

-- Location: FF_X41_Y6_N11
\U1|p\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|p~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|p~q\);

-- Location: LCCOMB_X41_Y6_N18
\U1|player[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[2]~1_combout\ = (\U1|Equal0~10_combout\ & (\BUT1~input_o\ & !\U1|p~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~10_combout\,
	datab => \BUT1~input_o\,
	datad => \U1|p~q\,
	combout => \U1|player[2]~1_combout\);

-- Location: LCCOMB_X42_Y7_N20
\U1|player[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[1]~11_combout\ = (\U1|player\(1) & ((\U1|used\(1)) # ((!\U1|Equal2~1_combout\) # (!\U1|p~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(1),
	datab => \U1|used\(1),
	datac => \U1|p~2_combout\,
	datad => \U1|Equal2~1_combout\,
	combout => \U1|player[1]~11_combout\);

-- Location: LCCOMB_X42_Y7_N28
\U1|player[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[1]~12_combout\ = (\U1|player[1]~11_combout\) # ((\U1|Equal2~1_combout\ & (\U1|player[2]~1_combout\ & !\U1|used\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal2~1_combout\,
	datab => \U1|player[2]~1_combout\,
	datac => \U1|used\(1),
	datad => \U1|player[1]~11_combout\,
	combout => \U1|player[1]~12_combout\);

-- Location: FF_X40_Y7_N9
\U1|player[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	asdata => \U1|player[1]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|player\(1));

-- Location: LCCOMB_X40_Y6_N4
\U1|player[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[0]~17_combout\ = (\U1|player\(0) & (((\U1|used\(0)) # (!\U1|Equal1~11_combout\)) # (!\U1|p~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(0),
	datab => \U1|p~2_combout\,
	datac => \U1|Equal1~11_combout\,
	datad => \U1|used\(0),
	combout => \U1|player[0]~17_combout\);

-- Location: LCCOMB_X40_Y6_N2
\U1|player[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[0]~18_combout\ = (\U1|player[0]~17_combout\) # ((\U1|Equal1~11_combout\ & (!\U1|used\(0) & \U1|player[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~11_combout\,
	datab => \U1|used\(0),
	datac => \U1|player[0]~17_combout\,
	datad => \U1|player[2]~1_combout\,
	combout => \U1|player[0]~18_combout\);

-- Location: FF_X40_Y6_N3
\U1|player[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|player[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|player\(0));

-- Location: LCCOMB_X40_Y7_N28
\U0|f2y2[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2[4]~4_combout\ = (\U1|player\(1) & (((\U0|VGA_R~20_combout\ & !\U1|player\(0))))) # (!\U1|player\(1) & ((\U0|f2y2[4]~10_combout\) # ((\U0|VGA_R~20_combout\ & !\U1|player\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(1),
	datab => \U0|f2y2[4]~10_combout\,
	datac => \U0|VGA_R~20_combout\,
	datad => \U1|player\(0),
	combout => \U0|f2y2[4]~4_combout\);

-- Location: LCCOMB_X39_Y14_N18
\U0|VGA_B[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_B[0]~0_combout\ = (!\U0|FSM~15_combout\ & (\U0|FSM~71_combout\ & \U0|U1|disp_ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~15_combout\,
	datac => \U0|FSM~71_combout\,
	datad => \U0|U1|disp_ena~q\,
	combout => \U0|VGA_B[0]~0_combout\);

-- Location: LCCOMB_X40_Y6_N24
\U1|player[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[2]~5_combout\ = (\U1|player\(2) & (((\U1|used\(2)) # (!\U1|Equal3~0_combout\)) # (!\U1|p~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(2),
	datab => \U1|p~2_combout\,
	datac => \U1|used\(2),
	datad => \U1|Equal3~0_combout\,
	combout => \U1|player[2]~5_combout\);

-- Location: LCCOMB_X39_Y7_N14
\U1|player[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[2]~6_combout\ = (\U1|player[2]~5_combout\) # ((!\U1|used\(2) & (\U1|player[2]~1_combout\ & \U1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(2),
	datab => \U1|player[2]~1_combout\,
	datac => \U1|player[2]~5_combout\,
	datad => \U1|Equal3~0_combout\,
	combout => \U1|player[2]~6_combout\);

-- Location: FF_X39_Y7_N15
\U1|player[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|player[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|player\(2));

-- Location: LCCOMB_X39_Y7_N12
\U0|VGA_R~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R~17_combout\ = (!\U1|player\(2) & \U1|used\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|player\(2),
	datad => \U1|used\(2),
	combout => \U0|VGA_R~17_combout\);

-- Location: LCCOMB_X42_Y7_N4
\U1|player[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[4]~15_combout\ = (\U1|player\(4) & ((\U1|used\(4)) # ((!\U1|Equal5~0_combout\) # (!\U1|p~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(4),
	datab => \U1|used\(4),
	datac => \U1|p~2_combout\,
	datad => \U1|Equal5~0_combout\,
	combout => \U1|player[4]~15_combout\);

-- Location: LCCOMB_X40_Y7_N26
\U1|player[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[4]~16_combout\ = (\U1|player[4]~15_combout\) # ((\U1|player[2]~1_combout\ & (\U1|Equal5~0_combout\ & !\U1|used\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player[4]~15_combout\,
	datab => \U1|player[2]~1_combout\,
	datac => \U1|Equal5~0_combout\,
	datad => \U1|used\(4),
	combout => \U1|player[4]~16_combout\);

-- Location: FF_X40_Y7_N27
\U1|player[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|player[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|player\(4));

-- Location: LCCOMB_X40_Y7_N24
\U0|VGA_R~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R~15_combout\ = (!\U1|player\(4) & \U1|used\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|player\(4),
	datad => \U1|used\(4),
	combout => \U0|VGA_R~15_combout\);

-- Location: LCCOMB_X41_Y6_N12
\U1|player[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[7]~3_combout\ = (\U1|player\(7) & ((\U1|used\(7)) # ((!\U1|p~2_combout\) # (!\U1|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(7),
	datab => \U1|Equal8~0_combout\,
	datac => \U1|player\(7),
	datad => \U1|p~2_combout\,
	combout => \U1|player[7]~3_combout\);

-- Location: LCCOMB_X42_Y7_N0
\U1|player[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[7]~4_combout\ = (\U1|player[7]~3_combout\) # ((\U1|Equal8~0_combout\ & (\U1|player[2]~1_combout\ & !\U1|used\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player[7]~3_combout\,
	datab => \U1|Equal8~0_combout\,
	datac => \U1|player[2]~1_combout\,
	datad => \U1|used\(7),
	combout => \U1|player[7]~4_combout\);

-- Location: FF_X42_Y7_N1
\U1|player[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|player[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|player\(7));

-- Location: LCCOMB_X42_Y7_N10
\U0|VGA_R~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R~3_combout\ = (\U1|used\(7) & !\U1|player\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|used\(7),
	datad => \U1|player\(7),
	combout => \U0|VGA_R~3_combout\);

-- Location: LCCOMB_X40_Y6_N14
\U1|player[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[5]~13_combout\ = (\U1|player\(5) & (((\U1|used\(5)) # (!\U1|Equal6~0_combout\)) # (!\U1|p~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(5),
	datab => \U1|p~2_combout\,
	datac => \U1|used\(5),
	datad => \U1|Equal6~0_combout\,
	combout => \U1|player[5]~13_combout\);

-- Location: LCCOMB_X41_Y6_N0
\U1|player[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[5]~14_combout\ = (\U1|player[5]~13_combout\) # ((\U1|Equal6~0_combout\ & (!\U1|used\(5) & \U1|player[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player[5]~13_combout\,
	datab => \U1|Equal6~0_combout\,
	datac => \U1|used\(5),
	datad => \U1|player[2]~1_combout\,
	combout => \U1|player[5]~14_combout\);

-- Location: FF_X41_Y6_N1
\U1|player[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|player[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|player\(5));

-- Location: LCCOMB_X42_Y7_N26
\U0|VGA_R~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R~12_combout\ = (!\U1|player\(5) & \U1|used\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(5),
	datad => \U1|used\(5),
	combout => \U0|VGA_R~12_combout\);

-- Location: LCCOMB_X42_Y7_N18
\U1|player[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[8]~0_combout\ = (\U1|player\(8) & ((\U1|used\(8)) # ((!\U1|Equal9~0_combout\) # (!\U1|p~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(8),
	datab => \U1|p~2_combout\,
	datac => \U1|player\(8),
	datad => \U1|Equal9~0_combout\,
	combout => \U1|player[8]~0_combout\);

-- Location: LCCOMB_X41_Y7_N30
\U1|player[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[8]~2_combout\ = (\U1|player[8]~0_combout\) # ((!\U1|used\(8) & (\U1|player[2]~1_combout\ & \U1|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(8),
	datab => \U1|player[2]~1_combout\,
	datac => \U1|Equal9~0_combout\,
	datad => \U1|player[8]~0_combout\,
	combout => \U1|player[8]~2_combout\);

-- Location: FF_X41_Y7_N31
\U1|player[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|player[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|player\(8));

-- Location: LCCOMB_X41_Y7_N10
\U0|VGA_R~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R~2_combout\ = (\U0|FSM~26_combout\ & (\U1|used\(8) & (!\U1|player\(8) & !\U0|FSM~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~26_combout\,
	datab => \U1|used\(8),
	datac => \U1|player\(8),
	datad => \U0|FSM~29_combout\,
	combout => \U0|VGA_R~2_combout\);

-- Location: LCCOMB_X41_Y6_N30
\U1|player[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[6]~7_combout\ = (\U1|player\(6) & ((\U1|used\(6)) # ((!\U1|p~2_combout\) # (!\U1|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(6),
	datab => \U1|used\(6),
	datac => \U1|Equal7~0_combout\,
	datad => \U1|p~2_combout\,
	combout => \U1|player[6]~7_combout\);

-- Location: LCCOMB_X41_Y6_N6
\U1|player[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[6]~8_combout\ = (\U1|player[6]~7_combout\) # ((\U1|player[2]~1_combout\ & (\U1|Equal7~0_combout\ & !\U1|used\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player[6]~7_combout\,
	datab => \U1|player[2]~1_combout\,
	datac => \U1|Equal7~0_combout\,
	datad => \U1|used\(6),
	combout => \U1|player[6]~8_combout\);

-- Location: FF_X41_Y6_N7
\U1|player[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|player[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|player\(6));

-- Location: LCCOMB_X41_Y7_N14
\U0|VGA_R~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R~6_combout\ = (\U1|used\(6) & !\U1|player\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(6),
	datad => \U1|player\(6),
	combout => \U0|VGA_R~6_combout\);

-- Location: LCCOMB_X41_Y7_N18
\U0|f2y2[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2[4]~5_combout\ = (\U0|y2[0]~2_combout\ & ((\U0|VGA_R~2_combout\) # ((\U0|y2[0]~4_combout\)))) # (!\U0|y2[0]~2_combout\ & (((\U0|VGA_R~6_combout\ & !\U0|y2[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R~2_combout\,
	datab => \U0|VGA_R~6_combout\,
	datac => \U0|y2[0]~2_combout\,
	datad => \U0|y2[0]~4_combout\,
	combout => \U0|f2y2[4]~5_combout\);

-- Location: LCCOMB_X42_Y7_N22
\U0|f2y2[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2[4]~6_combout\ = (\U0|y2[0]~4_combout\ & ((\U0|f2y2[4]~5_combout\ & (\U0|VGA_R~3_combout\)) # (!\U0|f2y2[4]~5_combout\ & ((\U0|VGA_R~12_combout\))))) # (!\U0|y2[0]~4_combout\ & (((\U0|f2y2[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R~3_combout\,
	datab => \U0|y2[0]~4_combout\,
	datac => \U0|VGA_R~12_combout\,
	datad => \U0|f2y2[4]~5_combout\,
	combout => \U0|f2y2[4]~6_combout\);

-- Location: LCCOMB_X43_Y7_N26
\U1|player[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[3]~9_combout\ = (\U1|player\(3) & (((\U1|used\(3)) # (!\U1|Equal4~0_combout\)) # (!\U1|p~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|p~2_combout\,
	datab => \U1|used\(3),
	datac => \U1|player\(3),
	datad => \U1|Equal4~0_combout\,
	combout => \U1|player[3]~9_combout\);

-- Location: LCCOMB_X42_Y7_N6
\U1|player[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|player[3]~10_combout\ = (\U1|player[3]~9_combout\) # ((!\U1|used\(3) & (\U1|player[2]~1_combout\ & \U1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(3),
	datab => \U1|player[2]~1_combout\,
	datac => \U1|Equal4~0_combout\,
	datad => \U1|player[3]~9_combout\,
	combout => \U1|player[3]~10_combout\);

-- Location: FF_X42_Y7_N7
\U1|player[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~input_o\,
	d => \U1|player[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|player\(3));

-- Location: LCCOMB_X42_Y7_N24
\U0|VGA_R~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R~7_combout\ = (\U1|used\(3) & !\U1|player\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|used\(3),
	datad => \U1|player\(3),
	combout => \U0|VGA_R~7_combout\);

-- Location: LCCOMB_X39_Y7_N8
\U0|f2y2[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2[4]~7_combout\ = (\U0|y2[0]~18_combout\ & (((\U0|y2[0]~5_combout\)))) # (!\U0|y2[0]~18_combout\ & ((\U0|y2[0]~5_combout\ & (\U0|f2y2[4]~6_combout\)) # (!\U0|y2[0]~5_combout\ & ((\U0|VGA_R~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2[4]~6_combout\,
	datab => \U0|y2[0]~18_combout\,
	datac => \U0|VGA_R~7_combout\,
	datad => \U0|y2[0]~5_combout\,
	combout => \U0|f2y2[4]~7_combout\);

-- Location: LCCOMB_X39_Y7_N20
\U0|f2y2[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2[4]~8_combout\ = (\U0|f2y2[4]~7_combout\ & (((\U0|VGA_R~15_combout\) # (!\U0|y2[0]~18_combout\)))) # (!\U0|f2y2[4]~7_combout\ & (\U0|VGA_R~17_combout\ & ((\U0|y2[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R~17_combout\,
	datab => \U0|VGA_R~15_combout\,
	datac => \U0|f2y2[4]~7_combout\,
	datad => \U0|y2[0]~18_combout\,
	combout => \U0|f2y2[4]~8_combout\);

-- Location: LCCOMB_X40_Y7_N14
\U0|f2y2[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2[4]~9_combout\ = (\U0|VGA_B[0]~0_combout\ & ((\U0|f2y2[4]~4_combout\) # ((\U0|f2y2[4]~11_combout\ & \U0|f2y2[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2[4]~11_combout\,
	datab => \U0|f2y2[4]~4_combout\,
	datac => \U0|VGA_B[0]~0_combout\,
	datad => \U0|f2y2[4]~8_combout\,
	combout => \U0|f2y2[4]~9_combout\);

-- Location: CLKCTRL_G15
\U0|f2y2[4]~9clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|f2y2[4]~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|f2y2[4]~9clkctrl_outclk\);

-- Location: LCCOMB_X41_Y8_N28
\U0|f2y1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y1\(8) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add23~0_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2y1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2y1\(8),
	datac => \U0|Add23~0_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y1\(8));

-- Location: LCCOMB_X40_Y9_N26
\U0|Add23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add23~1_combout\ = (\U0|fig_yShift\(0) & !\U0|fig_yShift\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|fig_yShift\(0),
	datad => \U0|fig_yShift\(1),
	combout => \U0|Add23~1_combout\);

-- Location: LCCOMB_X41_Y8_N30
\U0|f2y1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y1\(7) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|Add23~1_combout\)) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2y1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add23~1_combout\,
	datac => \U0|f2y1\(7),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y1\(7));

-- Location: LCCOMB_X40_Y9_N4
\U0|Add20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add20~1_combout\ = \U0|fig_yShift\(0) $ (\U0|fig_yShift\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|fig_yShift\(0),
	datad => \U0|fig_yShift\(1),
	combout => \U0|Add20~1_combout\);

-- Location: LCCOMB_X41_Y8_N24
\U0|f2y1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y1\(6) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|Add20~1_combout\)) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2y1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add20~1_combout\,
	datab => \U0|f2y1\(6),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y1\(6));

-- Location: LCCOMB_X41_Y8_N26
\U0|f2y1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y1\(5) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (!\U0|fig_yShift\(0))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2y1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(0),
	datac => \U0|f2y1\(5),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y1\(5));

-- Location: LCCOMB_X40_Y11_N14
\U0|LessThan36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan36~0_combout\ = (\U0|U1|row\(3) & ((\U0|U1|row\(2)) # ((\U0|U1|row\(0)) # (\U0|U1|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|U1|row\(3),
	datac => \U0|U1|row\(0),
	datad => \U0|U1|row\(1),
	combout => \U0|LessThan36~0_combout\);

-- Location: LCCOMB_X42_Y8_N10
\U0|LessThan36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan36~1_combout\ = (\U0|f2y1\(5) & (\U0|U1|row\(5) & ((\U0|U1|row\(4)) # (\U0|LessThan36~0_combout\)))) # (!\U0|f2y1\(5) & ((\U0|U1|row\(4)) # ((\U0|LessThan36~0_combout\) # (\U0|U1|row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(4),
	datab => \U0|f2y1\(5),
	datac => \U0|LessThan36~0_combout\,
	datad => \U0|U1|row\(5),
	combout => \U0|LessThan36~1_combout\);

-- Location: LCCOMB_X42_Y8_N20
\U0|LessThan36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan36~2_combout\ = (\U0|f2y1\(6) & (\U0|U1|row\(6) & \U0|LessThan36~1_combout\)) # (!\U0|f2y1\(6) & ((\U0|U1|row\(6)) # (\U0|LessThan36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y1\(6),
	datac => \U0|U1|row\(6),
	datad => \U0|LessThan36~1_combout\,
	combout => \U0|LessThan36~2_combout\);

-- Location: LCCOMB_X42_Y8_N26
\U0|LessThan36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan36~3_combout\ = (\U0|U1|row\(7) & ((\U0|LessThan36~2_combout\) # (!\U0|f2y1\(7)))) # (!\U0|U1|row\(7) & (!\U0|f2y1\(7) & \U0|LessThan36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(7),
	datac => \U0|f2y1\(7),
	datad => \U0|LessThan36~2_combout\,
	combout => \U0|LessThan36~3_combout\);

-- Location: LCCOMB_X38_Y7_N12
\U0|FSM~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~34_combout\ = (\U0|FSM~21_combout\) # (!\U0|FSM~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~33_combout\,
	datad => \U0|FSM~21_combout\,
	combout => \U0|FSM~34_combout\);

-- Location: LCCOMB_X38_Y7_N30
\U0|FSM~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~35_combout\ = (\U0|FSM~29_combout\) # (!\U0|FSM~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~33_combout\,
	datad => \U0|FSM~29_combout\,
	combout => \U0|FSM~35_combout\);

-- Location: LCCOMB_X38_Y7_N6
\U0|VGA_R[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~23_combout\ = (\U0|FSM~21_combout\) # ((!\U0|FSM~79_combout\ & !\U0|FSM~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|FSM~79_combout\,
	datac => \U0|FSM~21_combout\,
	datad => \U0|FSM~26_combout\,
	combout => \U0|VGA_R[0]~23_combout\);

-- Location: LCCOMB_X38_Y7_N28
\U0|fig_xShift[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~3_combout\ = (\U0|FSM~34_combout\ & (\U0|fig_yShift[0]~2_combout\ & (\U0|FSM~35_combout\ & \U0|VGA_R[0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~34_combout\,
	datab => \U0|fig_yShift[0]~2_combout\,
	datac => \U0|FSM~35_combout\,
	datad => \U0|VGA_R[0]~23_combout\,
	combout => \U0|fig_xShift[0]~3_combout\);

-- Location: LCCOMB_X39_Y8_N0
\U0|FSM~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~42_combout\ = (\U0|FSM~79_combout\ & !\U0|FSM~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~79_combout\,
	datac => \U0|FSM~29_combout\,
	combout => \U0|FSM~42_combout\);

-- Location: LCCOMB_X39_Y8_N18
\U0|FSM~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~41_combout\ = (\U0|FSM~79_combout\ & !\U0|FSM~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|FSM~79_combout\,
	datad => \U0|FSM~38_combout\,
	combout => \U0|FSM~41_combout\);

-- Location: LCCOMB_X39_Y8_N10
\U0|fig_xShift[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~10_combout\ = (!\U0|FSM~40_combout\ & ((\U0|FSM~41_combout\) # ((\U0|FSM~43_combout\ & \U0|y2[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~40_combout\,
	datab => \U0|FSM~41_combout\,
	datac => \U0|FSM~43_combout\,
	datad => \U0|y2[0]~5_combout\,
	combout => \U0|fig_xShift[0]~10_combout\);

-- Location: LCCOMB_X39_Y8_N26
\U0|fig_xShift[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~11_combout\ = (\U0|FSM~40_combout\ & (((\U0|fig_xShift[0]~10_combout\)))) # (!\U0|FSM~40_combout\ & ((\U0|fig_xShift[0]~3_combout\ & (\U0|FSM~42_combout\)) # (!\U0|fig_xShift[0]~3_combout\ & ((\U0|fig_xShift[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~40_combout\,
	datab => \U0|fig_xShift[0]~3_combout\,
	datac => \U0|FSM~42_combout\,
	datad => \U0|fig_xShift[0]~10_combout\,
	combout => \U0|fig_xShift[0]~11_combout\);

-- Location: LCCOMB_X36_Y10_N0
\U0|fig_xShift[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift\(0) = (GLOBAL(\U0|fig_xShift[0]~9clkctrl_outclk\) & ((\U0|fig_xShift[0]~11_combout\))) # (!GLOBAL(\U0|fig_xShift[0]~9clkctrl_outclk\) & (\U0|fig_xShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(0),
	datac => \U0|fig_xShift[0]~11_combout\,
	datad => \U0|fig_xShift[0]~9clkctrl_outclk\,
	combout => \U0|fig_xShift\(0));

-- Location: LCCOMB_X39_Y8_N6
\U0|VGA_G~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~41_combout\ = (!\U0|FSM~79_combout\ & (!\U0|FSM~21_combout\ & (\U0|FSM~26_combout\ & !\U0|FSM~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~79_combout\,
	datab => \U0|FSM~21_combout\,
	datac => \U0|FSM~26_combout\,
	datad => \U0|FSM~33_combout\,
	combout => \U0|VGA_G~41_combout\);

-- Location: LCCOMB_X39_Y8_N14
\U0|fig_xShift[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[1]~13_combout\ = (\U0|f2y2[4]~11_combout\ & ((\U0|VGA_G~41_combout\) # ((\U0|FSM~26_combout\ & !\U0|FSM~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~26_combout\,
	datab => \U0|VGA_G~41_combout\,
	datac => \U0|FSM~38_combout\,
	datad => \U0|f2y2[4]~11_combout\,
	combout => \U0|fig_xShift[1]~13_combout\);

-- Location: LCCOMB_X39_Y8_N22
\U0|fig_xShift[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[1]~12_combout\ = (\U0|fig_xShift[0]~3_combout\ & ((\U0|FSM~40_combout\ & (\U0|fig_xShift[1]~13_combout\)) # (!\U0|FSM~40_combout\ & ((!\U0|FSM~42_combout\))))) # (!\U0|fig_xShift[0]~3_combout\ & (\U0|fig_xShift[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift[1]~13_combout\,
	datab => \U0|fig_xShift[0]~3_combout\,
	datac => \U0|FSM~42_combout\,
	datad => \U0|FSM~40_combout\,
	combout => \U0|fig_xShift[1]~12_combout\);

-- Location: LCCOMB_X36_Y10_N26
\U0|fig_xShift[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift\(1) = (GLOBAL(\U0|fig_xShift[0]~9clkctrl_outclk\) & ((\U0|fig_xShift[1]~12_combout\))) # (!GLOBAL(\U0|fig_xShift[0]~9clkctrl_outclk\) & (\U0|fig_xShift\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|fig_xShift\(1),
	datac => \U0|fig_xShift[1]~12_combout\,
	datad => \U0|fig_xShift[0]~9clkctrl_outclk\,
	combout => \U0|fig_xShift\(1));

-- Location: LCCOMB_X36_Y10_N28
\U0|Mult1|mult_core|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult1|mult_core|_~0_combout\ = (\U0|fig_xShift\(0) & \U0|fig_xShift\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(0),
	datab => \U0|fig_xShift\(1),
	combout => \U0|Mult1|mult_core|_~0_combout\);

-- Location: LCCOMB_X37_Y10_N30
\U0|Mult1|mult_core|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult1|mult_core|_~1_combout\ = (!\U0|fig_xShift\(0) & \U0|fig_xShift\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(0),
	datac => \U0|fig_xShift\(1),
	combout => \U0|Mult1|mult_core|_~1_combout\);

-- Location: LCCOMB_X36_Y10_N30
\U0|Mult1|mult_core|romout[0][7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Mult1|mult_core|romout[0][7]~0_combout\ = \U0|fig_xShift\(1) $ (\U0|fig_xShift\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(1),
	datac => \U0|fig_xShift\(0),
	combout => \U0|Mult1|mult_core|romout[0][7]~0_combout\);

-- Location: LCCOMB_X37_Y12_N8
\U0|Add21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add21~0_combout\ = \U0|fig_xShift\(0) $ (VCC)
-- \U0|Add21~1\ = CARRY(\U0|fig_xShift\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(0),
	datad => VCC,
	combout => \U0|Add21~0_combout\,
	cout => \U0|Add21~1\);

-- Location: LCCOMB_X37_Y12_N10
\U0|Add21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add21~2_combout\ = (\U0|Mult1|mult_core|romout[0][7]~0_combout\ & (!\U0|Add21~1\)) # (!\U0|Mult1|mult_core|romout[0][7]~0_combout\ & ((\U0|Add21~1\) # (GND)))
-- \U0|Add21~3\ = CARRY((!\U0|Add21~1\) # (!\U0|Mult1|mult_core|romout[0][7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult1|mult_core|romout[0][7]~0_combout\,
	datad => VCC,
	cin => \U0|Add21~1\,
	combout => \U0|Add21~2_combout\,
	cout => \U0|Add21~3\);

-- Location: LCCOMB_X37_Y12_N12
\U0|Add21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add21~4_combout\ = (\U0|Mult1|mult_core|_~1_combout\ & (\U0|Add21~3\ $ (GND))) # (!\U0|Mult1|mult_core|_~1_combout\ & (!\U0|Add21~3\ & VCC))
-- \U0|Add21~5\ = CARRY((\U0|Mult1|mult_core|_~1_combout\ & !\U0|Add21~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult1|mult_core|_~1_combout\,
	datad => VCC,
	cin => \U0|Add21~3\,
	combout => \U0|Add21~4_combout\,
	cout => \U0|Add21~5\);

-- Location: LCCOMB_X37_Y12_N14
\U0|Add21~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add21~6_combout\ = (\U0|Mult1|mult_core|_~0_combout\ & (!\U0|Add21~5\)) # (!\U0|Mult1|mult_core|_~0_combout\ & ((\U0|Add21~5\) # (GND)))
-- \U0|Add21~7\ = CARRY((!\U0|Add21~5\) # (!\U0|Mult1|mult_core|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Mult1|mult_core|_~0_combout\,
	datad => VCC,
	cin => \U0|Add21~5\,
	combout => \U0|Add21~6_combout\,
	cout => \U0|Add21~7\);

-- Location: LCCOMB_X37_Y12_N20
\U0|f2x1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(9) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add21~6_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x1\(9),
	datac => \U0|Add21~6_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(9));

-- Location: LCCOMB_X37_Y12_N6
\U0|f2x1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(8) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add21~4_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(8),
	datab => \U0|Add21~4_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(8));

-- Location: LCCOMB_X37_Y12_N18
\U0|f2x1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(7) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add21~2_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x1\(7),
	datac => \U0|Add21~2_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(7));

-- Location: LCCOMB_X37_Y12_N0
\U0|f2x1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(6) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add21~0_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x1\(6),
	datac => \U0|Add21~0_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(6));

-- Location: LCCOMB_X38_Y12_N22
\U0|f2x1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(5) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|fig_xShift\(1))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2x1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(1),
	datac => \U0|f2x1\(5),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(5));

-- Location: LCCOMB_X38_Y12_N24
\U0|f2x1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(4) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|fig_xShift\(0)))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x1\(4),
	datac => \U0|fig_xShift\(0),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(4));

-- Location: LCCOMB_X37_Y10_N0
\U0|Add21~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add21~11_cout\ = CARRY(\U0|fig_xShift\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(0),
	datad => VCC,
	cout => \U0|Add21~11_cout\);

-- Location: LCCOMB_X37_Y10_N2
\U0|Add21~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add21~12_combout\ = (\U0|fig_xShift\(1) & (\U0|Add21~11_cout\ & VCC)) # (!\U0|fig_xShift\(1) & (!\U0|Add21~11_cout\))
-- \U0|Add21~13\ = CARRY((!\U0|fig_xShift\(1) & !\U0|Add21~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(1),
	datad => VCC,
	cin => \U0|Add21~11_cout\,
	combout => \U0|Add21~12_combout\,
	cout => \U0|Add21~13\);

-- Location: LCCOMB_X37_Y10_N4
\U0|Add21~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add21~14_combout\ = !\U0|Add21~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add21~13\,
	combout => \U0|Add21~14_combout\);

-- Location: LCCOMB_X38_Y12_N30
\U0|f2x1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(3) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|Add21~14_combout\)) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2x1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add21~14_combout\,
	datac => \U0|f2x1\(3),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(3));

-- Location: LCCOMB_X37_Y12_N30
\U0|f2x1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(2) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|Add21~12_combout\)) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2x1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add21~12_combout\,
	datac => \U0|f2x1\(2),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(2));

-- Location: LCCOMB_X37_Y12_N4
\U0|f2x1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(1) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((!\U0|fig_xShift\(0)))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x1\(1),
	datac => \U0|fig_xShift\(0),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(1));

-- Location: LCCOMB_X36_Y12_N6
\U0|LessThan34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~1_cout\ = CARRY(\U0|U1|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(0),
	datad => VCC,
	cout => \U0|LessThan34~1_cout\);

-- Location: LCCOMB_X36_Y12_N8
\U0|LessThan34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~3_cout\ = CARRY((\U0|f2x1\(1) & ((!\U0|LessThan34~1_cout\) # (!\U0|U1|column\(1)))) # (!\U0|f2x1\(1) & (!\U0|U1|column\(1) & !\U0|LessThan34~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(1),
	datab => \U0|U1|column\(1),
	datad => VCC,
	cin => \U0|LessThan34~1_cout\,
	cout => \U0|LessThan34~3_cout\);

-- Location: LCCOMB_X36_Y12_N10
\U0|LessThan34~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~5_cout\ = CARRY((\U0|f2x1\(2) & (\U0|U1|column\(2) & !\U0|LessThan34~3_cout\)) # (!\U0|f2x1\(2) & ((\U0|U1|column\(2)) # (!\U0|LessThan34~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(2),
	datab => \U0|U1|column\(2),
	datad => VCC,
	cin => \U0|LessThan34~3_cout\,
	cout => \U0|LessThan34~5_cout\);

-- Location: LCCOMB_X36_Y12_N12
\U0|LessThan34~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~7_cout\ = CARRY((\U0|f2x1\(3) & ((!\U0|LessThan34~5_cout\) # (!\U0|U1|column\(3)))) # (!\U0|f2x1\(3) & (!\U0|U1|column\(3) & !\U0|LessThan34~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(3),
	datab => \U0|U1|column\(3),
	datad => VCC,
	cin => \U0|LessThan34~5_cout\,
	cout => \U0|LessThan34~7_cout\);

-- Location: LCCOMB_X36_Y12_N14
\U0|LessThan34~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~9_cout\ = CARRY((\U0|f2x1\(4) & (\U0|U1|column\(4) & !\U0|LessThan34~7_cout\)) # (!\U0|f2x1\(4) & ((\U0|U1|column\(4)) # (!\U0|LessThan34~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(4),
	datab => \U0|U1|column\(4),
	datad => VCC,
	cin => \U0|LessThan34~7_cout\,
	cout => \U0|LessThan34~9_cout\);

-- Location: LCCOMB_X36_Y12_N16
\U0|LessThan34~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~11_cout\ = CARRY((\U0|f2x1\(5) & ((!\U0|LessThan34~9_cout\) # (!\U0|U1|column\(5)))) # (!\U0|f2x1\(5) & (!\U0|U1|column\(5) & !\U0|LessThan34~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(5),
	datab => \U0|U1|column\(5),
	datad => VCC,
	cin => \U0|LessThan34~9_cout\,
	cout => \U0|LessThan34~11_cout\);

-- Location: LCCOMB_X36_Y12_N18
\U0|LessThan34~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~13_cout\ = CARRY((\U0|U1|column\(6) & ((!\U0|LessThan34~11_cout\) # (!\U0|f2x1\(6)))) # (!\U0|U1|column\(6) & (!\U0|f2x1\(6) & !\U0|LessThan34~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(6),
	datab => \U0|f2x1\(6),
	datad => VCC,
	cin => \U0|LessThan34~11_cout\,
	cout => \U0|LessThan34~13_cout\);

-- Location: LCCOMB_X36_Y12_N20
\U0|LessThan34~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~15_cout\ = CARRY((\U0|U1|column\(7) & (\U0|f2x1\(7) & !\U0|LessThan34~13_cout\)) # (!\U0|U1|column\(7) & ((\U0|f2x1\(7)) # (!\U0|LessThan34~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(7),
	datab => \U0|f2x1\(7),
	datad => VCC,
	cin => \U0|LessThan34~13_cout\,
	cout => \U0|LessThan34~15_cout\);

-- Location: LCCOMB_X36_Y12_N22
\U0|LessThan34~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~17_cout\ = CARRY((\U0|f2x1\(8) & (\U0|U1|column\(8) & !\U0|LessThan34~15_cout\)) # (!\U0|f2x1\(8) & ((\U0|U1|column\(8)) # (!\U0|LessThan34~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(8),
	datab => \U0|U1|column\(8),
	datad => VCC,
	cin => \U0|LessThan34~15_cout\,
	cout => \U0|LessThan34~17_cout\);

-- Location: LCCOMB_X36_Y12_N24
\U0|LessThan34~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan34~18_combout\ = (\U0|f2x1\(9) & (\U0|LessThan34~17_cout\ & \U0|U1|column\(9))) # (!\U0|f2x1\(9) & ((\U0|LessThan34~17_cout\) # (\U0|U1|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(9),
	datad => \U0|U1|column\(9),
	cin => \U0|LessThan34~17_cout\,
	combout => \U0|LessThan34~18_combout\);

-- Location: LCCOMB_X41_Y8_N0
\U0|Add24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add24~1_cout\ = CARRY(\U0|f2y1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y1\(5),
	datad => VCC,
	cout => \U0|Add24~1_cout\);

-- Location: LCCOMB_X41_Y8_N2
\U0|Add24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add24~2_combout\ = (\U0|f2y1\(6) & (\U0|Add24~1_cout\ & VCC)) # (!\U0|f2y1\(6) & (!\U0|Add24~1_cout\))
-- \U0|Add24~3\ = CARRY((!\U0|f2y1\(6) & !\U0|Add24~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2y1\(6),
	datad => VCC,
	cin => \U0|Add24~1_cout\,
	combout => \U0|Add24~2_combout\,
	cout => \U0|Add24~3\);

-- Location: LCCOMB_X41_Y8_N4
\U0|Add24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add24~4_combout\ = (\U0|f2y1\(7) & (\U0|Add24~3\ $ (GND))) # (!\U0|f2y1\(7) & (!\U0|Add24~3\ & VCC))
-- \U0|Add24~5\ = CARRY((\U0|f2y1\(7) & !\U0|Add24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2y1\(7),
	datad => VCC,
	cin => \U0|Add24~3\,
	combout => \U0|Add24~4_combout\,
	cout => \U0|Add24~5\);

-- Location: LCCOMB_X41_Y8_N6
\U0|Add24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add24~6_combout\ = (\U0|f2y1\(8) & (!\U0|Add24~5\)) # (!\U0|f2y1\(8) & ((\U0|Add24~5\) # (GND)))
-- \U0|Add24~7\ = CARRY((!\U0|Add24~5\) # (!\U0|f2y1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2y1\(8),
	datad => VCC,
	cin => \U0|Add24~5\,
	combout => \U0|Add24~6_combout\,
	cout => \U0|Add24~7\);

-- Location: LCCOMB_X41_Y8_N14
\U0|f2y2[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2\(8) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|Add24~6_combout\)) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2y2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add24~6_combout\,
	datac => \U0|f2y2\(8),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y2\(8));

-- Location: LCCOMB_X41_Y8_N12
\U0|f2y2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2\(7) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add24~4_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2y2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2\(7),
	datac => \U0|Add24~4_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y2\(7));

-- Location: LCCOMB_X42_Y8_N12
\U0|f2y2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2\(6) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add24~2_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2y2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2\(6),
	datac => \U0|Add24~2_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y2\(6));

-- Location: LCCOMB_X41_Y8_N22
\U0|f2y2[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2\(5) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((!\U0|f2y1\(5)))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2y2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2\(5),
	datac => \U0|f2y1\(5),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y2\(5));

-- Location: LCCOMB_X42_Y8_N18
\U0|LessThan37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan37~1_combout\ = (\U0|f2y2\(5) & (((!\U0|U1|row\(4) & \U0|FSM~17_combout\)) # (!\U0|U1|row\(5)))) # (!\U0|f2y2\(5) & (!\U0|U1|row\(4) & (\U0|FSM~17_combout\ & !\U0|U1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(4),
	datab => \U0|f2y2\(5),
	datac => \U0|FSM~17_combout\,
	datad => \U0|U1|row\(5),
	combout => \U0|LessThan37~1_combout\);

-- Location: LCCOMB_X42_Y8_N16
\U0|LessThan37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan37~2_combout\ = (\U0|f2y2\(6) & ((\U0|LessThan37~1_combout\) # (!\U0|U1|row\(6)))) # (!\U0|f2y2\(6) & (!\U0|U1|row\(6) & \U0|LessThan37~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2\(6),
	datac => \U0|U1|row\(6),
	datad => \U0|LessThan37~1_combout\,
	combout => \U0|LessThan37~2_combout\);

-- Location: LCCOMB_X42_Y8_N22
\U0|LessThan37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan37~3_combout\ = (\U0|U1|row\(7) & (\U0|f2y2\(7) & \U0|LessThan37~2_combout\)) # (!\U0|U1|row\(7) & ((\U0|f2y2\(7)) # (\U0|LessThan37~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(7),
	datac => \U0|f2y2\(7),
	datad => \U0|LessThan37~2_combout\,
	combout => \U0|LessThan37~3_combout\);

-- Location: LCCOMB_X40_Y9_N24
\U0|Add20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add20~0_combout\ = (\U0|fig_yShift\(1) & \U0|fig_yShift\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|fig_yShift\(1),
	datac => \U0|fig_yShift\(0),
	combout => \U0|Add20~0_combout\);

-- Location: LCCOMB_X41_Y8_N20
\U0|f2y1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y1\(9) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add20~0_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2y1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2y1\(9),
	datac => \U0|Add20~0_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y1\(9));

-- Location: LCCOMB_X41_Y8_N8
\U0|Add24~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add24~8_combout\ = (\U0|f2y1\(9) & (\U0|Add24~7\ $ (GND))) # (!\U0|f2y1\(9) & (!\U0|Add24~7\ & VCC))
-- \U0|Add24~9\ = CARRY((\U0|f2y1\(9) & !\U0|Add24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y1\(9),
	datad => VCC,
	cin => \U0|Add24~7\,
	combout => \U0|Add24~8_combout\,
	cout => \U0|Add24~9\);

-- Location: LCCOMB_X41_Y8_N10
\U0|Add24~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add24~10_combout\ = \U0|Add24~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add24~9\,
	combout => \U0|Add24~10_combout\);

-- Location: LCCOMB_X41_Y8_N16
\U0|f2y2[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2\(10) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|Add24~10_combout\)) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2y2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add24~10_combout\,
	datab => \U0|f2y2\(10),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2y2\(10));

-- Location: LCCOMB_X41_Y8_N18
\U0|f2y2[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2y2\(9) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add24~8_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2y2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2y2\(9),
	datac => \U0|f2y2[4]~9clkctrl_outclk\,
	datad => \U0|Add24~8_combout\,
	combout => \U0|f2y2\(9));

-- Location: LCCOMB_X42_Y8_N28
\U0|LessThan37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan37~0_combout\ = (\U0|f2y2\(10)) # ((\U0|f2y2\(9)) # ((\U0|f2y2\(8) & !\U0|U1|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2\(10),
	datab => \U0|f2y2\(9),
	datac => \U0|f2y2\(8),
	datad => \U0|U1|row\(8),
	combout => \U0|LessThan37~0_combout\);

-- Location: LCCOMB_X42_Y8_N8
\U0|LessThan37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan37~4_combout\ = (\U0|LessThan37~0_combout\) # ((\U0|LessThan37~3_combout\ & (\U0|U1|row\(8) $ (!\U0|f2y2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(8),
	datab => \U0|f2y2\(8),
	datac => \U0|LessThan37~3_combout\,
	datad => \U0|LessThan37~0_combout\,
	combout => \U0|LessThan37~4_combout\);

-- Location: LCCOMB_X37_Y12_N16
\U0|Add21~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add21~8_combout\ = !\U0|Add21~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add21~7\,
	combout => \U0|Add21~8_combout\);

-- Location: LCCOMB_X37_Y12_N2
\U0|f2x1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x1\(10) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|Add21~8_combout\)) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2x1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add21~8_combout\,
	datab => \U0|f2x1\(10),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x1\(10));

-- Location: LCCOMB_X38_Y12_N0
\U0|Add22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~0_combout\ = (\U0|f2x1\(1) & (\U0|f2x1\(2) $ (VCC))) # (!\U0|f2x1\(1) & (\U0|f2x1\(2) & VCC))
-- \U0|Add22~1\ = CARRY((\U0|f2x1\(1) & \U0|f2x1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(1),
	datab => \U0|f2x1\(2),
	datad => VCC,
	combout => \U0|Add22~0_combout\,
	cout => \U0|Add22~1\);

-- Location: LCCOMB_X38_Y12_N2
\U0|Add22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~2_combout\ = (\U0|f2x1\(3) & (\U0|Add22~1\ & VCC)) # (!\U0|f2x1\(3) & (!\U0|Add22~1\))
-- \U0|Add22~3\ = CARRY((!\U0|f2x1\(3) & !\U0|Add22~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(3),
	datad => VCC,
	cin => \U0|Add22~1\,
	combout => \U0|Add22~2_combout\,
	cout => \U0|Add22~3\);

-- Location: LCCOMB_X38_Y12_N4
\U0|Add22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~4_combout\ = (\U0|f2x1\(4) & ((GND) # (!\U0|Add22~3\))) # (!\U0|f2x1\(4) & (\U0|Add22~3\ $ (GND)))
-- \U0|Add22~5\ = CARRY((\U0|f2x1\(4)) # (!\U0|Add22~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(4),
	datad => VCC,
	cin => \U0|Add22~3\,
	combout => \U0|Add22~4_combout\,
	cout => \U0|Add22~5\);

-- Location: LCCOMB_X38_Y12_N6
\U0|Add22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~6_combout\ = (\U0|f2x1\(5) & (!\U0|Add22~5\)) # (!\U0|f2x1\(5) & ((\U0|Add22~5\) # (GND)))
-- \U0|Add22~7\ = CARRY((!\U0|Add22~5\) # (!\U0|f2x1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(5),
	datad => VCC,
	cin => \U0|Add22~5\,
	combout => \U0|Add22~6_combout\,
	cout => \U0|Add22~7\);

-- Location: LCCOMB_X38_Y12_N8
\U0|Add22~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~8_combout\ = (\U0|f2x1\(6) & ((GND) # (!\U0|Add22~7\))) # (!\U0|f2x1\(6) & (\U0|Add22~7\ $ (GND)))
-- \U0|Add22~9\ = CARRY((\U0|f2x1\(6)) # (!\U0|Add22~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(6),
	datad => VCC,
	cin => \U0|Add22~7\,
	combout => \U0|Add22~8_combout\,
	cout => \U0|Add22~9\);

-- Location: LCCOMB_X38_Y12_N10
\U0|Add22~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~10_combout\ = (\U0|f2x1\(7) & (!\U0|Add22~9\)) # (!\U0|f2x1\(7) & ((\U0|Add22~9\) # (GND)))
-- \U0|Add22~11\ = CARRY((!\U0|Add22~9\) # (!\U0|f2x1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x1\(7),
	datad => VCC,
	cin => \U0|Add22~9\,
	combout => \U0|Add22~10_combout\,
	cout => \U0|Add22~11\);

-- Location: LCCOMB_X38_Y12_N12
\U0|Add22~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~12_combout\ = (\U0|f2x1\(8) & (\U0|Add22~11\ $ (GND))) # (!\U0|f2x1\(8) & (!\U0|Add22~11\ & VCC))
-- \U0|Add22~13\ = CARRY((\U0|f2x1\(8) & !\U0|Add22~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x1\(8),
	datad => VCC,
	cin => \U0|Add22~11\,
	combout => \U0|Add22~12_combout\,
	cout => \U0|Add22~13\);

-- Location: LCCOMB_X38_Y12_N14
\U0|Add22~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~14_combout\ = (\U0|f2x1\(9) & (!\U0|Add22~13\)) # (!\U0|f2x1\(9) & ((\U0|Add22~13\) # (GND)))
-- \U0|Add22~15\ = CARRY((!\U0|Add22~13\) # (!\U0|f2x1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(9),
	datad => VCC,
	cin => \U0|Add22~13\,
	combout => \U0|Add22~14_combout\,
	cout => \U0|Add22~15\);

-- Location: LCCOMB_X39_Y12_N30
\U0|f2x2[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(9) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add22~14_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x2\(9),
	datac => \U0|f2y2[4]~9clkctrl_outclk\,
	datad => \U0|Add22~14_combout\,
	combout => \U0|f2x2\(9));

-- Location: LCCOMB_X38_Y12_N26
\U0|f2x2[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(8) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add22~12_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x2\(8),
	datac => \U0|Add22~12_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x2\(8));

-- Location: LCCOMB_X38_Y12_N28
\U0|f2x2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(7) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add22~10_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x2\(7),
	datac => \U0|f2y2[4]~9clkctrl_outclk\,
	datad => \U0|Add22~10_combout\,
	combout => \U0|f2x2\(7));

-- Location: LCCOMB_X39_Y12_N4
\U0|f2x2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(6) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|Add22~8_combout\)) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2x2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add22~8_combout\,
	datac => \U0|f2x2\(6),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x2\(6));

-- Location: LCCOMB_X39_Y12_N6
\U0|f2x2[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(5) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add22~6_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x2\(5),
	datab => \U0|Add22~6_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x2\(5));

-- Location: LCCOMB_X39_Y12_N0
\U0|f2x2[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(4) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add22~4_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x2\(4),
	datac => \U0|Add22~4_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x2\(4));

-- Location: LCCOMB_X39_Y12_N28
\U0|f2x2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(3) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add22~2_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x2\(3),
	datac => \U0|Add22~2_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x2\(3));

-- Location: LCCOMB_X39_Y12_N2
\U0|f2x2[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(2) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add22~0_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x2\(2),
	datac => \U0|Add22~0_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x2\(2));

-- Location: LCCOMB_X37_Y12_N24
\U0|f2x2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(1) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (!\U0|f2x1\(1))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2x2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x1\(1),
	datab => \U0|f2x2\(1),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x2\(1));

-- Location: LCCOMB_X39_Y12_N10
\U0|LessThan35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan35~1_cout\ = CARRY((!\U0|U1|column\(1) & \U0|f2x2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(1),
	datab => \U0|f2x2\(1),
	datad => VCC,
	cout => \U0|LessThan35~1_cout\);

-- Location: LCCOMB_X39_Y12_N12
\U0|LessThan35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan35~3_cout\ = CARRY((\U0|U1|column\(2) & ((!\U0|LessThan35~1_cout\) # (!\U0|f2x2\(2)))) # (!\U0|U1|column\(2) & (!\U0|f2x2\(2) & !\U0|LessThan35~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(2),
	datab => \U0|f2x2\(2),
	datad => VCC,
	cin => \U0|LessThan35~1_cout\,
	cout => \U0|LessThan35~3_cout\);

-- Location: LCCOMB_X39_Y12_N14
\U0|LessThan35~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan35~5_cout\ = CARRY((\U0|U1|column\(3) & (\U0|f2x2\(3) & !\U0|LessThan35~3_cout\)) # (!\U0|U1|column\(3) & ((\U0|f2x2\(3)) # (!\U0|LessThan35~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(3),
	datab => \U0|f2x2\(3),
	datad => VCC,
	cin => \U0|LessThan35~3_cout\,
	cout => \U0|LessThan35~5_cout\);

-- Location: LCCOMB_X39_Y12_N16
\U0|LessThan35~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan35~7_cout\ = CARRY((\U0|U1|column\(4) & ((!\U0|LessThan35~5_cout\) # (!\U0|f2x2\(4)))) # (!\U0|U1|column\(4) & (!\U0|f2x2\(4) & !\U0|LessThan35~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(4),
	datab => \U0|f2x2\(4),
	datad => VCC,
	cin => \U0|LessThan35~5_cout\,
	cout => \U0|LessThan35~7_cout\);

-- Location: LCCOMB_X39_Y12_N18
\U0|LessThan35~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan35~9_cout\ = CARRY((\U0|f2x2\(5) & ((!\U0|LessThan35~7_cout\) # (!\U0|U1|column\(5)))) # (!\U0|f2x2\(5) & (!\U0|U1|column\(5) & !\U0|LessThan35~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x2\(5),
	datab => \U0|U1|column\(5),
	datad => VCC,
	cin => \U0|LessThan35~7_cout\,
	cout => \U0|LessThan35~9_cout\);

-- Location: LCCOMB_X39_Y12_N20
\U0|LessThan35~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan35~11_cout\ = CARRY((\U0|U1|column\(6) & ((!\U0|LessThan35~9_cout\) # (!\U0|f2x2\(6)))) # (!\U0|U1|column\(6) & (!\U0|f2x2\(6) & !\U0|LessThan35~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(6),
	datab => \U0|f2x2\(6),
	datad => VCC,
	cin => \U0|LessThan35~9_cout\,
	cout => \U0|LessThan35~11_cout\);

-- Location: LCCOMB_X39_Y12_N22
\U0|LessThan35~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan35~13_cout\ = CARRY((\U0|U1|column\(7) & (\U0|f2x2\(7) & !\U0|LessThan35~11_cout\)) # (!\U0|U1|column\(7) & ((\U0|f2x2\(7)) # (!\U0|LessThan35~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(7),
	datab => \U0|f2x2\(7),
	datad => VCC,
	cin => \U0|LessThan35~11_cout\,
	cout => \U0|LessThan35~13_cout\);

-- Location: LCCOMB_X39_Y12_N24
\U0|LessThan35~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan35~15_cout\ = CARRY((\U0|f2x2\(8) & (\U0|U1|column\(8) & !\U0|LessThan35~13_cout\)) # (!\U0|f2x2\(8) & ((\U0|U1|column\(8)) # (!\U0|LessThan35~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x2\(8),
	datab => \U0|U1|column\(8),
	datad => VCC,
	cin => \U0|LessThan35~13_cout\,
	cout => \U0|LessThan35~15_cout\);

-- Location: LCCOMB_X39_Y12_N26
\U0|LessThan35~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan35~16_combout\ = (\U0|f2x2\(9) & ((!\U0|U1|column\(9)) # (!\U0|LessThan35~15_cout\))) # (!\U0|f2x2\(9) & (!\U0|LessThan35~15_cout\ & !\U0|U1|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2x2\(9),
	datad => \U0|U1|column\(9),
	cin => \U0|LessThan35~15_cout\,
	combout => \U0|LessThan35~16_combout\);

-- Location: LCCOMB_X38_Y12_N16
\U0|Add22~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~16_combout\ = (\U0|f2x1\(10) & (\U0|Add22~15\ $ (GND))) # (!\U0|f2x1\(10) & (!\U0|Add22~15\ & VCC))
-- \U0|Add22~17\ = CARRY((\U0|f2x1\(10) & !\U0|Add22~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x1\(10),
	datad => VCC,
	cin => \U0|Add22~15\,
	combout => \U0|Add22~16_combout\,
	cout => \U0|Add22~17\);

-- Location: LCCOMB_X38_Y12_N18
\U0|Add22~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add22~18_combout\ = \U0|Add22~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add22~17\,
	combout => \U0|Add22~18_combout\);

-- Location: LCCOMB_X39_Y12_N8
\U0|f2x2[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(11) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|Add22~18_combout\)) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|f2x2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add22~18_combout\,
	datac => \U0|f2x2\(11),
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x2\(11));

-- Location: LCCOMB_X38_Y12_N20
\U0|f2x2[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|f2x2\(10) = (GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & ((\U0|Add22~16_combout\))) # (!GLOBAL(\U0|f2y2[4]~9clkctrl_outclk\) & (\U0|f2x2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|f2x2\(10),
	datac => \U0|Add22~16_combout\,
	datad => \U0|f2y2[4]~9clkctrl_outclk\,
	combout => \U0|f2x2\(10));

-- Location: LCCOMB_X42_Y12_N28
\U0|FSM~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~16_combout\ = (\U0|f2y1\(9)) # ((!\U0|LessThan35~16_combout\ & (!\U0|f2x2\(11) & !\U0|f2x2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y1\(9),
	datab => \U0|LessThan35~16_combout\,
	datac => \U0|f2x2\(11),
	datad => \U0|f2x2\(10),
	combout => \U0|FSM~16_combout\);

-- Location: LCCOMB_X42_Y12_N6
\U0|FSM~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~18_combout\ = (((\U0|f2x1\(10)) # (\U0|FSM~16_combout\)) # (!\U0|LessThan37~4_combout\)) # (!\U0|LessThan34~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan34~18_combout\,
	datab => \U0|LessThan37~4_combout\,
	datac => \U0|f2x1\(10),
	datad => \U0|FSM~16_combout\,
	combout => \U0|FSM~18_combout\);

-- Location: LCCOMB_X42_Y8_N24
\U0|FSM~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~19_combout\ = (\U0|FSM~18_combout\) # ((\U0|U1|row\(8) & (\U0|f2y1\(8) & !\U0|LessThan36~3_combout\)) # (!\U0|U1|row\(8) & ((\U0|f2y1\(8)) # (!\U0|LessThan36~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(8),
	datab => \U0|f2y1\(8),
	datac => \U0|LessThan36~3_combout\,
	datad => \U0|FSM~18_combout\,
	combout => \U0|FSM~19_combout\);

-- Location: LCCOMB_X39_Y7_N24
\U0|VGA_R[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~16_combout\ = (\U0|FSM~34_combout\ & (((\U0|FSM~43_combout\ & !\U0|VGA_R~15_combout\)))) # (!\U0|FSM~34_combout\ & (!\U0|VGA_R~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R~7_combout\,
	datab => \U0|FSM~34_combout\,
	datac => \U0|FSM~43_combout\,
	datad => \U0|VGA_R~15_combout\,
	combout => \U0|VGA_R[0]~16_combout\);

-- Location: LCCOMB_X38_Y7_N26
\U0|VGA_R[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~11_combout\ = (\U0|y2[0]~2_combout\ & ((\U0|FSM~42_combout\ & (!\U0|VGA_R~3_combout\)) # (!\U0|FSM~42_combout\ & ((!\U0|VGA_R~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R~3_combout\,
	datab => \U0|y2[0]~2_combout\,
	datac => \U0|FSM~42_combout\,
	datad => \U0|VGA_R~2_combout\,
	combout => \U0|VGA_R[0]~11_combout\);

-- Location: LCCOMB_X39_Y7_N28
\U0|VGA_R[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~13_combout\ = (\U0|FSM~27_combout\ & (!\U0|VGA_R~12_combout\)) # (!\U0|FSM~27_combout\ & (((!\U0|VGA_R~6_combout\ & !\U0|FSM~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~27_combout\,
	datab => \U0|VGA_R~12_combout\,
	datac => \U0|VGA_R~6_combout\,
	datad => \U0|FSM~35_combout\,
	combout => \U0|VGA_R[0]~13_combout\);

-- Location: LCCOMB_X39_Y7_N4
\U0|VGA_R[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~14_combout\ = (!\U0|FSM~43_combout\ & (\U0|FSM~34_combout\ & ((\U0|VGA_R[0]~11_combout\) # (\U0|VGA_R[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~43_combout\,
	datab => \U0|FSM~34_combout\,
	datac => \U0|VGA_R[0]~11_combout\,
	datad => \U0|VGA_R[0]~13_combout\,
	combout => \U0|VGA_R[0]~14_combout\);

-- Location: LCCOMB_X39_Y7_N10
\U0|VGA_R[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~18_combout\ = (\U0|FSM~39_combout\ & (((\U0|VGA_R[0]~16_combout\) # (\U0|VGA_R[0]~14_combout\)))) # (!\U0|FSM~39_combout\ & (!\U0|VGA_R~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R~17_combout\,
	datab => \U0|VGA_R[0]~16_combout\,
	datac => \U0|VGA_R[0]~14_combout\,
	datad => \U0|FSM~39_combout\,
	combout => \U0|VGA_R[0]~18_combout\);

-- Location: LCCOMB_X42_Y7_N16
\U0|VGA_R[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~8_combout\ = (\U0|VGA_R~6_combout\ & (\U0|FSM~35_combout\ & ((!\U0|VGA_R~7_combout\)))) # (!\U0|VGA_R~6_combout\ & ((\U0|FSM~34_combout\) # ((\U0|FSM~35_combout\ & !\U0|VGA_R~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R~6_combout\,
	datab => \U0|FSM~35_combout\,
	datac => \U0|FSM~34_combout\,
	datad => \U0|VGA_R~7_combout\,
	combout => \U0|VGA_R[0]~8_combout\);

-- Location: LCCOMB_X39_Y7_N30
\U0|VGA_R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~4_combout\ = (!\U0|VGA_R~2_combout\ & (!\U0|VGA_R~3_combout\ & (!\U1|used\(1) & \U0|VGA_R[0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R~2_combout\,
	datab => \U0|VGA_R~3_combout\,
	datac => \U1|used\(1),
	datad => \U0|VGA_R[0]~23_combout\,
	combout => \U0|VGA_R[0]~4_combout\);

-- Location: LCCOMB_X39_Y7_N6
\U0|VGA_R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~5_combout\ = (\U0|FSM~34_combout\ & (\U0|FSM~35_combout\ & ((\U1|player\(2)) # (!\U1|used\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(2),
	datab => \U0|FSM~34_combout\,
	datac => \U1|used\(2),
	datad => \U0|FSM~35_combout\,
	combout => \U0|VGA_R[0]~5_combout\);

-- Location: LCCOMB_X38_Y7_N4
\U0|VGA_R[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~9_combout\ = (\U0|VGA_R[0]~4_combout\ & ((\U0|VGA_R[0]~5_combout\) # ((\U0|VGA_R[0]~8_combout\ & \U0|FSM~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R[0]~8_combout\,
	datab => \U0|VGA_R[0]~4_combout\,
	datac => \U0|FSM~39_combout\,
	datad => \U0|VGA_R[0]~5_combout\,
	combout => \U0|VGA_R[0]~9_combout\);

-- Location: LCCOMB_X42_Y8_N30
\U0|VGA_R[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~10_combout\ = (\U0|FSM~40_combout\) # ((\U0|FSM~41_combout\ & ((\U1|player\(1)) # (!\U1|used\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~41_combout\,
	datab => \U0|FSM~40_combout\,
	datac => \U1|player\(1),
	datad => \U1|used\(1),
	combout => \U0|VGA_R[0]~10_combout\);

-- Location: LCCOMB_X39_Y7_N26
\U0|VGA_R[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~19_combout\ = (\U0|VGA_R[0]~9_combout\) # ((\U0|VGA_R[0]~10_combout\) # ((\U0|VGA_R[0]~18_combout\ & !\U0|FSM~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R[0]~18_combout\,
	datab => \U0|VGA_R[0]~9_combout\,
	datac => \U0|FSM~41_combout\,
	datad => \U0|VGA_R[0]~10_combout\,
	combout => \U0|VGA_R[0]~19_combout\);

-- Location: LCCOMB_X40_Y8_N10
\U0|VGA_R[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~21_combout\ = (\U0|FSM~19_combout\) # ((\U0|VGA_R[0]~19_combout\ & ((\U1|player\(0)) # (!\U0|VGA_R~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_R~20_combout\,
	datab => \U0|FSM~19_combout\,
	datac => \U0|VGA_R[0]~19_combout\,
	datad => \U1|player\(0),
	combout => \U0|VGA_R[0]~21_combout\);

-- Location: LCCOMB_X40_Y8_N4
\U0|VGA_R[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_R[0]~22_combout\ = (\U0|U1|disp_ena~q\ & ((\U0|FSM~15_combout\) # ((\U0|FSM~71_combout\ & \U0|VGA_R[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~15_combout\,
	datab => \U0|FSM~71_combout\,
	datac => \U0|U1|disp_ena~q\,
	datad => \U0|VGA_R[0]~21_combout\,
	combout => \U0|VGA_R[0]~22_combout\);

-- Location: LCCOMB_X38_Y7_N20
\U0|fig_xShift[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|fig_xShift[0]~2_combout\ = (\U0|FSM~34_combout\ & (\U0|fig_yShift[0]~2_combout\ & (!\U0|FSM~27_combout\ & !\U0|FSM~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~34_combout\,
	datab => \U0|fig_yShift[0]~2_combout\,
	datac => \U0|FSM~27_combout\,
	datad => \U0|FSM~43_combout\,
	combout => \U0|fig_xShift[0]~2_combout\);

-- Location: LCCOMB_X39_Y8_N8
\U0|VGA_G~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~29_combout\ = (\U0|fig_yShift[0]~2_combout\ & (\U1|used\(5) & \U0|VGA_G~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift[0]~2_combout\,
	datab => \U1|used\(5),
	datad => \U0|VGA_G~41_combout\,
	combout => \U0|VGA_G~29_combout\);

-- Location: LCCOMB_X38_Y7_N10
\U0|VGA_G[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~30_combout\ = (!\U0|VGA_G~29_combout\ & ((\U0|FSM~35_combout\) # ((!\U1|used\(6)) # (!\U0|fig_xShift[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~35_combout\,
	datab => \U0|fig_xShift[0]~2_combout\,
	datac => \U1|used\(6),
	datad => \U0|VGA_G~29_combout\,
	combout => \U0|VGA_G[0]~30_combout\);

-- Location: LCCOMB_X38_Y7_N0
\U0|VGA_G~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~32_combout\ = (\U1|used\(4) & (\U0|FSM~79_combout\ & !\U0|FSM~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(4),
	datab => \U0|FSM~79_combout\,
	datad => \U0|FSM~21_combout\,
	combout => \U0|VGA_G~32_combout\);

-- Location: LCCOMB_X38_Y7_N22
\U0|VGA_G[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~33_combout\ = ((\U0|FSM~34_combout\ & ((!\U0|VGA_G~32_combout\))) # (!\U0|FSM~34_combout\ & (!\U1|used\(3)))) # (!\U0|fig_yShift[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~34_combout\,
	datab => \U1|used\(3),
	datac => \U0|fig_yShift[0]~2_combout\,
	datad => \U0|VGA_G~32_combout\,
	combout => \U0|VGA_G[0]~33_combout\);

-- Location: LCCOMB_X39_Y8_N20
\U0|VGA_G[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~34_combout\ = (\U0|VGA_G[0]~33_combout\ & (((\U0|FSM~42_combout\) # (!\U0|fig_xShift[0]~3_combout\)) # (!\U0|y2[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2[0]~3_combout\,
	datab => \U0|fig_xShift[0]~3_combout\,
	datac => \U0|VGA_G[0]~33_combout\,
	datad => \U0|FSM~42_combout\,
	combout => \U0|VGA_G[0]~34_combout\);

-- Location: LCCOMB_X39_Y8_N16
\U0|VGA_G[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~35_combout\ = (\U0|VGA_G[0]~34_combout\ & (((!\U0|FSM~42_combout\) # (!\U0|fig_xShift[0]~3_combout\)) # (!\U1|used\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(7),
	datab => \U0|VGA_G[0]~34_combout\,
	datac => \U0|fig_xShift[0]~3_combout\,
	datad => \U0|FSM~42_combout\,
	combout => \U0|VGA_G[0]~35_combout\);

-- Location: LCCOMB_X40_Y8_N6
\U0|VGA_G~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~40_combout\ = (\U1|used\(2) & (\U0|FSM~26_combout\ & (!\U0|FSM~38_combout\ & !\U0|FSM~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(2),
	datab => \U0|FSM~26_combout\,
	datac => \U0|FSM~38_combout\,
	datad => \U0|FSM~79_combout\,
	combout => \U0|VGA_G~40_combout\);

-- Location: LCCOMB_X39_Y8_N12
\U0|VGA_G[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~31_combout\ = (!\U0|VGA_G~40_combout\ & (!\U0|FSM~40_combout\ & ((!\U0|FSM~41_combout\) # (!\U1|used\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(1),
	datab => \U0|VGA_G~40_combout\,
	datac => \U0|FSM~40_combout\,
	datad => \U0|FSM~41_combout\,
	combout => \U0|VGA_G[0]~31_combout\);

-- Location: LCCOMB_X40_Y8_N28
\U0|VGA_G[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~39_combout\ = (\U0|FSM~15_combout\) # ((!\U1|used\(0) & (!\U0|FSM~38_combout\ & \U0|FSM~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|used\(0),
	datab => \U0|FSM~38_combout\,
	datac => \U0|FSM~15_combout\,
	datad => \U0|FSM~33_combout\,
	combout => \U0|VGA_G[0]~39_combout\);

-- Location: LCCOMB_X40_Y8_N12
\U0|VGA_G[0]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~36_combout\ = (\U0|VGA_G[0]~39_combout\) # ((\U0|VGA_G[0]~30_combout\ & (\U0|VGA_G[0]~35_combout\ & \U0|VGA_G[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_G[0]~30_combout\,
	datab => \U0|VGA_G[0]~35_combout\,
	datac => \U0|VGA_G[0]~31_combout\,
	datad => \U0|VGA_G[0]~39_combout\,
	combout => \U0|VGA_G[0]~36_combout\);

-- Location: LCCOMB_X36_Y10_N2
\U0|Add16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~0_combout\ = (\U0|U1|column\(1) & ((GND) # (!\U0|fig_xShift\(0)))) # (!\U0|U1|column\(1) & (\U0|fig_xShift\(0) $ (GND)))
-- \U0|Add16~1\ = CARRY((\U0|U1|column\(1)) # (!\U0|fig_xShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(1),
	datab => \U0|fig_xShift\(0),
	datad => VCC,
	combout => \U0|Add16~0_combout\,
	cout => \U0|Add16~1\);

-- Location: LCCOMB_X36_Y10_N4
\U0|Add16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~2_combout\ = (\U0|fig_xShift\(1) & ((\U0|U1|column\(2) & (!\U0|Add16~1\)) # (!\U0|U1|column\(2) & ((\U0|Add16~1\) # (GND))))) # (!\U0|fig_xShift\(1) & ((\U0|U1|column\(2) & (\U0|Add16~1\ & VCC)) # (!\U0|U1|column\(2) & (!\U0|Add16~1\))))
-- \U0|Add16~3\ = CARRY((\U0|fig_xShift\(1) & ((!\U0|Add16~1\) # (!\U0|U1|column\(2)))) # (!\U0|fig_xShift\(1) & (!\U0|U1|column\(2) & !\U0|Add16~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(1),
	datab => \U0|U1|column\(2),
	datad => VCC,
	cin => \U0|Add16~1\,
	combout => \U0|Add16~2_combout\,
	cout => \U0|Add16~3\);

-- Location: LCCOMB_X36_Y10_N6
\U0|Add16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~4_combout\ = (\U0|U1|column\(3) & ((GND) # (!\U0|Add16~3\))) # (!\U0|U1|column\(3) & (\U0|Add16~3\ $ (GND)))
-- \U0|Add16~5\ = CARRY((\U0|U1|column\(3)) # (!\U0|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(3),
	datad => VCC,
	cin => \U0|Add16~3\,
	combout => \U0|Add16~4_combout\,
	cout => \U0|Add16~5\);

-- Location: LCCOMB_X36_Y10_N8
\U0|Add16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~6_combout\ = (\U0|U1|column\(4) & ((\U0|fig_xShift\(0) & (!\U0|Add16~5\)) # (!\U0|fig_xShift\(0) & (\U0|Add16~5\ & VCC)))) # (!\U0|U1|column\(4) & ((\U0|fig_xShift\(0) & ((\U0|Add16~5\) # (GND))) # (!\U0|fig_xShift\(0) & (!\U0|Add16~5\))))
-- \U0|Add16~7\ = CARRY((\U0|U1|column\(4) & (\U0|fig_xShift\(0) & !\U0|Add16~5\)) # (!\U0|U1|column\(4) & ((\U0|fig_xShift\(0)) # (!\U0|Add16~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(4),
	datab => \U0|fig_xShift\(0),
	datad => VCC,
	cin => \U0|Add16~5\,
	combout => \U0|Add16~6_combout\,
	cout => \U0|Add16~7\);

-- Location: LCCOMB_X36_Y10_N10
\U0|Add16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~8_combout\ = ((\U0|fig_xShift\(1) $ (\U0|U1|column\(5) $ (\U0|Add16~7\)))) # (GND)
-- \U0|Add16~9\ = CARRY((\U0|fig_xShift\(1) & (\U0|U1|column\(5) & !\U0|Add16~7\)) # (!\U0|fig_xShift\(1) & ((\U0|U1|column\(5)) # (!\U0|Add16~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(1),
	datab => \U0|U1|column\(5),
	datad => VCC,
	cin => \U0|Add16~7\,
	combout => \U0|Add16~8_combout\,
	cout => \U0|Add16~9\);

-- Location: LCCOMB_X36_Y10_N12
\U0|Add16~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~10_combout\ = (\U0|U1|column\(6) & ((\U0|fig_xShift\(0) & (!\U0|Add16~9\)) # (!\U0|fig_xShift\(0) & (\U0|Add16~9\ & VCC)))) # (!\U0|U1|column\(6) & ((\U0|fig_xShift\(0) & ((\U0|Add16~9\) # (GND))) # (!\U0|fig_xShift\(0) & (!\U0|Add16~9\))))
-- \U0|Add16~11\ = CARRY((\U0|U1|column\(6) & (\U0|fig_xShift\(0) & !\U0|Add16~9\)) # (!\U0|U1|column\(6) & ((\U0|fig_xShift\(0)) # (!\U0|Add16~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(6),
	datab => \U0|fig_xShift\(0),
	datad => VCC,
	cin => \U0|Add16~9\,
	combout => \U0|Add16~10_combout\,
	cout => \U0|Add16~11\);

-- Location: LCCOMB_X36_Y10_N14
\U0|Add16~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~12_combout\ = ((\U0|Mult1|mult_core|romout[0][7]~0_combout\ $ (\U0|U1|column\(7) $ (\U0|Add16~11\)))) # (GND)
-- \U0|Add16~13\ = CARRY((\U0|Mult1|mult_core|romout[0][7]~0_combout\ & (\U0|U1|column\(7) & !\U0|Add16~11\)) # (!\U0|Mult1|mult_core|romout[0][7]~0_combout\ & ((\U0|U1|column\(7)) # (!\U0|Add16~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult1|mult_core|romout[0][7]~0_combout\,
	datab => \U0|U1|column\(7),
	datad => VCC,
	cin => \U0|Add16~11\,
	combout => \U0|Add16~12_combout\,
	cout => \U0|Add16~13\);

-- Location: LCCOMB_X36_Y10_N16
\U0|Add16~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~14_combout\ = (\U0|Mult1|mult_core|_~1_combout\ & ((\U0|U1|column\(8) & (!\U0|Add16~13\)) # (!\U0|U1|column\(8) & ((\U0|Add16~13\) # (GND))))) # (!\U0|Mult1|mult_core|_~1_combout\ & ((\U0|U1|column\(8) & (\U0|Add16~13\ & VCC)) # 
-- (!\U0|U1|column\(8) & (!\U0|Add16~13\))))
-- \U0|Add16~15\ = CARRY((\U0|Mult1|mult_core|_~1_combout\ & ((!\U0|Add16~13\) # (!\U0|U1|column\(8)))) # (!\U0|Mult1|mult_core|_~1_combout\ & (!\U0|U1|column\(8) & !\U0|Add16~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult1|mult_core|_~1_combout\,
	datab => \U0|U1|column\(8),
	datad => VCC,
	cin => \U0|Add16~13\,
	combout => \U0|Add16~14_combout\,
	cout => \U0|Add16~15\);

-- Location: LCCOMB_X36_Y10_N18
\U0|Add16~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~16_combout\ = ((\U0|U1|column\(9) $ (\U0|Mult1|mult_core|_~0_combout\ $ (\U0|Add16~15\)))) # (GND)
-- \U0|Add16~17\ = CARRY((\U0|U1|column\(9) & ((!\U0|Add16~15\) # (!\U0|Mult1|mult_core|_~0_combout\))) # (!\U0|U1|column\(9) & (!\U0|Mult1|mult_core|_~0_combout\ & !\U0|Add16~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(9),
	datab => \U0|Mult1|mult_core|_~0_combout\,
	datad => VCC,
	cin => \U0|Add16~15\,
	combout => \U0|Add16~16_combout\,
	cout => \U0|Add16~17\);

-- Location: LCCOMB_X35_Y7_N4
\U0|Add17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~1_cout\ = CARRY(\U0|U1|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(0),
	datad => VCC,
	cout => \U0|Add17~1_cout\);

-- Location: LCCOMB_X35_Y7_N6
\U0|Add17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~2_combout\ = (\U0|Add16~0_combout\ & (\U0|Add17~1_cout\ & VCC)) # (!\U0|Add16~0_combout\ & (!\U0|Add17~1_cout\))
-- \U0|Add17~3\ = CARRY((!\U0|Add16~0_combout\ & !\U0|Add17~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~0_combout\,
	datad => VCC,
	cin => \U0|Add17~1_cout\,
	combout => \U0|Add17~2_combout\,
	cout => \U0|Add17~3\);

-- Location: LCCOMB_X35_Y7_N8
\U0|Add17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~4_combout\ = (\U0|Add16~2_combout\ & ((GND) # (!\U0|Add17~3\))) # (!\U0|Add16~2_combout\ & (\U0|Add17~3\ $ (GND)))
-- \U0|Add17~5\ = CARRY((\U0|Add16~2_combout\) # (!\U0|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~2_combout\,
	datad => VCC,
	cin => \U0|Add17~3\,
	combout => \U0|Add17~4_combout\,
	cout => \U0|Add17~5\);

-- Location: LCCOMB_X35_Y7_N10
\U0|Add17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~6_combout\ = (\U0|Add16~4_combout\ & (!\U0|Add17~5\)) # (!\U0|Add16~4_combout\ & ((\U0|Add17~5\) # (GND)))
-- \U0|Add17~7\ = CARRY((!\U0|Add17~5\) # (!\U0|Add16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~4_combout\,
	datad => VCC,
	cin => \U0|Add17~5\,
	combout => \U0|Add17~6_combout\,
	cout => \U0|Add17~7\);

-- Location: LCCOMB_X35_Y7_N12
\U0|Add17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~8_combout\ = (\U0|Add16~6_combout\ & (\U0|Add17~7\ $ (GND))) # (!\U0|Add16~6_combout\ & (!\U0|Add17~7\ & VCC))
-- \U0|Add17~9\ = CARRY((\U0|Add16~6_combout\ & !\U0|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~6_combout\,
	datad => VCC,
	cin => \U0|Add17~7\,
	combout => \U0|Add17~8_combout\,
	cout => \U0|Add17~9\);

-- Location: LCCOMB_X35_Y7_N14
\U0|Add17~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~10_combout\ = (\U0|Add16~8_combout\ & (\U0|Add17~9\ & VCC)) # (!\U0|Add16~8_combout\ & (!\U0|Add17~9\))
-- \U0|Add17~11\ = CARRY((!\U0|Add16~8_combout\ & !\U0|Add17~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~8_combout\,
	datad => VCC,
	cin => \U0|Add17~9\,
	combout => \U0|Add17~10_combout\,
	cout => \U0|Add17~11\);

-- Location: LCCOMB_X35_Y7_N16
\U0|Add17~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~12_combout\ = (\U0|Add16~10_combout\ & ((GND) # (!\U0|Add17~11\))) # (!\U0|Add16~10_combout\ & (\U0|Add17~11\ $ (GND)))
-- \U0|Add17~13\ = CARRY((\U0|Add16~10_combout\) # (!\U0|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~10_combout\,
	datad => VCC,
	cin => \U0|Add17~11\,
	combout => \U0|Add17~12_combout\,
	cout => \U0|Add17~13\);

-- Location: LCCOMB_X35_Y7_N18
\U0|Add17~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~14_combout\ = (\U0|Add16~12_combout\ & (\U0|Add17~13\ & VCC)) # (!\U0|Add16~12_combout\ & (!\U0|Add17~13\))
-- \U0|Add17~15\ = CARRY((!\U0|Add16~12_combout\ & !\U0|Add17~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~12_combout\,
	datad => VCC,
	cin => \U0|Add17~13\,
	combout => \U0|Add17~14_combout\,
	cout => \U0|Add17~15\);

-- Location: LCCOMB_X35_Y7_N20
\U0|Add17~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~16_combout\ = (\U0|Add16~14_combout\ & ((GND) # (!\U0|Add17~15\))) # (!\U0|Add16~14_combout\ & (\U0|Add17~15\ $ (GND)))
-- \U0|Add17~17\ = CARRY((\U0|Add16~14_combout\) # (!\U0|Add17~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~14_combout\,
	datad => VCC,
	cin => \U0|Add17~15\,
	combout => \U0|Add17~16_combout\,
	cout => \U0|Add17~17\);

-- Location: LCCOMB_X35_Y7_N22
\U0|Add17~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~18_combout\ = (\U0|Add16~16_combout\ & (\U0|Add17~17\ & VCC)) # (!\U0|Add16~16_combout\ & (!\U0|Add17~17\))
-- \U0|Add17~19\ = CARRY((!\U0|Add16~16_combout\ & !\U0|Add17~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~16_combout\,
	datad => VCC,
	cin => \U0|Add17~17\,
	combout => \U0|Add17~18_combout\,
	cout => \U0|Add17~19\);

-- Location: LCCOMB_X36_Y7_N10
\U0|Add18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~0_combout\ = (\U0|Add17~10_combout\ & (\U0|fig_yShift\(0) $ (VCC))) # (!\U0|Add17~10_combout\ & (\U0|fig_yShift\(0) & VCC))
-- \U0|Add18~1\ = CARRY((\U0|Add17~10_combout\ & \U0|fig_yShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add17~10_combout\,
	datab => \U0|fig_yShift\(0),
	datad => VCC,
	combout => \U0|Add18~0_combout\,
	cout => \U0|Add18~1\);

-- Location: LCCOMB_X36_Y7_N12
\U0|Add18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~2_combout\ = (\U0|fig_yShift\(1) & ((\U0|Add17~12_combout\ & (\U0|Add18~1\ & VCC)) # (!\U0|Add17~12_combout\ & (!\U0|Add18~1\)))) # (!\U0|fig_yShift\(1) & ((\U0|Add17~12_combout\ & (!\U0|Add18~1\)) # (!\U0|Add17~12_combout\ & ((\U0|Add18~1\) # 
-- (GND)))))
-- \U0|Add18~3\ = CARRY((\U0|fig_yShift\(1) & (!\U0|Add17~12_combout\ & !\U0|Add18~1\)) # (!\U0|fig_yShift\(1) & ((!\U0|Add18~1\) # (!\U0|Add17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(1),
	datab => \U0|Add17~12_combout\,
	datad => VCC,
	cin => \U0|Add18~1\,
	combout => \U0|Add18~2_combout\,
	cout => \U0|Add18~3\);

-- Location: LCCOMB_X36_Y7_N14
\U0|Add18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~4_combout\ = ((\U0|Add17~14_combout\ $ (\U0|fig_yShift\(0) $ (!\U0|Add18~3\)))) # (GND)
-- \U0|Add18~5\ = CARRY((\U0|Add17~14_combout\ & ((\U0|fig_yShift\(0)) # (!\U0|Add18~3\))) # (!\U0|Add17~14_combout\ & (\U0|fig_yShift\(0) & !\U0|Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add17~14_combout\,
	datab => \U0|fig_yShift\(0),
	datad => VCC,
	cin => \U0|Add18~3\,
	combout => \U0|Add18~4_combout\,
	cout => \U0|Add18~5\);

-- Location: LCCOMB_X36_Y7_N16
\U0|Add18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~6_combout\ = (\U0|fig_yShift\(1) & ((\U0|Add17~16_combout\ & (\U0|Add18~5\ & VCC)) # (!\U0|Add17~16_combout\ & (!\U0|Add18~5\)))) # (!\U0|fig_yShift\(1) & ((\U0|Add17~16_combout\ & (!\U0|Add18~5\)) # (!\U0|Add17~16_combout\ & ((\U0|Add18~5\) # 
-- (GND)))))
-- \U0|Add18~7\ = CARRY((\U0|fig_yShift\(1) & (!\U0|Add17~16_combout\ & !\U0|Add18~5\)) # (!\U0|fig_yShift\(1) & ((!\U0|Add18~5\) # (!\U0|Add17~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(1),
	datab => \U0|Add17~16_combout\,
	datad => VCC,
	cin => \U0|Add18~5\,
	combout => \U0|Add18~6_combout\,
	cout => \U0|Add18~7\);

-- Location: LCCOMB_X36_Y7_N18
\U0|Add18~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~8_combout\ = (\U0|Add17~18_combout\ & (\U0|Add18~7\ $ (GND))) # (!\U0|Add17~18_combout\ & (!\U0|Add18~7\ & VCC))
-- \U0|Add18~9\ = CARRY((\U0|Add17~18_combout\ & !\U0|Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add17~18_combout\,
	datad => VCC,
	cin => \U0|Add18~7\,
	combout => \U0|Add18~8_combout\,
	cout => \U0|Add18~9\);

-- Location: LCCOMB_X42_Y7_N12
\U0|y2[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~10_combout\ = (\U1|used\(7) & \U1|player\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|used\(7),
	datad => \U1|player\(7),
	combout => \U0|y2[0]~10_combout\);

-- Location: LCCOMB_X41_Y7_N26
\U0|y2[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~8_combout\ = (\U0|y2[0]~4_combout\ & (((\U1|used\(5))))) # (!\U0|y2[0]~4_combout\ & (\U1|used\(6) & ((\U1|player\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2[0]~4_combout\,
	datab => \U1|used\(6),
	datac => \U1|used\(5),
	datad => \U1|player\(6),
	combout => \U0|y2[0]~8_combout\);

-- Location: LCCOMB_X41_Y7_N4
\U0|y2[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~9_combout\ = (\U0|y2[0]~2_combout\ & (((\U0|y2[0]~4_combout\)))) # (!\U0|y2[0]~2_combout\ & (\U0|y2[0]~8_combout\ & ((\U1|player\(5)) # (!\U0|y2[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2[0]~8_combout\,
	datab => \U1|player\(5),
	datac => \U0|y2[0]~2_combout\,
	datad => \U0|y2[0]~4_combout\,
	combout => \U0|y2[0]~9_combout\);

-- Location: LCCOMB_X41_Y7_N2
\U0|y2[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~7_combout\ = (\U0|FSM~26_combout\ & (\U1|used\(8) & (\U1|player\(8) & !\U0|FSM~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~26_combout\,
	datab => \U1|used\(8),
	datac => \U1|player\(8),
	datad => \U0|FSM~29_combout\,
	combout => \U0|y2[0]~7_combout\);

-- Location: LCCOMB_X41_Y7_N24
\U0|y2[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~11_combout\ = (\U0|y2[0]~2_combout\ & ((\U0|y2[0]~9_combout\ & (\U0|y2[0]~10_combout\)) # (!\U0|y2[0]~9_combout\ & ((\U0|y2[0]~7_combout\))))) # (!\U0|y2[0]~2_combout\ & (((\U0|y2[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2[0]~2_combout\,
	datab => \U0|y2[0]~10_combout\,
	datac => \U0|y2[0]~9_combout\,
	datad => \U0|y2[0]~7_combout\,
	combout => \U0|y2[0]~11_combout\);

-- Location: LCCOMB_X43_Y7_N4
\U0|y2[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~12_combout\ = (\U1|player\(3) & \U1|used\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|player\(3),
	datad => \U1|used\(3),
	combout => \U0|y2[0]~12_combout\);

-- Location: LCCOMB_X39_Y7_N22
\U0|y2[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~13_combout\ = (\U0|y2[0]~18_combout\ & (((\U0|y2[0]~5_combout\)))) # (!\U0|y2[0]~18_combout\ & ((\U0|y2[0]~5_combout\ & (\U0|y2[0]~11_combout\)) # (!\U0|y2[0]~5_combout\ & ((\U0|y2[0]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2[0]~11_combout\,
	datab => \U0|y2[0]~18_combout\,
	datac => \U0|y2[0]~12_combout\,
	datad => \U0|y2[0]~5_combout\,
	combout => \U0|y2[0]~13_combout\);

-- Location: LCCOMB_X39_Y7_N2
\U0|y2[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~6_combout\ = (\U1|player\(2) & \U1|used\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|player\(2),
	datad => \U1|used\(2),
	combout => \U0|y2[0]~6_combout\);

-- Location: LCCOMB_X40_Y7_N30
\U0|y2[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~14_combout\ = (\U1|player\(4) & \U1|used\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|player\(4),
	datad => \U1|used\(4),
	combout => \U0|y2[0]~14_combout\);

-- Location: LCCOMB_X39_Y7_N16
\U0|y2[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~15_combout\ = (\U0|y2[0]~13_combout\ & (((\U0|y2[0]~14_combout\) # (!\U0|y2[0]~18_combout\)))) # (!\U0|y2[0]~13_combout\ & (\U0|y2[0]~6_combout\ & ((\U0|y2[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2[0]~13_combout\,
	datab => \U0|y2[0]~6_combout\,
	datac => \U0|y2[0]~14_combout\,
	datad => \U0|y2[0]~18_combout\,
	combout => \U0|y2[0]~15_combout\);

-- Location: LCCOMB_X40_Y7_N22
\U0|y2[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~16_combout\ = (\U0|f2y2[4]~11_combout\ & ((\U0|y2[0]~15_combout\) # ((\U0|VGA_R~20_combout\ & \U1|player\(0))))) # (!\U0|f2y2[4]~11_combout\ & (((\U0|VGA_R~20_combout\ & \U1|player\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|f2y2[4]~11_combout\,
	datab => \U0|y2[0]~15_combout\,
	datac => \U0|VGA_R~20_combout\,
	datad => \U1|player\(0),
	combout => \U0|y2[0]~16_combout\);

-- Location: LCCOMB_X40_Y7_N10
\U0|y2[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2[0]~17_combout\ = (\U0|VGA_B[0]~0_combout\ & ((\U0|y2[0]~16_combout\) # ((\U1|player\(1) & \U0|f2y2[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(1),
	datab => \U0|VGA_B[0]~0_combout\,
	datac => \U0|y2[0]~16_combout\,
	datad => \U0|f2y2[4]~10_combout\,
	combout => \U0|y2[0]~17_combout\);

-- Location: CLKCTRL_G16
\U0|y2[0]~17clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|y2[0]~17clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|y2[0]~17clkctrl_outclk\);

-- Location: LCCOMB_X36_Y7_N6
\U0|y2[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(9) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add18~8_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2\(9),
	datac => \U0|Add18~8_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(9));

-- Location: LCCOMB_X36_Y10_N20
\U0|Add16~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~18_combout\ = !\U0|Add16~17\
-- \U0|Add16~19\ = CARRY(!\U0|Add16~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U0|Add16~17\,
	combout => \U0|Add16~18_combout\,
	cout => \U0|Add16~19\);

-- Location: LCCOMB_X36_Y10_N22
\U0|Add16~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~20_combout\ = \U0|Add16~19\ $ (GND)
-- \U0|Add16~21\ = CARRY(!\U0|Add16~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U0|Add16~19\,
	combout => \U0|Add16~20_combout\,
	cout => \U0|Add16~21\);

-- Location: LCCOMB_X35_Y7_N24
\U0|Add17~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~20_combout\ = (\U0|Add16~18_combout\ & ((GND) # (!\U0|Add17~19\))) # (!\U0|Add16~18_combout\ & (\U0|Add17~19\ $ (GND)))
-- \U0|Add17~21\ = CARRY((\U0|Add16~18_combout\) # (!\U0|Add17~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~18_combout\,
	datad => VCC,
	cin => \U0|Add17~19\,
	combout => \U0|Add17~20_combout\,
	cout => \U0|Add17~21\);

-- Location: LCCOMB_X35_Y7_N26
\U0|Add17~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~22_combout\ = (\U0|Add16~20_combout\ & (\U0|Add17~21\ & VCC)) # (!\U0|Add16~20_combout\ & (!\U0|Add17~21\))
-- \U0|Add17~23\ = CARRY((!\U0|Add16~20_combout\ & !\U0|Add17~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~20_combout\,
	datad => VCC,
	cin => \U0|Add17~21\,
	combout => \U0|Add17~22_combout\,
	cout => \U0|Add17~23\);

-- Location: LCCOMB_X36_Y7_N20
\U0|Add18~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~10_combout\ = (\U0|Add17~20_combout\ & (!\U0|Add18~9\)) # (!\U0|Add17~20_combout\ & ((\U0|Add18~9\) # (GND)))
-- \U0|Add18~11\ = CARRY((!\U0|Add18~9\) # (!\U0|Add17~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add17~20_combout\,
	datad => VCC,
	cin => \U0|Add18~9\,
	combout => \U0|Add18~10_combout\,
	cout => \U0|Add18~11\);

-- Location: LCCOMB_X36_Y7_N22
\U0|Add18~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~12_combout\ = (\U0|Add17~22_combout\ & (\U0|Add18~11\ $ (GND))) # (!\U0|Add17~22_combout\ & (!\U0|Add18~11\ & VCC))
-- \U0|Add18~13\ = CARRY((\U0|Add17~22_combout\ & !\U0|Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add17~22_combout\,
	datad => VCC,
	cin => \U0|Add18~11\,
	combout => \U0|Add18~12_combout\,
	cout => \U0|Add18~13\);

-- Location: LCCOMB_X36_Y7_N2
\U0|y2[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(11) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add18~12_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y2\(11),
	datac => \U0|Add18~12_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(11));

-- Location: LCCOMB_X36_Y7_N8
\U0|y2[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(10) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add18~10_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y2\(10),
	datac => \U0|Add18~10_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(10));

-- Location: LCCOMB_X36_Y10_N24
\U0|Add16~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add16~22_combout\ = !\U0|Add16~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add16~21\,
	combout => \U0|Add16~22_combout\);

-- Location: LCCOMB_X35_Y7_N28
\U0|Add17~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~24_combout\ = (\U0|Add16~22_combout\ & ((GND) # (!\U0|Add17~23\))) # (!\U0|Add16~22_combout\ & (\U0|Add17~23\ $ (GND)))
-- \U0|Add17~25\ = CARRY((\U0|Add16~22_combout\) # (!\U0|Add17~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~22_combout\,
	datad => VCC,
	cin => \U0|Add17~23\,
	combout => \U0|Add17~24_combout\,
	cout => \U0|Add17~25\);

-- Location: LCCOMB_X36_Y7_N24
\U0|Add18~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~14_combout\ = (\U0|Add17~24_combout\ & (!\U0|Add18~13\)) # (!\U0|Add17~24_combout\ & ((\U0|Add18~13\) # (GND)))
-- \U0|Add18~15\ = CARRY((!\U0|Add18~13\) # (!\U0|Add17~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add17~24_combout\,
	datad => VCC,
	cin => \U0|Add18~13\,
	combout => \U0|Add18~14_combout\,
	cout => \U0|Add18~15\);

-- Location: LCCOMB_X36_Y7_N0
\U0|y2[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(12) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add18~14_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y2\(12),
	datac => \U0|Add18~14_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(12));

-- Location: LCCOMB_X37_Y8_N20
\U0|FSM~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~76_combout\ = (!\U0|y2\(9) & (!\U0|y2\(11) & (!\U0|y2\(10) & !\U0|y2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2\(9),
	datab => \U0|y2\(11),
	datac => \U0|y2\(10),
	datad => \U0|y2\(12),
	combout => \U0|FSM~76_combout\);

-- Location: LCCOMB_X35_Y7_N30
\U0|Add17~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add17~26_combout\ = \U0|Add16~22_combout\ $ (!\U0|Add17~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~22_combout\,
	cin => \U0|Add17~25\,
	combout => \U0|Add17~26_combout\);

-- Location: LCCOMB_X36_Y7_N26
\U0|Add18~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~16_combout\ = (\U0|Add17~26_combout\ & (\U0|Add18~15\ $ (GND))) # (!\U0|Add17~26_combout\ & (!\U0|Add18~15\ & VCC))
-- \U0|Add18~17\ = CARRY((\U0|Add17~26_combout\ & !\U0|Add18~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add17~26_combout\,
	datad => VCC,
	cin => \U0|Add18~15\,
	combout => \U0|Add18~16_combout\,
	cout => \U0|Add18~17\);

-- Location: LCCOMB_X36_Y7_N30
\U0|y2[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(13) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add18~16_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|y2\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add18~16_combout\,
	datac => \U0|y2\(13),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(13));

-- Location: LCCOMB_X37_Y7_N8
\U0|y2[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(8) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add18~6_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y2\(8),
	datac => \U0|Add18~6_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(8));

-- Location: LCCOMB_X37_Y7_N10
\U0|y2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(7) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add18~4_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2\(7),
	datac => \U0|Add18~4_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(7));

-- Location: LCCOMB_X37_Y7_N4
\U0|y2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(6) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add18~2_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y2\(6),
	datac => \U0|Add18~2_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(6));

-- Location: LCCOMB_X37_Y7_N30
\U0|y2[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(5) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add18~0_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|y2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add18~0_combout\,
	datac => \U0|y2\(5),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(5));

-- Location: LCCOMB_X35_Y7_N0
\U0|y2[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(4) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add17~8_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|y2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add17~8_combout\,
	datac => \U0|y2\(4),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(4));

-- Location: LCCOMB_X35_Y7_N2
\U0|y2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(3) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add17~6_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y2\(3),
	datac => \U0|Add17~6_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(3));

-- Location: LCCOMB_X34_Y7_N8
\U0|y2[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(2) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add17~4_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y2\(2),
	datac => \U0|Add17~4_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(2));

-- Location: LCCOMB_X34_Y7_N30
\U0|y2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(1) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add17~2_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2\(1),
	datac => \U0|Add17~2_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y2\(1));

-- Location: LCCOMB_X38_Y14_N26
\U0|x1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(0) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (!\U0|U1|column\(0))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|x1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(0),
	datac => \U0|x1\(0),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(0));

-- Location: LCCOMB_X37_Y7_N12
\U0|LessThan31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan31~1_cout\ = CARRY((!\U0|x1\(0) & \U0|U1|row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(0),
	datab => \U0|U1|row\(0),
	datad => VCC,
	cout => \U0|LessThan31~1_cout\);

-- Location: LCCOMB_X37_Y7_N14
\U0|LessThan31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan31~3_cout\ = CARRY((\U0|U1|row\(1) & (\U0|y2\(1) & !\U0|LessThan31~1_cout\)) # (!\U0|U1|row\(1) & ((\U0|y2\(1)) # (!\U0|LessThan31~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(1),
	datab => \U0|y2\(1),
	datad => VCC,
	cin => \U0|LessThan31~1_cout\,
	cout => \U0|LessThan31~3_cout\);

-- Location: LCCOMB_X37_Y7_N16
\U0|LessThan31~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan31~5_cout\ = CARRY((\U0|U1|row\(2) & ((!\U0|LessThan31~3_cout\) # (!\U0|y2\(2)))) # (!\U0|U1|row\(2) & (!\U0|y2\(2) & !\U0|LessThan31~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|y2\(2),
	datad => VCC,
	cin => \U0|LessThan31~3_cout\,
	cout => \U0|LessThan31~5_cout\);

-- Location: LCCOMB_X37_Y7_N18
\U0|LessThan31~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan31~7_cout\ = CARRY((\U0|U1|row\(3) & (\U0|y2\(3) & !\U0|LessThan31~5_cout\)) # (!\U0|U1|row\(3) & ((\U0|y2\(3)) # (!\U0|LessThan31~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(3),
	datab => \U0|y2\(3),
	datad => VCC,
	cin => \U0|LessThan31~5_cout\,
	cout => \U0|LessThan31~7_cout\);

-- Location: LCCOMB_X37_Y7_N20
\U0|LessThan31~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan31~9_cout\ = CARRY((\U0|U1|row\(4) & ((!\U0|LessThan31~7_cout\) # (!\U0|y2\(4)))) # (!\U0|U1|row\(4) & (!\U0|y2\(4) & !\U0|LessThan31~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(4),
	datab => \U0|y2\(4),
	datad => VCC,
	cin => \U0|LessThan31~7_cout\,
	cout => \U0|LessThan31~9_cout\);

-- Location: LCCOMB_X37_Y7_N22
\U0|LessThan31~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan31~11_cout\ = CARRY((\U0|y2\(5) & ((!\U0|LessThan31~9_cout\) # (!\U0|U1|row\(5)))) # (!\U0|y2\(5) & (!\U0|U1|row\(5) & !\U0|LessThan31~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2\(5),
	datab => \U0|U1|row\(5),
	datad => VCC,
	cin => \U0|LessThan31~9_cout\,
	cout => \U0|LessThan31~11_cout\);

-- Location: LCCOMB_X37_Y7_N24
\U0|LessThan31~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan31~13_cout\ = CARRY((\U0|U1|row\(6) & ((!\U0|LessThan31~11_cout\) # (!\U0|y2\(6)))) # (!\U0|U1|row\(6) & (!\U0|y2\(6) & !\U0|LessThan31~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(6),
	datab => \U0|y2\(6),
	datad => VCC,
	cin => \U0|LessThan31~11_cout\,
	cout => \U0|LessThan31~13_cout\);

-- Location: LCCOMB_X37_Y7_N26
\U0|LessThan31~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan31~15_cout\ = CARRY((\U0|y2\(7) & ((!\U0|LessThan31~13_cout\) # (!\U0|U1|row\(7)))) # (!\U0|y2\(7) & (!\U0|U1|row\(7) & !\U0|LessThan31~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y2\(7),
	datab => \U0|U1|row\(7),
	datad => VCC,
	cin => \U0|LessThan31~13_cout\,
	cout => \U0|LessThan31~15_cout\);

-- Location: LCCOMB_X37_Y7_N28
\U0|LessThan31~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan31~16_combout\ = (\U0|y2\(8) & (!\U0|LessThan31~15_cout\ & \U0|U1|row\(8))) # (!\U0|y2\(8) & ((\U0|U1|row\(8)) # (!\U0|LessThan31~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|y2\(8),
	datad => \U0|U1|row\(8),
	cin => \U0|LessThan31~15_cout\,
	combout => \U0|LessThan31~16_combout\);

-- Location: LCCOMB_X35_Y10_N0
\U0|Add14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~0_combout\ = (\U0|Add16~0_combout\ & (\U0|U1|column\(0) $ (VCC))) # (!\U0|Add16~0_combout\ & (\U0|U1|column\(0) & VCC))
-- \U0|Add14~1\ = CARRY((\U0|Add16~0_combout\ & \U0|U1|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~0_combout\,
	datab => \U0|U1|column\(0),
	datad => VCC,
	combout => \U0|Add14~0_combout\,
	cout => \U0|Add14~1\);

-- Location: LCCOMB_X35_Y10_N2
\U0|Add14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~2_combout\ = (\U0|Add16~2_combout\ & (!\U0|Add14~1\)) # (!\U0|Add16~2_combout\ & ((\U0|Add14~1\) # (GND)))
-- \U0|Add14~3\ = CARRY((!\U0|Add14~1\) # (!\U0|Add16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~2_combout\,
	datad => VCC,
	cin => \U0|Add14~1\,
	combout => \U0|Add14~2_combout\,
	cout => \U0|Add14~3\);

-- Location: LCCOMB_X35_Y10_N4
\U0|Add14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~4_combout\ = (\U0|Add16~4_combout\ & (\U0|Add14~3\ $ (GND))) # (!\U0|Add16~4_combout\ & (!\U0|Add14~3\ & VCC))
-- \U0|Add14~5\ = CARRY((\U0|Add16~4_combout\ & !\U0|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~4_combout\,
	datad => VCC,
	cin => \U0|Add14~3\,
	combout => \U0|Add14~4_combout\,
	cout => \U0|Add14~5\);

-- Location: LCCOMB_X35_Y10_N6
\U0|Add14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~6_combout\ = (\U0|Add16~6_combout\ & (\U0|Add14~5\ & VCC)) # (!\U0|Add16~6_combout\ & (!\U0|Add14~5\))
-- \U0|Add14~7\ = CARRY((!\U0|Add16~6_combout\ & !\U0|Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~6_combout\,
	datad => VCC,
	cin => \U0|Add14~5\,
	combout => \U0|Add14~6_combout\,
	cout => \U0|Add14~7\);

-- Location: LCCOMB_X35_Y10_N8
\U0|Add14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~8_combout\ = (\U0|Add16~8_combout\ & ((GND) # (!\U0|Add14~7\))) # (!\U0|Add16~8_combout\ & (\U0|Add14~7\ $ (GND)))
-- \U0|Add14~9\ = CARRY((\U0|Add16~8_combout\) # (!\U0|Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~8_combout\,
	datad => VCC,
	cin => \U0|Add14~7\,
	combout => \U0|Add14~8_combout\,
	cout => \U0|Add14~9\);

-- Location: LCCOMB_X35_Y10_N10
\U0|Add14~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~10_combout\ = (\U0|Add16~10_combout\ & (\U0|Add14~9\ & VCC)) # (!\U0|Add16~10_combout\ & (!\U0|Add14~9\))
-- \U0|Add14~11\ = CARRY((!\U0|Add16~10_combout\ & !\U0|Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~10_combout\,
	datad => VCC,
	cin => \U0|Add14~9\,
	combout => \U0|Add14~10_combout\,
	cout => \U0|Add14~11\);

-- Location: LCCOMB_X35_Y10_N12
\U0|Add14~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~12_combout\ = (\U0|Add16~12_combout\ & ((GND) # (!\U0|Add14~11\))) # (!\U0|Add16~12_combout\ & (\U0|Add14~11\ $ (GND)))
-- \U0|Add14~13\ = CARRY((\U0|Add16~12_combout\) # (!\U0|Add14~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~12_combout\,
	datad => VCC,
	cin => \U0|Add14~11\,
	combout => \U0|Add14~12_combout\,
	cout => \U0|Add14~13\);

-- Location: LCCOMB_X35_Y10_N14
\U0|Add14~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~14_combout\ = (\U0|Add16~14_combout\ & (\U0|Add14~13\ & VCC)) # (!\U0|Add16~14_combout\ & (!\U0|Add14~13\))
-- \U0|Add14~15\ = CARRY((!\U0|Add16~14_combout\ & !\U0|Add14~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~14_combout\,
	datad => VCC,
	cin => \U0|Add14~13\,
	combout => \U0|Add14~14_combout\,
	cout => \U0|Add14~15\);

-- Location: LCCOMB_X35_Y10_N16
\U0|Add14~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~16_combout\ = (\U0|Add16~16_combout\ & ((GND) # (!\U0|Add14~15\))) # (!\U0|Add16~16_combout\ & (\U0|Add14~15\ $ (GND)))
-- \U0|Add14~17\ = CARRY((\U0|Add16~16_combout\) # (!\U0|Add14~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~16_combout\,
	datad => VCC,
	cin => \U0|Add14~15\,
	combout => \U0|Add14~16_combout\,
	cout => \U0|Add14~17\);

-- Location: LCCOMB_X35_Y10_N18
\U0|Add14~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~18_combout\ = (\U0|Add16~18_combout\ & (\U0|Add14~17\ & VCC)) # (!\U0|Add16~18_combout\ & (!\U0|Add14~17\))
-- \U0|Add14~19\ = CARRY((!\U0|Add16~18_combout\ & !\U0|Add14~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~18_combout\,
	datad => VCC,
	cin => \U0|Add14~17\,
	combout => \U0|Add14~18_combout\,
	cout => \U0|Add14~19\);

-- Location: LCCOMB_X35_Y10_N20
\U0|Add14~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~20_combout\ = (\U0|Add16~20_combout\ & ((GND) # (!\U0|Add14~19\))) # (!\U0|Add16~20_combout\ & (\U0|Add14~19\ $ (GND)))
-- \U0|Add14~21\ = CARRY((\U0|Add16~20_combout\) # (!\U0|Add14~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add16~20_combout\,
	datad => VCC,
	cin => \U0|Add14~19\,
	combout => \U0|Add14~20_combout\,
	cout => \U0|Add14~21\);

-- Location: LCCOMB_X35_Y10_N22
\U0|Add14~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~22_combout\ = (\U0|Add16~22_combout\ & (\U0|Add14~21\ & VCC)) # (!\U0|Add16~22_combout\ & (!\U0|Add14~21\))
-- \U0|Add14~23\ = CARRY((!\U0|Add16~22_combout\ & !\U0|Add14~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add16~22_combout\,
	datad => VCC,
	cin => \U0|Add14~21\,
	combout => \U0|Add14~22_combout\,
	cout => \U0|Add14~23\);

-- Location: LCCOMB_X35_Y10_N24
\U0|Add14~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add14~24_combout\ = \U0|Add14~23\ $ (\U0|Add16~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add16~22_combout\,
	cin => \U0|Add14~23\,
	combout => \U0|Add14~24_combout\);

-- Location: LCCOMB_X34_Y10_N12
\U0|Add15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~0_combout\ = (\U0|Add14~8_combout\ & (\U0|fig_yShift\(0) $ (VCC))) # (!\U0|Add14~8_combout\ & (\U0|fig_yShift\(0) & VCC))
-- \U0|Add15~1\ = CARRY((\U0|Add14~8_combout\ & \U0|fig_yShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add14~8_combout\,
	datab => \U0|fig_yShift\(0),
	datad => VCC,
	combout => \U0|Add15~0_combout\,
	cout => \U0|Add15~1\);

-- Location: LCCOMB_X34_Y10_N14
\U0|Add15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~2_combout\ = (\U0|fig_yShift\(1) & ((\U0|Add14~10_combout\ & (\U0|Add15~1\ & VCC)) # (!\U0|Add14~10_combout\ & (!\U0|Add15~1\)))) # (!\U0|fig_yShift\(1) & ((\U0|Add14~10_combout\ & (!\U0|Add15~1\)) # (!\U0|Add14~10_combout\ & ((\U0|Add15~1\) # 
-- (GND)))))
-- \U0|Add15~3\ = CARRY((\U0|fig_yShift\(1) & (!\U0|Add14~10_combout\ & !\U0|Add15~1\)) # (!\U0|fig_yShift\(1) & ((!\U0|Add15~1\) # (!\U0|Add14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(1),
	datab => \U0|Add14~10_combout\,
	datad => VCC,
	cin => \U0|Add15~1\,
	combout => \U0|Add15~2_combout\,
	cout => \U0|Add15~3\);

-- Location: LCCOMB_X34_Y10_N16
\U0|Add15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~4_combout\ = ((\U0|Add14~12_combout\ $ (\U0|fig_yShift\(0) $ (!\U0|Add15~3\)))) # (GND)
-- \U0|Add15~5\ = CARRY((\U0|Add14~12_combout\ & ((\U0|fig_yShift\(0)) # (!\U0|Add15~3\))) # (!\U0|Add14~12_combout\ & (\U0|fig_yShift\(0) & !\U0|Add15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add14~12_combout\,
	datab => \U0|fig_yShift\(0),
	datad => VCC,
	cin => \U0|Add15~3\,
	combout => \U0|Add15~4_combout\,
	cout => \U0|Add15~5\);

-- Location: LCCOMB_X34_Y10_N18
\U0|Add15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~6_combout\ = (\U0|Add14~14_combout\ & ((\U0|fig_yShift\(1) & (\U0|Add15~5\ & VCC)) # (!\U0|fig_yShift\(1) & (!\U0|Add15~5\)))) # (!\U0|Add14~14_combout\ & ((\U0|fig_yShift\(1) & (!\U0|Add15~5\)) # (!\U0|fig_yShift\(1) & ((\U0|Add15~5\) # 
-- (GND)))))
-- \U0|Add15~7\ = CARRY((\U0|Add14~14_combout\ & (!\U0|fig_yShift\(1) & !\U0|Add15~5\)) # (!\U0|Add14~14_combout\ & ((!\U0|Add15~5\) # (!\U0|fig_yShift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add14~14_combout\,
	datab => \U0|fig_yShift\(1),
	datad => VCC,
	cin => \U0|Add15~5\,
	combout => \U0|Add15~6_combout\,
	cout => \U0|Add15~7\);

-- Location: LCCOMB_X34_Y10_N20
\U0|Add15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~8_combout\ = (\U0|Add14~16_combout\ & (\U0|Add15~7\ $ (GND))) # (!\U0|Add14~16_combout\ & (!\U0|Add15~7\ & VCC))
-- \U0|Add15~9\ = CARRY((\U0|Add14~16_combout\ & !\U0|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add14~16_combout\,
	datad => VCC,
	cin => \U0|Add15~7\,
	combout => \U0|Add15~8_combout\,
	cout => \U0|Add15~9\);

-- Location: LCCOMB_X34_Y10_N22
\U0|Add15~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~10_combout\ = (\U0|Add14~18_combout\ & (!\U0|Add15~9\)) # (!\U0|Add14~18_combout\ & ((\U0|Add15~9\) # (GND)))
-- \U0|Add15~11\ = CARRY((!\U0|Add15~9\) # (!\U0|Add14~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add14~18_combout\,
	datad => VCC,
	cin => \U0|Add15~9\,
	combout => \U0|Add15~10_combout\,
	cout => \U0|Add15~11\);

-- Location: LCCOMB_X34_Y10_N24
\U0|Add15~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~12_combout\ = (\U0|Add14~20_combout\ & (\U0|Add15~11\ $ (GND))) # (!\U0|Add14~20_combout\ & (!\U0|Add15~11\ & VCC))
-- \U0|Add15~13\ = CARRY((\U0|Add14~20_combout\ & !\U0|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add14~20_combout\,
	datad => VCC,
	cin => \U0|Add15~11\,
	combout => \U0|Add15~12_combout\,
	cout => \U0|Add15~13\);

-- Location: LCCOMB_X34_Y10_N26
\U0|Add15~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~14_combout\ = (\U0|Add14~22_combout\ & (!\U0|Add15~13\)) # (!\U0|Add14~22_combout\ & ((\U0|Add15~13\) # (GND)))
-- \U0|Add15~15\ = CARRY((!\U0|Add15~13\) # (!\U0|Add14~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add14~22_combout\,
	datad => VCC,
	cin => \U0|Add15~13\,
	combout => \U0|Add15~14_combout\,
	cout => \U0|Add15~15\);

-- Location: LCCOMB_X34_Y10_N28
\U0|Add15~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~16_combout\ = (\U0|Add14~24_combout\ & (\U0|Add15~15\ $ (GND))) # (!\U0|Add14~24_combout\ & (!\U0|Add15~15\ & VCC))
-- \U0|Add15~17\ = CARRY((\U0|Add14~24_combout\ & !\U0|Add15~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add14~24_combout\,
	datad => VCC,
	cin => \U0|Add15~15\,
	combout => \U0|Add15~16_combout\,
	cout => \U0|Add15~17\);

-- Location: LCCOMB_X34_Y10_N4
\U0|y1[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(13) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add15~16_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y1\(13),
	datac => \U0|y2[0]~17clkctrl_outclk\,
	datad => \U0|Add15~16_combout\,
	combout => \U0|y1\(13));

-- Location: LCCOMB_X32_Y10_N8
\U0|y1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(8) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add15~6_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y1\(8),
	datac => \U0|Add15~6_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(8));

-- Location: LCCOMB_X35_Y9_N4
\U0|y1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(7) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add15~4_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y1\(7),
	datac => \U0|y2[0]~17clkctrl_outclk\,
	datad => \U0|Add15~4_combout\,
	combout => \U0|y1\(7));

-- Location: LCCOMB_X35_Y9_N22
\U0|y1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(6) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add15~2_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|y1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add15~2_combout\,
	datac => \U0|y1\(6),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(6));

-- Location: LCCOMB_X35_Y9_N8
\U0|y1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(5) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add15~0_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y1\(5),
	datac => \U0|Add15~0_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(5));

-- Location: LCCOMB_X35_Y10_N26
\U0|y1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(4) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add14~6_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y1\(4),
	datac => \U0|Add14~6_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(4));

-- Location: LCCOMB_X35_Y10_N28
\U0|y1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(3) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add14~4_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y1\(3),
	datac => \U0|Add14~4_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(3));

-- Location: LCCOMB_X35_Y10_N30
\U0|y1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(2) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add14~2_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|y1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add14~2_combout\,
	datac => \U0|y1\(2),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(2));

-- Location: LCCOMB_X35_Y9_N14
\U0|y1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(1) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add14~0_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|y1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add14~0_combout\,
	datac => \U0|y1\(1),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(1));

-- Location: LCCOMB_X36_Y9_N14
\U0|LessThan30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~2_cout\ = CARRY((!\U0|U1|row\(0) & \U0|x1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(0),
	datab => \U0|x1\(0),
	datad => VCC,
	cout => \U0|LessThan30~2_cout\);

-- Location: LCCOMB_X36_Y9_N16
\U0|LessThan30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~4_cout\ = CARRY((\U0|U1|row\(1) & ((!\U0|LessThan30~2_cout\) # (!\U0|y1\(1)))) # (!\U0|U1|row\(1) & (!\U0|y1\(1) & !\U0|LessThan30~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(1),
	datab => \U0|y1\(1),
	datad => VCC,
	cin => \U0|LessThan30~2_cout\,
	cout => \U0|LessThan30~4_cout\);

-- Location: LCCOMB_X36_Y9_N18
\U0|LessThan30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~6_cout\ = CARRY((\U0|U1|row\(2) & (\U0|y1\(2) & !\U0|LessThan30~4_cout\)) # (!\U0|U1|row\(2) & ((\U0|y1\(2)) # (!\U0|LessThan30~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|y1\(2),
	datad => VCC,
	cin => \U0|LessThan30~4_cout\,
	cout => \U0|LessThan30~6_cout\);

-- Location: LCCOMB_X36_Y9_N20
\U0|LessThan30~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~8_cout\ = CARRY((\U0|U1|row\(3) & ((!\U0|LessThan30~6_cout\) # (!\U0|y1\(3)))) # (!\U0|U1|row\(3) & (!\U0|y1\(3) & !\U0|LessThan30~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(3),
	datab => \U0|y1\(3),
	datad => VCC,
	cin => \U0|LessThan30~6_cout\,
	cout => \U0|LessThan30~8_cout\);

-- Location: LCCOMB_X36_Y9_N22
\U0|LessThan30~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~10_cout\ = CARRY((\U0|y1\(4) & ((!\U0|LessThan30~8_cout\) # (!\U0|U1|row\(4)))) # (!\U0|y1\(4) & (!\U0|U1|row\(4) & !\U0|LessThan30~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y1\(4),
	datab => \U0|U1|row\(4),
	datad => VCC,
	cin => \U0|LessThan30~8_cout\,
	cout => \U0|LessThan30~10_cout\);

-- Location: LCCOMB_X36_Y9_N24
\U0|LessThan30~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~12_cout\ = CARRY((\U0|y1\(5) & (\U0|U1|row\(5) & !\U0|LessThan30~10_cout\)) # (!\U0|y1\(5) & ((\U0|U1|row\(5)) # (!\U0|LessThan30~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y1\(5),
	datab => \U0|U1|row\(5),
	datad => VCC,
	cin => \U0|LessThan30~10_cout\,
	cout => \U0|LessThan30~12_cout\);

-- Location: LCCOMB_X36_Y9_N26
\U0|LessThan30~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~14_cout\ = CARRY((\U0|U1|row\(6) & (\U0|y1\(6) & !\U0|LessThan30~12_cout\)) # (!\U0|U1|row\(6) & ((\U0|y1\(6)) # (!\U0|LessThan30~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(6),
	datab => \U0|y1\(6),
	datad => VCC,
	cin => \U0|LessThan30~12_cout\,
	cout => \U0|LessThan30~14_cout\);

-- Location: LCCOMB_X36_Y9_N28
\U0|LessThan30~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~16_cout\ = CARRY((\U0|U1|row\(7) & ((!\U0|LessThan30~14_cout\) # (!\U0|y1\(7)))) # (!\U0|U1|row\(7) & (!\U0|y1\(7) & !\U0|LessThan30~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(7),
	datab => \U0|y1\(7),
	datad => VCC,
	cin => \U0|LessThan30~14_cout\,
	cout => \U0|LessThan30~16_cout\);

-- Location: LCCOMB_X36_Y9_N30
\U0|LessThan30~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~17_combout\ = (\U0|U1|row\(8) & (!\U0|LessThan30~16_cout\ & \U0|y1\(8))) # (!\U0|U1|row\(8) & ((\U0|y1\(8)) # (!\U0|LessThan30~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(8),
	datad => \U0|y1\(8),
	cin => \U0|LessThan30~16_cout\,
	combout => \U0|LessThan30~17_combout\);

-- Location: LCCOMB_X34_Y10_N30
\U0|Add15~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add15~18_combout\ = \U0|Add15~17\ $ (\U0|Add14~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add14~24_combout\,
	cin => \U0|Add15~17\,
	combout => \U0|Add15~18_combout\);

-- Location: LCCOMB_X34_Y10_N10
\U0|y1[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(31) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add15~18_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y1\(31),
	datac => \U0|y2[0]~17clkctrl_outclk\,
	datad => \U0|Add15~18_combout\,
	combout => \U0|y1\(31));

-- Location: LCCOMB_X34_Y10_N8
\U0|y1[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(11) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add15~12_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y1\(11),
	datac => \U0|Add15~12_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(11));

-- Location: LCCOMB_X34_Y10_N2
\U0|y1[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(12) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add15~14_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y1\(12),
	datac => \U0|Add15~14_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(12));

-- Location: LCCOMB_X34_Y10_N0
\U0|y1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(9) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add15~8_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y1\(9),
	datac => \U0|Add15~8_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(9));

-- Location: LCCOMB_X34_Y10_N6
\U0|y1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y1\(10) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add15~10_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y1\(10),
	datab => \U0|Add15~10_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|y1\(10));

-- Location: LCCOMB_X40_Y10_N12
\U0|LessThan30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan30~0_combout\ = (\U0|y1\(11)) # ((\U0|y1\(12)) # ((\U0|y1\(9)) # (\U0|y1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y1\(11),
	datab => \U0|y1\(12),
	datac => \U0|y1\(9),
	datad => \U0|y1\(10),
	combout => \U0|LessThan30~0_combout\);

-- Location: LCCOMB_X40_Y10_N2
\U0|FSM~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~73_combout\ = (!\U0|y1\(31) & ((\U0|y1\(13)) # ((\U0|LessThan30~17_combout\) # (\U0|LessThan30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|y1\(13),
	datab => \U0|LessThan30~17_combout\,
	datac => \U0|y1\(31),
	datad => \U0|LessThan30~0_combout\,
	combout => \U0|FSM~73_combout\);

-- Location: LCCOMB_X40_Y10_N10
\U0|FSM~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~77_combout\ = (\U0|FSM~76_combout\ & (!\U0|y2\(13) & (\U0|LessThan31~16_combout\ & \U0|FSM~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~76_combout\,
	datab => \U0|y2\(13),
	datac => \U0|LessThan31~16_combout\,
	datad => \U0|FSM~73_combout\,
	combout => \U0|FSM~77_combout\);

-- Location: LCCOMB_X37_Y11_N0
\U0|Add10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~1_cout\ = CARRY(!\U0|U1|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(0),
	datad => VCC,
	cout => \U0|Add10~1_cout\);

-- Location: LCCOMB_X37_Y11_N2
\U0|Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~2_combout\ = (\U0|U1|column\(1) & ((\U0|Add10~1_cout\) # (GND))) # (!\U0|U1|column\(1) & (!\U0|Add10~1_cout\))
-- \U0|Add10~3\ = CARRY((\U0|U1|column\(1)) # (!\U0|Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(1),
	datad => VCC,
	cin => \U0|Add10~1_cout\,
	combout => \U0|Add10~2_combout\,
	cout => \U0|Add10~3\);

-- Location: LCCOMB_X37_Y11_N4
\U0|Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~4_combout\ = (\U0|U1|column\(2) & (!\U0|Add10~3\ & VCC)) # (!\U0|U1|column\(2) & (\U0|Add10~3\ $ (GND)))
-- \U0|Add10~5\ = CARRY((!\U0|U1|column\(2) & !\U0|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(2),
	datad => VCC,
	cin => \U0|Add10~3\,
	combout => \U0|Add10~4_combout\,
	cout => \U0|Add10~5\);

-- Location: LCCOMB_X37_Y11_N6
\U0|Add10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~6_combout\ = (\U0|U1|column\(3) & ((\U0|Add10~5\) # (GND))) # (!\U0|U1|column\(3) & (!\U0|Add10~5\))
-- \U0|Add10~7\ = CARRY((\U0|U1|column\(3)) # (!\U0|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(3),
	datad => VCC,
	cin => \U0|Add10~5\,
	combout => \U0|Add10~6_combout\,
	cout => \U0|Add10~7\);

-- Location: LCCOMB_X37_Y11_N8
\U0|Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~8_combout\ = (\U0|U1|column\(4) & (!\U0|Add10~7\ & VCC)) # (!\U0|U1|column\(4) & (\U0|Add10~7\ $ (GND)))
-- \U0|Add10~9\ = CARRY((!\U0|U1|column\(4) & !\U0|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(4),
	datad => VCC,
	cin => \U0|Add10~7\,
	combout => \U0|Add10~8_combout\,
	cout => \U0|Add10~9\);

-- Location: LCCOMB_X37_Y11_N10
\U0|Add10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~10_combout\ = (\U0|U1|column\(5) & ((\U0|Add10~9\) # (GND))) # (!\U0|U1|column\(5) & (!\U0|Add10~9\))
-- \U0|Add10~11\ = CARRY((\U0|U1|column\(5)) # (!\U0|Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(5),
	datad => VCC,
	cin => \U0|Add10~9\,
	combout => \U0|Add10~10_combout\,
	cout => \U0|Add10~11\);

-- Location: LCCOMB_X37_Y11_N12
\U0|Add10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~12_combout\ = (\U0|U1|column\(6) & (!\U0|Add10~11\ & VCC)) # (!\U0|U1|column\(6) & (\U0|Add10~11\ $ (GND)))
-- \U0|Add10~13\ = CARRY((!\U0|U1|column\(6) & !\U0|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(6),
	datad => VCC,
	cin => \U0|Add10~11\,
	combout => \U0|Add10~12_combout\,
	cout => \U0|Add10~13\);

-- Location: LCCOMB_X37_Y11_N14
\U0|Add10~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~14_combout\ = (\U0|U1|column\(7) & ((\U0|Add10~13\) # (GND))) # (!\U0|U1|column\(7) & (!\U0|Add10~13\))
-- \U0|Add10~15\ = CARRY((\U0|U1|column\(7)) # (!\U0|Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(7),
	datad => VCC,
	cin => \U0|Add10~13\,
	combout => \U0|Add10~14_combout\,
	cout => \U0|Add10~15\);

-- Location: LCCOMB_X37_Y11_N16
\U0|Add10~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~16_combout\ = (\U0|U1|column\(8) & (!\U0|Add10~15\ & VCC)) # (!\U0|U1|column\(8) & (\U0|Add10~15\ $ (GND)))
-- \U0|Add10~17\ = CARRY((!\U0|U1|column\(8) & !\U0|Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|column\(8),
	datad => VCC,
	cin => \U0|Add10~15\,
	combout => \U0|Add10~16_combout\,
	cout => \U0|Add10~17\);

-- Location: LCCOMB_X37_Y11_N18
\U0|Add10~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~18_combout\ = (\U0|U1|column\(9) & ((\U0|Add10~17\) # (GND))) # (!\U0|U1|column\(9) & (!\U0|Add10~17\))
-- \U0|Add10~19\ = CARRY((\U0|U1|column\(9)) # (!\U0|Add10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(9),
	datad => VCC,
	cin => \U0|Add10~17\,
	combout => \U0|Add10~18_combout\,
	cout => \U0|Add10~19\);

-- Location: LCCOMB_X37_Y11_N20
\U0|Add10~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~20_combout\ = \U0|Add10~19\ $ (GND)
-- \U0|Add10~21\ = CARRY(!\U0|Add10~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U0|Add10~19\,
	combout => \U0|Add10~20_combout\,
	cout => \U0|Add10~21\);

-- Location: LCCOMB_X37_Y11_N22
\U0|Add10~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~22_combout\ = !\U0|Add10~21\
-- \U0|Add10~23\ = CARRY(!\U0|Add10~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U0|Add10~21\,
	combout => \U0|Add10~22_combout\,
	cout => \U0|Add10~23\);

-- Location: LCCOMB_X37_Y11_N24
\U0|Add10~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add10~24_combout\ = \U0|Add10~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U0|Add10~23\,
	combout => \U0|Add10~24_combout\);

-- Location: LCCOMB_X37_Y10_N6
\U0|Add11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~0_combout\ = (\U0|fig_xShift\(0) & (\U0|Add10~2_combout\ $ (VCC))) # (!\U0|fig_xShift\(0) & (\U0|Add10~2_combout\ & VCC))
-- \U0|Add11~1\ = CARRY((\U0|fig_xShift\(0) & \U0|Add10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(0),
	datab => \U0|Add10~2_combout\,
	datad => VCC,
	combout => \U0|Add11~0_combout\,
	cout => \U0|Add11~1\);

-- Location: LCCOMB_X37_Y10_N8
\U0|Add11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~2_combout\ = (\U0|fig_xShift\(1) & ((\U0|Add10~4_combout\ & (\U0|Add11~1\ & VCC)) # (!\U0|Add10~4_combout\ & (!\U0|Add11~1\)))) # (!\U0|fig_xShift\(1) & ((\U0|Add10~4_combout\ & (!\U0|Add11~1\)) # (!\U0|Add10~4_combout\ & ((\U0|Add11~1\) # 
-- (GND)))))
-- \U0|Add11~3\ = CARRY((\U0|fig_xShift\(1) & (!\U0|Add10~4_combout\ & !\U0|Add11~1\)) # (!\U0|fig_xShift\(1) & ((!\U0|Add11~1\) # (!\U0|Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(1),
	datab => \U0|Add10~4_combout\,
	datad => VCC,
	cin => \U0|Add11~1\,
	combout => \U0|Add11~2_combout\,
	cout => \U0|Add11~3\);

-- Location: LCCOMB_X37_Y10_N10
\U0|Add11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~4_combout\ = (\U0|Add10~6_combout\ & (\U0|Add11~3\ $ (GND))) # (!\U0|Add10~6_combout\ & (!\U0|Add11~3\ & VCC))
-- \U0|Add11~5\ = CARRY((\U0|Add10~6_combout\ & !\U0|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add10~6_combout\,
	datad => VCC,
	cin => \U0|Add11~3\,
	combout => \U0|Add11~4_combout\,
	cout => \U0|Add11~5\);

-- Location: LCCOMB_X37_Y10_N12
\U0|Add11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~6_combout\ = (\U0|fig_xShift\(0) & ((\U0|Add10~8_combout\ & (\U0|Add11~5\ & VCC)) # (!\U0|Add10~8_combout\ & (!\U0|Add11~5\)))) # (!\U0|fig_xShift\(0) & ((\U0|Add10~8_combout\ & (!\U0|Add11~5\)) # (!\U0|Add10~8_combout\ & ((\U0|Add11~5\) # 
-- (GND)))))
-- \U0|Add11~7\ = CARRY((\U0|fig_xShift\(0) & (!\U0|Add10~8_combout\ & !\U0|Add11~5\)) # (!\U0|fig_xShift\(0) & ((!\U0|Add11~5\) # (!\U0|Add10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(0),
	datab => \U0|Add10~8_combout\,
	datad => VCC,
	cin => \U0|Add11~5\,
	combout => \U0|Add11~6_combout\,
	cout => \U0|Add11~7\);

-- Location: LCCOMB_X37_Y10_N14
\U0|Add11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~8_combout\ = ((\U0|fig_xShift\(1) $ (\U0|Add10~10_combout\ $ (!\U0|Add11~7\)))) # (GND)
-- \U0|Add11~9\ = CARRY((\U0|fig_xShift\(1) & ((\U0|Add10~10_combout\) # (!\U0|Add11~7\))) # (!\U0|fig_xShift\(1) & (\U0|Add10~10_combout\ & !\U0|Add11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(1),
	datab => \U0|Add10~10_combout\,
	datad => VCC,
	cin => \U0|Add11~7\,
	combout => \U0|Add11~8_combout\,
	cout => \U0|Add11~9\);

-- Location: LCCOMB_X37_Y10_N16
\U0|Add11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~10_combout\ = (\U0|fig_xShift\(0) & ((\U0|Add10~12_combout\ & (\U0|Add11~9\ & VCC)) # (!\U0|Add10~12_combout\ & (!\U0|Add11~9\)))) # (!\U0|fig_xShift\(0) & ((\U0|Add10~12_combout\ & (!\U0|Add11~9\)) # (!\U0|Add10~12_combout\ & ((\U0|Add11~9\) # 
-- (GND)))))
-- \U0|Add11~11\ = CARRY((\U0|fig_xShift\(0) & (!\U0|Add10~12_combout\ & !\U0|Add11~9\)) # (!\U0|fig_xShift\(0) & ((!\U0|Add11~9\) # (!\U0|Add10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_xShift\(0),
	datab => \U0|Add10~12_combout\,
	datad => VCC,
	cin => \U0|Add11~9\,
	combout => \U0|Add11~10_combout\,
	cout => \U0|Add11~11\);

-- Location: LCCOMB_X37_Y10_N18
\U0|Add11~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~12_combout\ = ((\U0|Mult1|mult_core|romout[0][7]~0_combout\ $ (\U0|Add10~14_combout\ $ (!\U0|Add11~11\)))) # (GND)
-- \U0|Add11~13\ = CARRY((\U0|Mult1|mult_core|romout[0][7]~0_combout\ & ((\U0|Add10~14_combout\) # (!\U0|Add11~11\))) # (!\U0|Mult1|mult_core|romout[0][7]~0_combout\ & (\U0|Add10~14_combout\ & !\U0|Add11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Mult1|mult_core|romout[0][7]~0_combout\,
	datab => \U0|Add10~14_combout\,
	datad => VCC,
	cin => \U0|Add11~11\,
	combout => \U0|Add11~12_combout\,
	cout => \U0|Add11~13\);

-- Location: LCCOMB_X37_Y10_N20
\U0|Add11~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~14_combout\ = (\U0|Add10~16_combout\ & ((\U0|Mult1|mult_core|_~1_combout\ & (\U0|Add11~13\ & VCC)) # (!\U0|Mult1|mult_core|_~1_combout\ & (!\U0|Add11~13\)))) # (!\U0|Add10~16_combout\ & ((\U0|Mult1|mult_core|_~1_combout\ & (!\U0|Add11~13\)) # 
-- (!\U0|Mult1|mult_core|_~1_combout\ & ((\U0|Add11~13\) # (GND)))))
-- \U0|Add11~15\ = CARRY((\U0|Add10~16_combout\ & (!\U0|Mult1|mult_core|_~1_combout\ & !\U0|Add11~13\)) # (!\U0|Add10~16_combout\ & ((!\U0|Add11~13\) # (!\U0|Mult1|mult_core|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add10~16_combout\,
	datab => \U0|Mult1|mult_core|_~1_combout\,
	datad => VCC,
	cin => \U0|Add11~13\,
	combout => \U0|Add11~14_combout\,
	cout => \U0|Add11~15\);

-- Location: LCCOMB_X37_Y10_N22
\U0|Add11~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~16_combout\ = ((\U0|Add10~18_combout\ $ (\U0|Mult1|mult_core|_~0_combout\ $ (!\U0|Add11~15\)))) # (GND)
-- \U0|Add11~17\ = CARRY((\U0|Add10~18_combout\ & ((\U0|Mult1|mult_core|_~0_combout\) # (!\U0|Add11~15\))) # (!\U0|Add10~18_combout\ & (\U0|Mult1|mult_core|_~0_combout\ & !\U0|Add11~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add10~18_combout\,
	datab => \U0|Mult1|mult_core|_~0_combout\,
	datad => VCC,
	cin => \U0|Add11~15\,
	combout => \U0|Add11~16_combout\,
	cout => \U0|Add11~17\);

-- Location: LCCOMB_X37_Y10_N24
\U0|Add11~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~18_combout\ = (\U0|Add10~20_combout\ & (!\U0|Add11~17\)) # (!\U0|Add10~20_combout\ & ((\U0|Add11~17\) # (GND)))
-- \U0|Add11~19\ = CARRY((!\U0|Add11~17\) # (!\U0|Add10~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add10~20_combout\,
	datad => VCC,
	cin => \U0|Add11~17\,
	combout => \U0|Add11~18_combout\,
	cout => \U0|Add11~19\);

-- Location: LCCOMB_X37_Y10_N26
\U0|Add11~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~20_combout\ = (\U0|Add10~22_combout\ & (\U0|Add11~19\ $ (GND))) # (!\U0|Add10~22_combout\ & (!\U0|Add11~19\ & VCC))
-- \U0|Add11~21\ = CARRY((\U0|Add10~22_combout\ & !\U0|Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add10~22_combout\,
	datad => VCC,
	cin => \U0|Add11~19\,
	combout => \U0|Add11~20_combout\,
	cout => \U0|Add11~21\);

-- Location: LCCOMB_X37_Y10_N28
\U0|Add11~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add11~22_combout\ = \U0|Add10~24_combout\ $ (\U0|Add11~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add10~24_combout\,
	cin => \U0|Add11~21\,
	combout => \U0|Add11~22_combout\);

-- Location: LCCOMB_X38_Y10_N0
\U0|Add8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~1_cout\ = CARRY(\U0|U1|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(0),
	datad => VCC,
	cout => \U0|Add8~1_cout\);

-- Location: LCCOMB_X38_Y10_N2
\U0|Add8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~2_combout\ = (\U0|Add11~0_combout\ & (\U0|Add8~1_cout\ & VCC)) # (!\U0|Add11~0_combout\ & (!\U0|Add8~1_cout\))
-- \U0|Add8~3\ = CARRY((!\U0|Add11~0_combout\ & !\U0|Add8~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~0_combout\,
	datad => VCC,
	cin => \U0|Add8~1_cout\,
	combout => \U0|Add8~2_combout\,
	cout => \U0|Add8~3\);

-- Location: LCCOMB_X38_Y10_N4
\U0|Add8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~4_combout\ = (\U0|Add11~2_combout\ & (\U0|Add8~3\ $ (GND))) # (!\U0|Add11~2_combout\ & (!\U0|Add8~3\ & VCC))
-- \U0|Add8~5\ = CARRY((\U0|Add11~2_combout\ & !\U0|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~2_combout\,
	datad => VCC,
	cin => \U0|Add8~3\,
	combout => \U0|Add8~4_combout\,
	cout => \U0|Add8~5\);

-- Location: LCCOMB_X38_Y10_N6
\U0|Add8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~6_combout\ = (\U0|Add11~4_combout\ & (!\U0|Add8~5\)) # (!\U0|Add11~4_combout\ & ((\U0|Add8~5\) # (GND)))
-- \U0|Add8~7\ = CARRY((!\U0|Add8~5\) # (!\U0|Add11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~4_combout\,
	datad => VCC,
	cin => \U0|Add8~5\,
	combout => \U0|Add8~6_combout\,
	cout => \U0|Add8~7\);

-- Location: LCCOMB_X38_Y10_N8
\U0|Add8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~8_combout\ = (\U0|Add11~6_combout\ & (\U0|Add8~7\ $ (GND))) # (!\U0|Add11~6_combout\ & (!\U0|Add8~7\ & VCC))
-- \U0|Add8~9\ = CARRY((\U0|Add11~6_combout\ & !\U0|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~6_combout\,
	datad => VCC,
	cin => \U0|Add8~7\,
	combout => \U0|Add8~8_combout\,
	cout => \U0|Add8~9\);

-- Location: LCCOMB_X38_Y10_N10
\U0|Add8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~10_combout\ = (\U0|Add11~8_combout\ & (!\U0|Add8~9\)) # (!\U0|Add11~8_combout\ & ((\U0|Add8~9\) # (GND)))
-- \U0|Add8~11\ = CARRY((!\U0|Add8~9\) # (!\U0|Add11~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~8_combout\,
	datad => VCC,
	cin => \U0|Add8~9\,
	combout => \U0|Add8~10_combout\,
	cout => \U0|Add8~11\);

-- Location: LCCOMB_X38_Y10_N12
\U0|Add8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~12_combout\ = (\U0|Add11~10_combout\ & ((GND) # (!\U0|Add8~11\))) # (!\U0|Add11~10_combout\ & (\U0|Add8~11\ $ (GND)))
-- \U0|Add8~13\ = CARRY((\U0|Add11~10_combout\) # (!\U0|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~10_combout\,
	datad => VCC,
	cin => \U0|Add8~11\,
	combout => \U0|Add8~12_combout\,
	cout => \U0|Add8~13\);

-- Location: LCCOMB_X38_Y10_N14
\U0|Add8~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~14_combout\ = (\U0|Add11~12_combout\ & (\U0|Add8~13\ & VCC)) # (!\U0|Add11~12_combout\ & (!\U0|Add8~13\))
-- \U0|Add8~15\ = CARRY((!\U0|Add11~12_combout\ & !\U0|Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~12_combout\,
	datad => VCC,
	cin => \U0|Add8~13\,
	combout => \U0|Add8~14_combout\,
	cout => \U0|Add8~15\);

-- Location: LCCOMB_X38_Y10_N16
\U0|Add8~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~16_combout\ = (\U0|Add11~14_combout\ & (\U0|Add8~15\ $ (GND))) # (!\U0|Add11~14_combout\ & (!\U0|Add8~15\ & VCC))
-- \U0|Add8~17\ = CARRY((\U0|Add11~14_combout\ & !\U0|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~14_combout\,
	datad => VCC,
	cin => \U0|Add8~15\,
	combout => \U0|Add8~16_combout\,
	cout => \U0|Add8~17\);

-- Location: LCCOMB_X38_Y10_N18
\U0|Add8~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~18_combout\ = (\U0|Add11~16_combout\ & (!\U0|Add8~17\)) # (!\U0|Add11~16_combout\ & ((\U0|Add8~17\) # (GND)))
-- \U0|Add8~19\ = CARRY((!\U0|Add8~17\) # (!\U0|Add11~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~16_combout\,
	datad => VCC,
	cin => \U0|Add8~17\,
	combout => \U0|Add8~18_combout\,
	cout => \U0|Add8~19\);

-- Location: LCCOMB_X38_Y10_N20
\U0|Add8~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~20_combout\ = (\U0|Add11~18_combout\ & (\U0|Add8~19\ $ (GND))) # (!\U0|Add11~18_combout\ & (!\U0|Add8~19\ & VCC))
-- \U0|Add8~21\ = CARRY((\U0|Add11~18_combout\ & !\U0|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~18_combout\,
	datad => VCC,
	cin => \U0|Add8~19\,
	combout => \U0|Add8~20_combout\,
	cout => \U0|Add8~21\);

-- Location: LCCOMB_X38_Y10_N22
\U0|Add8~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~22_combout\ = (\U0|Add11~20_combout\ & (!\U0|Add8~21\)) # (!\U0|Add11~20_combout\ & ((\U0|Add8~21\) # (GND)))
-- \U0|Add8~23\ = CARRY((!\U0|Add8~21\) # (!\U0|Add11~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~20_combout\,
	datad => VCC,
	cin => \U0|Add8~21\,
	combout => \U0|Add8~22_combout\,
	cout => \U0|Add8~23\);

-- Location: LCCOMB_X38_Y10_N24
\U0|Add8~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~24_combout\ = (\U0|Add11~22_combout\ & (\U0|Add8~23\ $ (GND))) # (!\U0|Add11~22_combout\ & (!\U0|Add8~23\ & VCC))
-- \U0|Add8~25\ = CARRY((\U0|Add11~22_combout\ & !\U0|Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~22_combout\,
	datad => VCC,
	cin => \U0|Add8~23\,
	combout => \U0|Add8~24_combout\,
	cout => \U0|Add8~25\);

-- Location: LCCOMB_X38_Y10_N26
\U0|Add8~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add8~26_combout\ = \U0|Add11~22_combout\ $ (\U0|Add8~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~22_combout\,
	cin => \U0|Add8~25\,
	combout => \U0|Add8~26_combout\);

-- Location: LCCOMB_X39_Y10_N0
\U0|Add9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~0_combout\ = (\U0|fig_yShift\(0) & (\U0|Add8~10_combout\ $ (VCC))) # (!\U0|fig_yShift\(0) & (\U0|Add8~10_combout\ & VCC))
-- \U0|Add9~1\ = CARRY((\U0|fig_yShift\(0) & \U0|Add8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(0),
	datab => \U0|Add8~10_combout\,
	datad => VCC,
	combout => \U0|Add9~0_combout\,
	cout => \U0|Add9~1\);

-- Location: LCCOMB_X39_Y10_N2
\U0|Add9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~2_combout\ = (\U0|fig_yShift\(1) & ((\U0|Add8~12_combout\ & (\U0|Add9~1\ & VCC)) # (!\U0|Add8~12_combout\ & (!\U0|Add9~1\)))) # (!\U0|fig_yShift\(1) & ((\U0|Add8~12_combout\ & (!\U0|Add9~1\)) # (!\U0|Add8~12_combout\ & ((\U0|Add9~1\) # (GND)))))
-- \U0|Add9~3\ = CARRY((\U0|fig_yShift\(1) & (!\U0|Add8~12_combout\ & !\U0|Add9~1\)) # (!\U0|fig_yShift\(1) & ((!\U0|Add9~1\) # (!\U0|Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(1),
	datab => \U0|Add8~12_combout\,
	datad => VCC,
	cin => \U0|Add9~1\,
	combout => \U0|Add9~2_combout\,
	cout => \U0|Add9~3\);

-- Location: LCCOMB_X39_Y10_N4
\U0|Add9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~4_combout\ = ((\U0|Add8~14_combout\ $ (\U0|fig_yShift\(0) $ (!\U0|Add9~3\)))) # (GND)
-- \U0|Add9~5\ = CARRY((\U0|Add8~14_combout\ & ((\U0|fig_yShift\(0)) # (!\U0|Add9~3\))) # (!\U0|Add8~14_combout\ & (\U0|fig_yShift\(0) & !\U0|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add8~14_combout\,
	datab => \U0|fig_yShift\(0),
	datad => VCC,
	cin => \U0|Add9~3\,
	combout => \U0|Add9~4_combout\,
	cout => \U0|Add9~5\);

-- Location: LCCOMB_X39_Y10_N6
\U0|Add9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~6_combout\ = (\U0|Add8~16_combout\ & ((\U0|fig_yShift\(1) & (\U0|Add9~5\ & VCC)) # (!\U0|fig_yShift\(1) & (!\U0|Add9~5\)))) # (!\U0|Add8~16_combout\ & ((\U0|fig_yShift\(1) & (!\U0|Add9~5\)) # (!\U0|fig_yShift\(1) & ((\U0|Add9~5\) # (GND)))))
-- \U0|Add9~7\ = CARRY((\U0|Add8~16_combout\ & (!\U0|fig_yShift\(1) & !\U0|Add9~5\)) # (!\U0|Add8~16_combout\ & ((!\U0|Add9~5\) # (!\U0|fig_yShift\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add8~16_combout\,
	datab => \U0|fig_yShift\(1),
	datad => VCC,
	cin => \U0|Add9~5\,
	combout => \U0|Add9~6_combout\,
	cout => \U0|Add9~7\);

-- Location: LCCOMB_X39_Y10_N8
\U0|Add9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~8_combout\ = (\U0|Add8~18_combout\ & (\U0|Add9~7\ $ (GND))) # (!\U0|Add8~18_combout\ & (!\U0|Add9~7\ & VCC))
-- \U0|Add9~9\ = CARRY((\U0|Add8~18_combout\ & !\U0|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add8~18_combout\,
	datad => VCC,
	cin => \U0|Add9~7\,
	combout => \U0|Add9~8_combout\,
	cout => \U0|Add9~9\);

-- Location: LCCOMB_X39_Y10_N10
\U0|Add9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~10_combout\ = (\U0|Add8~20_combout\ & (!\U0|Add9~9\)) # (!\U0|Add8~20_combout\ & ((\U0|Add9~9\) # (GND)))
-- \U0|Add9~11\ = CARRY((!\U0|Add9~9\) # (!\U0|Add8~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add8~20_combout\,
	datad => VCC,
	cin => \U0|Add9~9\,
	combout => \U0|Add9~10_combout\,
	cout => \U0|Add9~11\);

-- Location: LCCOMB_X39_Y10_N12
\U0|Add9~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~12_combout\ = (\U0|Add8~22_combout\ & (\U0|Add9~11\ $ (GND))) # (!\U0|Add8~22_combout\ & (!\U0|Add9~11\ & VCC))
-- \U0|Add9~13\ = CARRY((\U0|Add8~22_combout\ & !\U0|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add8~22_combout\,
	datad => VCC,
	cin => \U0|Add9~11\,
	combout => \U0|Add9~12_combout\,
	cout => \U0|Add9~13\);

-- Location: LCCOMB_X39_Y10_N14
\U0|Add9~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~14_combout\ = (\U0|Add8~24_combout\ & (!\U0|Add9~13\)) # (!\U0|Add8~24_combout\ & ((\U0|Add9~13\) # (GND)))
-- \U0|Add9~15\ = CARRY((!\U0|Add9~13\) # (!\U0|Add8~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add8~24_combout\,
	datad => VCC,
	cin => \U0|Add9~13\,
	combout => \U0|Add9~14_combout\,
	cout => \U0|Add9~15\);

-- Location: LCCOMB_X39_Y10_N16
\U0|Add9~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~16_combout\ = (\U0|Add8~26_combout\ & (\U0|Add9~15\ $ (GND))) # (!\U0|Add8~26_combout\ & (!\U0|Add9~15\ & VCC))
-- \U0|Add9~17\ = CARRY((\U0|Add8~26_combout\ & !\U0|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add8~26_combout\,
	datad => VCC,
	cin => \U0|Add9~15\,
	combout => \U0|Add9~16_combout\,
	cout => \U0|Add9~17\);

-- Location: LCCOMB_X39_Y10_N28
\U0|x1[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(13) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add9~16_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|x1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add9~16_combout\,
	datab => \U0|x1\(13),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(13));

-- Location: LCCOMB_X39_Y10_N18
\U0|Add9~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add9~18_combout\ = \U0|Add9~17\ $ (\U0|Add8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add8~26_combout\,
	cin => \U0|Add9~17\,
	combout => \U0|Add9~18_combout\);

-- Location: LCCOMB_X39_Y10_N30
\U0|x1[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(31) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add9~18_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x1\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(31),
	datac => \U0|Add9~18_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(31));

-- Location: LCCOMB_X39_Y10_N22
\U0|x1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(8) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add9~6_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(8),
	datac => \U0|y2[0]~17clkctrl_outclk\,
	datad => \U0|Add9~6_combout\,
	combout => \U0|x1\(8));

-- Location: LCCOMB_X40_Y10_N26
\U0|x1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(7) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add9~4_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|x1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add9~4_combout\,
	datac => \U0|x1\(7),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(7));

-- Location: LCCOMB_X39_Y10_N24
\U0|x1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(6) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add9~2_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x1\(6),
	datac => \U0|Add9~2_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(6));

-- Location: LCCOMB_X40_Y10_N8
\U0|x1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(5) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add9~0_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x1\(5),
	datac => \U0|Add9~0_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(5));

-- Location: LCCOMB_X38_Y10_N28
\U0|x1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(4) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add8~8_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x1\(4),
	datac => \U0|y2[0]~17clkctrl_outclk\,
	datad => \U0|Add8~8_combout\,
	combout => \U0|x1\(4));

-- Location: LCCOMB_X38_Y10_N30
\U0|x1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(3) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add8~6_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|x1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add8~6_combout\,
	datac => \U0|x1\(3),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(3));

-- Location: LCCOMB_X40_Y10_N22
\U0|x1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(2) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add8~4_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(2),
	datac => \U0|Add8~4_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(2));

-- Location: LCCOMB_X40_Y10_N0
\U0|x1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(1) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add8~2_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x1\(1),
	datac => \U0|Add8~2_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(1));

-- Location: LCCOMB_X39_Y11_N12
\U0|LessThan28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~2_cout\ = CARRY((\U0|x1\(0) & !\U0|U1|row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(0),
	datab => \U0|U1|row\(0),
	datad => VCC,
	cout => \U0|LessThan28~2_cout\);

-- Location: LCCOMB_X39_Y11_N14
\U0|LessThan28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~4_cout\ = CARRY((\U0|x1\(1) & (\U0|U1|row\(1) & !\U0|LessThan28~2_cout\)) # (!\U0|x1\(1) & ((\U0|U1|row\(1)) # (!\U0|LessThan28~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(1),
	datab => \U0|U1|row\(1),
	datad => VCC,
	cin => \U0|LessThan28~2_cout\,
	cout => \U0|LessThan28~4_cout\);

-- Location: LCCOMB_X39_Y11_N16
\U0|LessThan28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~6_cout\ = CARRY((\U0|U1|row\(2) & (\U0|x1\(2) & !\U0|LessThan28~4_cout\)) # (!\U0|U1|row\(2) & ((\U0|x1\(2)) # (!\U0|LessThan28~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|x1\(2),
	datad => VCC,
	cin => \U0|LessThan28~4_cout\,
	cout => \U0|LessThan28~6_cout\);

-- Location: LCCOMB_X39_Y11_N18
\U0|LessThan28~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~8_cout\ = CARRY((\U0|x1\(3) & (\U0|U1|row\(3) & !\U0|LessThan28~6_cout\)) # (!\U0|x1\(3) & ((\U0|U1|row\(3)) # (!\U0|LessThan28~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(3),
	datab => \U0|U1|row\(3),
	datad => VCC,
	cin => \U0|LessThan28~6_cout\,
	cout => \U0|LessThan28~8_cout\);

-- Location: LCCOMB_X39_Y11_N20
\U0|LessThan28~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~10_cout\ = CARRY((\U0|x1\(4) & ((!\U0|LessThan28~8_cout\) # (!\U0|U1|row\(4)))) # (!\U0|x1\(4) & (!\U0|U1|row\(4) & !\U0|LessThan28~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(4),
	datab => \U0|U1|row\(4),
	datad => VCC,
	cin => \U0|LessThan28~8_cout\,
	cout => \U0|LessThan28~10_cout\);

-- Location: LCCOMB_X39_Y11_N22
\U0|LessThan28~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~12_cout\ = CARRY((\U0|x1\(5) & (\U0|U1|row\(5) & !\U0|LessThan28~10_cout\)) # (!\U0|x1\(5) & ((\U0|U1|row\(5)) # (!\U0|LessThan28~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(5),
	datab => \U0|U1|row\(5),
	datad => VCC,
	cin => \U0|LessThan28~10_cout\,
	cout => \U0|LessThan28~12_cout\);

-- Location: LCCOMB_X39_Y11_N24
\U0|LessThan28~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~14_cout\ = CARRY((\U0|x1\(6) & ((!\U0|LessThan28~12_cout\) # (!\U0|U1|row\(6)))) # (!\U0|x1\(6) & (!\U0|U1|row\(6) & !\U0|LessThan28~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(6),
	datab => \U0|U1|row\(6),
	datad => VCC,
	cin => \U0|LessThan28~12_cout\,
	cout => \U0|LessThan28~14_cout\);

-- Location: LCCOMB_X39_Y11_N26
\U0|LessThan28~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~16_cout\ = CARRY((\U0|U1|row\(7) & ((!\U0|LessThan28~14_cout\) # (!\U0|x1\(7)))) # (!\U0|U1|row\(7) & (!\U0|x1\(7) & !\U0|LessThan28~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(7),
	datab => \U0|x1\(7),
	datad => VCC,
	cin => \U0|LessThan28~14_cout\,
	cout => \U0|LessThan28~16_cout\);

-- Location: LCCOMB_X39_Y11_N28
\U0|LessThan28~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~17_combout\ = (\U0|U1|row\(8) & (!\U0|LessThan28~16_cout\ & \U0|x1\(8))) # (!\U0|U1|row\(8) & ((\U0|x1\(8)) # (!\U0|LessThan28~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|row\(8),
	datad => \U0|x1\(8),
	cin => \U0|LessThan28~16_cout\,
	combout => \U0|LessThan28~17_combout\);

-- Location: LCCOMB_X40_Y10_N6
\U0|x1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(9) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add9~8_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(9),
	datac => \U0|Add9~8_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(9));

-- Location: LCCOMB_X39_Y10_N20
\U0|x1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(10) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add9~10_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|x1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add9~10_combout\,
	datac => \U0|y2[0]~17clkctrl_outclk\,
	datad => \U0|x1\(10),
	combout => \U0|x1\(10));

-- Location: LCCOMB_X39_Y10_N26
\U0|x1[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(11) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add9~12_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|x1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add9~12_combout\,
	datac => \U0|x1\(11),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(11));

-- Location: LCCOMB_X40_Y10_N20
\U0|x1[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x1\(12) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add9~14_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x1\(12),
	datac => \U0|Add9~14_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x1\(12));

-- Location: LCCOMB_X40_Y10_N16
\U0|LessThan28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan28~0_combout\ = (\U0|x1\(9)) # ((\U0|x1\(10)) # ((\U0|x1\(11)) # (\U0|x1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(9),
	datab => \U0|x1\(10),
	datac => \U0|x1\(11),
	datad => \U0|x1\(12),
	combout => \U0|LessThan28~0_combout\);

-- Location: LCCOMB_X40_Y10_N18
\U0|FSM~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~72_combout\ = (!\U0|x1\(31) & ((\U0|x1\(13)) # ((\U0|LessThan28~17_combout\) # (\U0|LessThan28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x1\(13),
	datab => \U0|x1\(31),
	datac => \U0|LessThan28~17_combout\,
	datad => \U0|LessThan28~0_combout\,
	combout => \U0|FSM~72_combout\);

-- Location: LCCOMB_X41_Y10_N2
\U0|Add12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~0_combout\ = (\U0|U1|column\(0) & (\U0|Add11~0_combout\ $ (VCC))) # (!\U0|U1|column\(0) & (\U0|Add11~0_combout\ & VCC))
-- \U0|Add12~1\ = CARRY((\U0|U1|column\(0) & \U0|Add11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|column\(0),
	datab => \U0|Add11~0_combout\,
	datad => VCC,
	combout => \U0|Add12~0_combout\,
	cout => \U0|Add12~1\);

-- Location: LCCOMB_X41_Y10_N4
\U0|Add12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~2_combout\ = (\U0|Add11~2_combout\ & (!\U0|Add12~1\)) # (!\U0|Add11~2_combout\ & ((\U0|Add12~1\) # (GND)))
-- \U0|Add12~3\ = CARRY((!\U0|Add12~1\) # (!\U0|Add11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~2_combout\,
	datad => VCC,
	cin => \U0|Add12~1\,
	combout => \U0|Add12~2_combout\,
	cout => \U0|Add12~3\);

-- Location: LCCOMB_X41_Y10_N6
\U0|Add12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~4_combout\ = (\U0|Add11~4_combout\ & ((GND) # (!\U0|Add12~3\))) # (!\U0|Add11~4_combout\ & (\U0|Add12~3\ $ (GND)))
-- \U0|Add12~5\ = CARRY((\U0|Add11~4_combout\) # (!\U0|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~4_combout\,
	datad => VCC,
	cin => \U0|Add12~3\,
	combout => \U0|Add12~4_combout\,
	cout => \U0|Add12~5\);

-- Location: LCCOMB_X41_Y10_N8
\U0|Add12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~6_combout\ = (\U0|Add11~6_combout\ & (\U0|Add12~5\ & VCC)) # (!\U0|Add11~6_combout\ & (!\U0|Add12~5\))
-- \U0|Add12~7\ = CARRY((!\U0|Add11~6_combout\ & !\U0|Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~6_combout\,
	datad => VCC,
	cin => \U0|Add12~5\,
	combout => \U0|Add12~6_combout\,
	cout => \U0|Add12~7\);

-- Location: LCCOMB_X41_Y10_N10
\U0|Add12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~8_combout\ = (\U0|Add11~8_combout\ & ((GND) # (!\U0|Add12~7\))) # (!\U0|Add11~8_combout\ & (\U0|Add12~7\ $ (GND)))
-- \U0|Add12~9\ = CARRY((\U0|Add11~8_combout\) # (!\U0|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~8_combout\,
	datad => VCC,
	cin => \U0|Add12~7\,
	combout => \U0|Add12~8_combout\,
	cout => \U0|Add12~9\);

-- Location: LCCOMB_X41_Y10_N12
\U0|Add12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~10_combout\ = (\U0|Add11~10_combout\ & (!\U0|Add12~9\)) # (!\U0|Add11~10_combout\ & ((\U0|Add12~9\) # (GND)))
-- \U0|Add12~11\ = CARRY((!\U0|Add12~9\) # (!\U0|Add11~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~10_combout\,
	datad => VCC,
	cin => \U0|Add12~9\,
	combout => \U0|Add12~10_combout\,
	cout => \U0|Add12~11\);

-- Location: LCCOMB_X41_Y10_N14
\U0|Add12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~12_combout\ = (\U0|Add11~12_combout\ & ((GND) # (!\U0|Add12~11\))) # (!\U0|Add11~12_combout\ & (\U0|Add12~11\ $ (GND)))
-- \U0|Add12~13\ = CARRY((\U0|Add11~12_combout\) # (!\U0|Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~12_combout\,
	datad => VCC,
	cin => \U0|Add12~11\,
	combout => \U0|Add12~12_combout\,
	cout => \U0|Add12~13\);

-- Location: LCCOMB_X41_Y10_N16
\U0|Add12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~14_combout\ = (\U0|Add11~14_combout\ & (!\U0|Add12~13\)) # (!\U0|Add11~14_combout\ & ((\U0|Add12~13\) # (GND)))
-- \U0|Add12~15\ = CARRY((!\U0|Add12~13\) # (!\U0|Add11~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~14_combout\,
	datad => VCC,
	cin => \U0|Add12~13\,
	combout => \U0|Add12~14_combout\,
	cout => \U0|Add12~15\);

-- Location: LCCOMB_X41_Y10_N18
\U0|Add12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~16_combout\ = (\U0|Add11~16_combout\ & (\U0|Add12~15\ $ (GND))) # (!\U0|Add11~16_combout\ & (!\U0|Add12~15\ & VCC))
-- \U0|Add12~17\ = CARRY((\U0|Add11~16_combout\ & !\U0|Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~16_combout\,
	datad => VCC,
	cin => \U0|Add12~15\,
	combout => \U0|Add12~16_combout\,
	cout => \U0|Add12~17\);

-- Location: LCCOMB_X41_Y10_N20
\U0|Add12~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~18_combout\ = (\U0|Add11~18_combout\ & (!\U0|Add12~17\)) # (!\U0|Add11~18_combout\ & ((\U0|Add12~17\) # (GND)))
-- \U0|Add12~19\ = CARRY((!\U0|Add12~17\) # (!\U0|Add11~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~18_combout\,
	datad => VCC,
	cin => \U0|Add12~17\,
	combout => \U0|Add12~18_combout\,
	cout => \U0|Add12~19\);

-- Location: LCCOMB_X41_Y10_N22
\U0|Add12~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~20_combout\ = (\U0|Add11~20_combout\ & (\U0|Add12~19\ $ (GND))) # (!\U0|Add11~20_combout\ & (!\U0|Add12~19\ & VCC))
-- \U0|Add12~21\ = CARRY((\U0|Add11~20_combout\ & !\U0|Add12~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add11~20_combout\,
	datad => VCC,
	cin => \U0|Add12~19\,
	combout => \U0|Add12~20_combout\,
	cout => \U0|Add12~21\);

-- Location: LCCOMB_X41_Y10_N24
\U0|Add12~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~22_combout\ = (\U0|Add11~22_combout\ & (!\U0|Add12~21\)) # (!\U0|Add11~22_combout\ & ((\U0|Add12~21\) # (GND)))
-- \U0|Add12~23\ = CARRY((!\U0|Add12~21\) # (!\U0|Add11~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~22_combout\,
	datad => VCC,
	cin => \U0|Add12~21\,
	combout => \U0|Add12~22_combout\,
	cout => \U0|Add12~23\);

-- Location: LCCOMB_X41_Y10_N26
\U0|Add12~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add12~24_combout\ = \U0|Add11~22_combout\ $ (!\U0|Add12~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add11~22_combout\,
	cin => \U0|Add12~23\,
	combout => \U0|Add12~24_combout\);

-- Location: LCCOMB_X42_Y10_N8
\U0|Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~0_combout\ = (\U0|fig_yShift\(0) & (\U0|Add12~8_combout\ $ (VCC))) # (!\U0|fig_yShift\(0) & (\U0|Add12~8_combout\ & VCC))
-- \U0|Add13~1\ = CARRY((\U0|fig_yShift\(0) & \U0|Add12~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(0),
	datab => \U0|Add12~8_combout\,
	datad => VCC,
	combout => \U0|Add13~0_combout\,
	cout => \U0|Add13~1\);

-- Location: LCCOMB_X42_Y10_N10
\U0|Add13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~2_combout\ = (\U0|fig_yShift\(1) & ((\U0|Add12~10_combout\ & (\U0|Add13~1\ & VCC)) # (!\U0|Add12~10_combout\ & (!\U0|Add13~1\)))) # (!\U0|fig_yShift\(1) & ((\U0|Add12~10_combout\ & (!\U0|Add13~1\)) # (!\U0|Add12~10_combout\ & ((\U0|Add13~1\) # 
-- (GND)))))
-- \U0|Add13~3\ = CARRY((\U0|fig_yShift\(1) & (!\U0|Add12~10_combout\ & !\U0|Add13~1\)) # (!\U0|fig_yShift\(1) & ((!\U0|Add13~1\) # (!\U0|Add12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(1),
	datab => \U0|Add12~10_combout\,
	datad => VCC,
	cin => \U0|Add13~1\,
	combout => \U0|Add13~2_combout\,
	cout => \U0|Add13~3\);

-- Location: LCCOMB_X42_Y10_N12
\U0|Add13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~4_combout\ = ((\U0|fig_yShift\(0) $ (\U0|Add12~12_combout\ $ (!\U0|Add13~3\)))) # (GND)
-- \U0|Add13~5\ = CARRY((\U0|fig_yShift\(0) & ((\U0|Add12~12_combout\) # (!\U0|Add13~3\))) # (!\U0|fig_yShift\(0) & (\U0|Add12~12_combout\ & !\U0|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(0),
	datab => \U0|Add12~12_combout\,
	datad => VCC,
	cin => \U0|Add13~3\,
	combout => \U0|Add13~4_combout\,
	cout => \U0|Add13~5\);

-- Location: LCCOMB_X42_Y10_N14
\U0|Add13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~6_combout\ = (\U0|fig_yShift\(1) & ((\U0|Add12~14_combout\ & (\U0|Add13~5\ & VCC)) # (!\U0|Add12~14_combout\ & (!\U0|Add13~5\)))) # (!\U0|fig_yShift\(1) & ((\U0|Add12~14_combout\ & (!\U0|Add13~5\)) # (!\U0|Add12~14_combout\ & ((\U0|Add13~5\) # 
-- (GND)))))
-- \U0|Add13~7\ = CARRY((\U0|fig_yShift\(1) & (!\U0|Add12~14_combout\ & !\U0|Add13~5\)) # (!\U0|fig_yShift\(1) & ((!\U0|Add13~5\) # (!\U0|Add12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(1),
	datab => \U0|Add12~14_combout\,
	datad => VCC,
	cin => \U0|Add13~5\,
	combout => \U0|Add13~6_combout\,
	cout => \U0|Add13~7\);

-- Location: LCCOMB_X42_Y10_N16
\U0|Add13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~8_combout\ = (\U0|Add12~16_combout\ & (\U0|Add13~7\ $ (GND))) # (!\U0|Add12~16_combout\ & (!\U0|Add13~7\ & VCC))
-- \U0|Add13~9\ = CARRY((\U0|Add12~16_combout\ & !\U0|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add12~16_combout\,
	datad => VCC,
	cin => \U0|Add13~7\,
	combout => \U0|Add13~8_combout\,
	cout => \U0|Add13~9\);

-- Location: LCCOMB_X42_Y10_N18
\U0|Add13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~10_combout\ = (\U0|Add12~18_combout\ & (!\U0|Add13~9\)) # (!\U0|Add12~18_combout\ & ((\U0|Add13~9\) # (GND)))
-- \U0|Add13~11\ = CARRY((!\U0|Add13~9\) # (!\U0|Add12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add12~18_combout\,
	datad => VCC,
	cin => \U0|Add13~9\,
	combout => \U0|Add13~10_combout\,
	cout => \U0|Add13~11\);

-- Location: LCCOMB_X42_Y10_N20
\U0|Add13~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~12_combout\ = (\U0|Add12~20_combout\ & (\U0|Add13~11\ $ (GND))) # (!\U0|Add12~20_combout\ & (!\U0|Add13~11\ & VCC))
-- \U0|Add13~13\ = CARRY((\U0|Add12~20_combout\ & !\U0|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add12~20_combout\,
	datad => VCC,
	cin => \U0|Add13~11\,
	combout => \U0|Add13~12_combout\,
	cout => \U0|Add13~13\);

-- Location: LCCOMB_X42_Y10_N22
\U0|Add13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~14_combout\ = (\U0|Add12~22_combout\ & (!\U0|Add13~13\)) # (!\U0|Add12~22_combout\ & ((\U0|Add13~13\) # (GND)))
-- \U0|Add13~15\ = CARRY((!\U0|Add13~13\) # (!\U0|Add12~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add12~22_combout\,
	datad => VCC,
	cin => \U0|Add13~13\,
	combout => \U0|Add13~14_combout\,
	cout => \U0|Add13~15\);

-- Location: LCCOMB_X42_Y10_N24
\U0|Add13~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~16_combout\ = (\U0|Add12~24_combout\ & (\U0|Add13~15\ $ (GND))) # (!\U0|Add12~24_combout\ & (!\U0|Add13~15\ & VCC))
-- \U0|Add13~17\ = CARRY((\U0|Add12~24_combout\ & !\U0|Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add12~24_combout\,
	datad => VCC,
	cin => \U0|Add13~15\,
	combout => \U0|Add13~16_combout\,
	cout => \U0|Add13~17\);

-- Location: LCCOMB_X42_Y10_N2
\U0|x2[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(13) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add13~16_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x2\(13),
	datac => \U0|Add13~16_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(13));

-- Location: LCCOMB_X42_Y10_N6
\U0|x2[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(11) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add13~12_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(11),
	datac => \U0|Add13~12_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(11));

-- Location: LCCOMB_X42_Y10_N28
\U0|x2[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(10) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add13~10_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x2\(10),
	datac => \U0|Add13~10_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(10));

-- Location: LCCOMB_X42_Y10_N0
\U0|x2[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(12) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add13~14_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x2\(12),
	datac => \U0|Add13~14_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(12));

-- Location: LCCOMB_X43_Y10_N22
\U0|x2[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(9) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add13~8_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(9),
	datac => \U0|Add13~8_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(9));

-- Location: LCCOMB_X40_Y10_N14
\U0|FSM~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~74_combout\ = (!\U0|x2\(11) & (!\U0|x2\(10) & (!\U0|x2\(12) & !\U0|x2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(11),
	datab => \U0|x2\(10),
	datac => \U0|x2\(12),
	datad => \U0|x2\(9),
	combout => \U0|FSM~74_combout\);

-- Location: LCCOMB_X42_Y10_N30
\U0|x2[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(8) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add13~6_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(8),
	datac => \U0|y2[0]~17clkctrl_outclk\,
	datad => \U0|Add13~6_combout\,
	combout => \U0|x2\(8));

-- Location: LCCOMB_X43_Y10_N4
\U0|x2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(7) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add13~4_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x2\(7),
	datac => \U0|Add13~4_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(7));

-- Location: LCCOMB_X43_Y10_N26
\U0|x2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(6) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add13~2_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(6),
	datac => \U0|Add13~2_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(6));

-- Location: LCCOMB_X43_Y10_N8
\U0|x2[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(5) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add13~0_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|x2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add13~0_combout\,
	datac => \U0|x2\(5),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(5));

-- Location: LCCOMB_X41_Y10_N28
\U0|x2[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(4) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add12~6_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|x2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add12~6_combout\,
	datab => \U0|x2\(4),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(4));

-- Location: LCCOMB_X41_Y10_N0
\U0|x2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(3) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add12~4_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x2\(3),
	datac => \U0|Add12~4_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(3));

-- Location: LCCOMB_X41_Y10_N30
\U0|x2[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(2) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add12~2_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(2),
	datac => \U0|Add12~2_combout\,
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(2));

-- Location: LCCOMB_X40_Y10_N30
\U0|x2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(1) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|Add12~0_combout\)) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|x2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add12~0_combout\,
	datac => \U0|x2\(1),
	datad => \U0|y2[0]~17clkctrl_outclk\,
	combout => \U0|x2\(1));

-- Location: LCCOMB_X42_Y9_N4
\U0|LessThan29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan29~1_cout\ = CARRY((\U0|U1|row\(0) & !\U0|x1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(0),
	datab => \U0|x1\(0),
	datad => VCC,
	cout => \U0|LessThan29~1_cout\);

-- Location: LCCOMB_X42_Y9_N6
\U0|LessThan29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan29~3_cout\ = CARRY((\U0|x2\(1) & ((!\U0|LessThan29~1_cout\) # (!\U0|U1|row\(1)))) # (!\U0|x2\(1) & (!\U0|U1|row\(1) & !\U0|LessThan29~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(1),
	datab => \U0|U1|row\(1),
	datad => VCC,
	cin => \U0|LessThan29~1_cout\,
	cout => \U0|LessThan29~3_cout\);

-- Location: LCCOMB_X42_Y9_N8
\U0|LessThan29~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan29~5_cout\ = CARRY((\U0|U1|row\(2) & ((!\U0|LessThan29~3_cout\) # (!\U0|x2\(2)))) # (!\U0|U1|row\(2) & (!\U0|x2\(2) & !\U0|LessThan29~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|x2\(2),
	datad => VCC,
	cin => \U0|LessThan29~3_cout\,
	cout => \U0|LessThan29~5_cout\);

-- Location: LCCOMB_X42_Y9_N10
\U0|LessThan29~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan29~7_cout\ = CARRY((\U0|x2\(3) & ((!\U0|LessThan29~5_cout\) # (!\U0|U1|row\(3)))) # (!\U0|x2\(3) & (!\U0|U1|row\(3) & !\U0|LessThan29~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(3),
	datab => \U0|U1|row\(3),
	datad => VCC,
	cin => \U0|LessThan29~5_cout\,
	cout => \U0|LessThan29~7_cout\);

-- Location: LCCOMB_X42_Y9_N12
\U0|LessThan29~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan29~9_cout\ = CARRY((\U0|U1|row\(4) & ((!\U0|LessThan29~7_cout\) # (!\U0|x2\(4)))) # (!\U0|U1|row\(4) & (!\U0|x2\(4) & !\U0|LessThan29~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(4),
	datab => \U0|x2\(4),
	datad => VCC,
	cin => \U0|LessThan29~7_cout\,
	cout => \U0|LessThan29~9_cout\);

-- Location: LCCOMB_X42_Y9_N14
\U0|LessThan29~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan29~11_cout\ = CARRY((\U0|U1|row\(5) & (\U0|x2\(5) & !\U0|LessThan29~9_cout\)) # (!\U0|U1|row\(5) & ((\U0|x2\(5)) # (!\U0|LessThan29~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(5),
	datab => \U0|x2\(5),
	datad => VCC,
	cin => \U0|LessThan29~9_cout\,
	cout => \U0|LessThan29~11_cout\);

-- Location: LCCOMB_X42_Y9_N16
\U0|LessThan29~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan29~13_cout\ = CARRY((\U0|x2\(6) & (\U0|U1|row\(6) & !\U0|LessThan29~11_cout\)) # (!\U0|x2\(6) & ((\U0|U1|row\(6)) # (!\U0|LessThan29~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(6),
	datab => \U0|U1|row\(6),
	datad => VCC,
	cin => \U0|LessThan29~11_cout\,
	cout => \U0|LessThan29~13_cout\);

-- Location: LCCOMB_X42_Y9_N18
\U0|LessThan29~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan29~15_cout\ = CARRY((\U0|U1|row\(7) & (\U0|x2\(7) & !\U0|LessThan29~13_cout\)) # (!\U0|U1|row\(7) & ((\U0|x2\(7)) # (!\U0|LessThan29~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(7),
	datab => \U0|x2\(7),
	datad => VCC,
	cin => \U0|LessThan29~13_cout\,
	cout => \U0|LessThan29~15_cout\);

-- Location: LCCOMB_X42_Y9_N20
\U0|LessThan29~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|LessThan29~16_combout\ = (\U0|x2\(8) & (!\U0|LessThan29~15_cout\ & \U0|U1|row\(8))) # (!\U0|x2\(8) & ((\U0|U1|row\(8)) # (!\U0|LessThan29~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|x2\(8),
	datad => \U0|U1|row\(8),
	cin => \U0|LessThan29~15_cout\,
	combout => \U0|LessThan29~16_combout\);

-- Location: LCCOMB_X40_Y10_N24
\U0|FSM~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|FSM~75_combout\ = (\U0|FSM~72_combout\ & (!\U0|x2\(13) & (\U0|FSM~74_combout\ & \U0|LessThan29~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~72_combout\,
	datab => \U0|x2\(13),
	datac => \U0|FSM~74_combout\,
	datad => \U0|LessThan29~16_combout\,
	combout => \U0|FSM~75_combout\);

-- Location: LCCOMB_X36_Y7_N28
\U0|Add18~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add18~18_combout\ = \U0|Add17~26_combout\ $ (\U0|Add18~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add17~26_combout\,
	cin => \U0|Add18~17\,
	combout => \U0|Add18~18_combout\);

-- Location: LCCOMB_X36_Y7_N4
\U0|y2[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|y2\(31) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add18~18_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|y2\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|y2\(31),
	datac => \U0|y2[0]~17clkctrl_outclk\,
	datad => \U0|Add18~18_combout\,
	combout => \U0|y2\(31));

-- Location: LCCOMB_X42_Y10_N26
\U0|Add13~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add13~18_combout\ = \U0|Add13~17\ $ (\U0|Add12~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|Add12~24_combout\,
	cin => \U0|Add13~17\,
	combout => \U0|Add13~18_combout\);

-- Location: LCCOMB_X42_Y10_N4
\U0|x2[31]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|x2\(31) = (GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & ((\U0|Add13~18_combout\))) # (!GLOBAL(\U0|y2[0]~17clkctrl_outclk\) & (\U0|x2\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|x2\(31),
	datac => \U0|y2[0]~17clkctrl_outclk\,
	datad => \U0|Add13~18_combout\,
	combout => \U0|x2\(31));

-- Location: LCCOMB_X40_Y10_N4
\U0|VGA_G[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~20_combout\ = (\U0|FSM~72_combout\ & (!\U0|x2\(31) & ((!\U0|FSM~73_combout\) # (!\U0|y2\(31))))) # (!\U0|FSM~72_combout\ & (((!\U0|FSM~73_combout\)) # (!\U0|y2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~72_combout\,
	datab => \U0|y2\(31),
	datac => \U0|x2\(31),
	datad => \U0|FSM~73_combout\,
	combout => \U0|VGA_G[0]~20_combout\);

-- Location: LCCOMB_X42_Y9_N24
\U0|VGA_G[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~16_combout\ = (\U0|U1|row\(5)) # ((\U0|U1|row\(4)) # ((\U0|U1|row\(2) & \U0|U1|row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|U1|row\(3),
	datac => \U0|U1|row\(5),
	datad => \U0|U1|row\(4),
	combout => \U0|VGA_G[0]~16_combout\);

-- Location: LCCOMB_X40_Y9_N8
\U0|VGA_G[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~17_combout\ = (\U0|VGA_G[0]~16_combout\ & (((\U0|U1|row\(6) & \U0|U1|row\(8))) # (!\U0|fig_yShift\(1)))) # (!\U0|VGA_G[0]~16_combout\ & (\U0|U1|row\(6) & (!\U0|fig_yShift\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_G[0]~16_combout\,
	datab => \U0|U1|row\(6),
	datac => \U0|fig_yShift\(1),
	datad => \U0|U1|row\(8),
	combout => \U0|VGA_G[0]~17_combout\);

-- Location: LCCOMB_X42_Y9_N26
\U0|VGA_G[0]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~44_combout\ = (\U0|U1|row\(4) & (\U0|U1|row\(1) & (\U0|U1|row\(3) & \U0|U1|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(4),
	datab => \U0|U1|row\(1),
	datac => \U0|U1|row\(3),
	datad => \U0|U1|row\(0),
	combout => \U0|VGA_G[0]~44_combout\);

-- Location: LCCOMB_X40_Y9_N28
\U0|VGA_G[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~45_combout\ = (\U0|U1|row\(5) & (((\U0|U1|row\(2) & \U0|VGA_G[0]~44_combout\)) # (!\U0|fig_yShift\(0)))) # (!\U0|U1|row\(5) & (\U0|U1|row\(2) & (!\U0|fig_yShift\(0) & \U0|VGA_G[0]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|U1|row\(5),
	datac => \U0|fig_yShift\(0),
	datad => \U0|VGA_G[0]~44_combout\,
	combout => \U0|VGA_G[0]~45_combout\);

-- Location: LCCOMB_X40_Y9_N16
\U0|VGA_G[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~14_combout\ = (\U0|U1|row\(8) & (\U0|U1|row\(6) & \U0|VGA_G[0]~45_combout\)) # (!\U0|U1|row\(8) & ((\U0|U1|row\(6)) # (\U0|VGA_G[0]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(8),
	datab => \U0|U1|row\(6),
	datad => \U0|VGA_G[0]~45_combout\,
	combout => \U0|VGA_G[0]~14_combout\);

-- Location: LCCOMB_X40_Y9_N14
\U0|VGA_G[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~15_combout\ = (\U0|fig_yShift\(0) & (\U0|U1|row\(7) & \U0|VGA_G[0]~14_combout\)) # (!\U0|fig_yShift\(0) & ((\U0|U1|row\(7)) # (\U0|VGA_G[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(0),
	datac => \U0|U1|row\(7),
	datad => \U0|VGA_G[0]~14_combout\,
	combout => \U0|VGA_G[0]~15_combout\);

-- Location: LCCOMB_X42_Y9_N2
\U0|VGA_G[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~18_combout\ = (\U0|U1|row\(5) & ((\U0|U1|row\(4)) # ((\U0|U1|row\(2) & \U0|U1|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(2),
	datab => \U0|U1|row\(3),
	datac => \U0|U1|row\(5),
	datad => \U0|U1|row\(4),
	combout => \U0|VGA_G[0]~18_combout\);

-- Location: LCCOMB_X40_Y9_N22
\U0|VGA_G[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~19_combout\ = (\U0|U1|row\(7)) # (((\U0|VGA_G[0]~18_combout\) # (\U0|U1|row\(6))) # (!\U0|fig_yShift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|row\(7),
	datab => \U0|fig_yShift\(0),
	datac => \U0|VGA_G[0]~18_combout\,
	datad => \U0|U1|row\(6),
	combout => \U0|VGA_G[0]~19_combout\);

-- Location: LCCOMB_X40_Y9_N20
\U0|VGA_G[0]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~42_combout\ = (\U0|fig_yShift\(1) & (((!\U0|U1|row\(8))) # (!\U0|VGA_G[0]~15_combout\))) # (!\U0|fig_yShift\(1) & ((\U0|U1|row\(8) & ((\U0|VGA_G[0]~19_combout\))) # (!\U0|U1|row\(8) & (!\U0|VGA_G[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|fig_yShift\(1),
	datab => \U0|VGA_G[0]~15_combout\,
	datac => \U0|VGA_G[0]~19_combout\,
	datad => \U0|U1|row\(8),
	combout => \U0|VGA_G[0]~42_combout\);

-- Location: LCCOMB_X40_Y9_N18
\U0|VGA_G[0]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~43_combout\ = (\U0|VGA_G[0]~42_combout\) # ((\U0|VGA_G[0]~17_combout\ & (!\U0|fig_yShift\(0) & \U0|U1|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_G[0]~17_combout\,
	datab => \U0|VGA_G[0]~42_combout\,
	datac => \U0|fig_yShift\(0),
	datad => \U0|U1|row\(7),
	combout => \U0|VGA_G[0]~43_combout\);

-- Location: LCCOMB_X40_Y10_N28
\U0|VGA_G[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~21_combout\ = (\U0|VGA_G[0]~43_combout\) # ((!\U0|FSM~77_combout\ & (!\U0|FSM~75_combout\ & \U0|VGA_G[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~77_combout\,
	datab => \U0|FSM~75_combout\,
	datac => \U0|VGA_G[0]~20_combout\,
	datad => \U0|VGA_G[0]~43_combout\,
	combout => \U0|VGA_G[0]~21_combout\);

-- Location: LCCOMB_X38_Y7_N24
\U0|VGA_G~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~24_combout\ = (\U0|FSM~43_combout\ & (((\U1|player\(4))))) # (!\U0|FSM~43_combout\ & (\U0|FSM~27_combout\ & ((\U1|player\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~27_combout\,
	datab => \U1|player\(4),
	datac => \U1|player\(5),
	datad => \U0|FSM~43_combout\,
	combout => \U0|VGA_G~24_combout\);

-- Location: LCCOMB_X41_Y7_N22
\U0|VGA_G~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~22_combout\ = (\U0|FSM~29_combout\ & (((\U1|player\(8))))) # (!\U0|FSM~29_combout\ & ((\U0|FSM~79_combout\ & (\U1|player\(7))) # (!\U0|FSM~79_combout\ & ((\U1|player\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(7),
	datab => \U0|FSM~29_combout\,
	datac => \U0|FSM~79_combout\,
	datad => \U1|player\(8),
	combout => \U0|VGA_G~22_combout\);

-- Location: LCCOMB_X38_Y7_N2
\U0|VGA_G~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~23_combout\ = (\U0|VGA_R[0]~23_combout\ & ((\U0|FSM~35_combout\ & ((\U0|VGA_G~22_combout\))) # (!\U0|FSM~35_combout\ & (\U1|player\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(6),
	datab => \U0|VGA_R[0]~23_combout\,
	datac => \U0|FSM~35_combout\,
	datad => \U0|VGA_G~22_combout\,
	combout => \U0|VGA_G~23_combout\);

-- Location: LCCOMB_X38_Y7_N14
\U0|VGA_G~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~25_combout\ = (\U0|FSM~34_combout\ & ((\U0|VGA_G~24_combout\) # ((\U0|VGA_G~23_combout\)))) # (!\U0|FSM~34_combout\ & (((\U1|player\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~34_combout\,
	datab => \U0|VGA_G~24_combout\,
	datac => \U1|player\(3),
	datad => \U0|VGA_G~23_combout\,
	combout => \U0|VGA_G~25_combout\);

-- Location: LCCOMB_X40_Y8_N2
\U0|VGA_G~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~26_combout\ = (\U1|player\(1) & ((\U0|FSM~41_combout\) # ((\U0|VGA_G~25_combout\ & \U0|fig_yShift[0]~2_combout\)))) # (!\U1|player\(1) & (\U0|VGA_G~25_combout\ & (\U0|fig_yShift[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(1),
	datab => \U0|VGA_G~25_combout\,
	datac => \U0|fig_yShift[0]~2_combout\,
	datad => \U0|FSM~41_combout\,
	combout => \U0|VGA_G~26_combout\);

-- Location: LCCOMB_X40_Y8_N20
\U0|VGA_G~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~38_combout\ = (\U0|FSM~26_combout\ & (!\U0|FSM~79_combout\ & (!\U0|FSM~38_combout\ & \U1|player\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|FSM~26_combout\,
	datab => \U0|FSM~79_combout\,
	datac => \U0|FSM~38_combout\,
	datad => \U1|player\(2),
	combout => \U0|VGA_G~38_combout\);

-- Location: LCCOMB_X40_Y8_N22
\U0|VGA_G~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G~27_combout\ = (\U0|FSM~40_combout\ & (\U1|player\(0))) # (!\U0|FSM~40_combout\ & (((\U0|VGA_G~26_combout\) # (\U0|VGA_G~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|player\(0),
	datab => \U0|VGA_G~26_combout\,
	datac => \U0|FSM~40_combout\,
	datad => \U0|VGA_G~38_combout\,
	combout => \U0|VGA_G~27_combout\);

-- Location: LCCOMB_X40_Y8_N0
\U0|VGA_G[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~28_combout\ = (\U0|VGA_G~27_combout\ & (\U0|VGA_G[0]~21_combout\)) # (!\U0|VGA_G~27_combout\ & ((\U0|FSM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_G[0]~21_combout\,
	datac => \U0|VGA_G~27_combout\,
	datad => \U0|FSM~19_combout\,
	combout => \U0|VGA_G[0]~28_combout\);

-- Location: LCCOMB_X40_Y8_N24
\U0|VGA_G[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|VGA_G[0]~37_combout\ = (\U0|U1|disp_ena~q\ & ((\U0|VGA_G[0]~36_combout\) # ((\U0|VGA_G[0]~28_combout\) # (!\U0|FSM~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|VGA_G[0]~36_combout\,
	datab => \U0|FSM~71_combout\,
	datac => \U0|U1|disp_ena~q\,
	datad => \U0|VGA_G[0]~28_combout\,
	combout => \U0|VGA_G[0]~37_combout\);

-- Location: LCCOMB_X38_Y14_N22
\U0|U1|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|process_0~2_combout\ = ((\U0|U1|Add0~8_combout\ & (\U0|U1|Add0~12_combout\ & \U0|U1|Add0~10_combout\)) # (!\U0|U1|Add0~8_combout\ & (!\U0|U1|Add0~12_combout\ & !\U0|U1|Add0~10_combout\))) # (!\U0|U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add0~8_combout\,
	datab => \U0|U1|Add0~12_combout\,
	datac => \U0|U1|Add0~10_combout\,
	datad => \U0|U1|LessThan0~2_combout\,
	combout => \U0|U1|process_0~2_combout\);

-- Location: LCCOMB_X38_Y14_N4
\U0|U1|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|process_0~3_combout\ = (\U0|U1|h_count~2_combout\) # (((\U0|U1|process_0~2_combout\) # (!\U0|U1|h_count~3_combout\)) # (!\U0|U1|h_count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|h_count~2_combout\,
	datab => \U0|U1|h_count~1_combout\,
	datac => \U0|U1|process_0~2_combout\,
	datad => \U0|U1|h_count~3_combout\,
	combout => \U0|U1|process_0~3_combout\);

-- Location: FF_X38_Y14_N5
\U0|U1|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|h_sync~q\);

-- Location: LCCOMB_X37_Y9_N28
\U0|U1|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|process_0~4_combout\ = (\U0|U1|Add1~27_combout\) # ((\U0|U1|Add1~21_combout\) # ((\U0|U1|Add1~28_combout\) # (!\U0|U1|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~27_combout\,
	datab => \U0|U1|Add1~21_combout\,
	datac => \U0|U1|Add1~26_combout\,
	datad => \U0|U1|Add1~28_combout\,
	combout => \U0|U1|process_0~4_combout\);

-- Location: LCCOMB_X37_Y9_N16
\U0|U1|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|process_0~5_combout\ = ((\U0|U1|process_0~4_combout\) # (!\U0|U1|process_0~0_combout\)) # (!\U0|U1|Add1~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Add1~29_combout\,
	datab => \U0|U1|process_0~4_combout\,
	datad => \U0|U1|process_0~0_combout\,
	combout => \U0|U1|process_0~5_combout\);

-- Location: FF_X37_Y9_N17
\U0|U1|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U0|U1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|v_sync~q\);

-- Location: LCCOMB_X50_Y9_N14
\U1|U0|U0|u0|spi_csn_next~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|spi_csn_next~2_combout\ = (!\U1|U0|U0|u0|state.IDLE~q\ & (((\U1|U0|U0|current_instruction.opcode\(2)) # (\U1|U0|U0|current_instruction.opcode\(1))) # (!\U1|U0|U0|u0|always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|U0|u0|always2~0_combout\,
	datab => \U1|U0|U0|current_instruction.opcode\(2),
	datac => \U1|U0|U0|current_instruction.opcode\(1),
	datad => \U1|U0|U0|u0|state.IDLE~q\,
	combout => \U1|U0|U0|u0|spi_csn_next~2_combout\);

-- Location: LCCOMB_X50_Y9_N16
\U1|U0|U0|u0|spi_csn~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|U0|u0|spi_csn~feeder_combout\ = \U1|U0|U0|u0|spi_csn_next~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U0|U0|u0|spi_csn_next~2_combout\,
	combout => \U1|U0|U0|u0|spi_csn~feeder_combout\);

-- Location: FF_X50_Y9_N17
\U1|U0|U0|u0|spi_csn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_f~inputclkctrl_outclk\,
	d => \U1|U0|U0|u0|spi_csn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U0|U0|u0|spi_csn~q\);

-- Location: IOIBUF_X78_Y25_N15
\BUT2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUT2,
	o => \BUT2~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\GSENSOR_SDI_f~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GSENSOR_SDI_f,
	o => \GSENSOR_SDI_f~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;

