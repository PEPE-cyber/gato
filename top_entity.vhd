library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;

entity top_entity is
	port ( 
	clk_f : IN STD_LOGIC;
	VGA_R_f                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');  -- red magnitude output to DAC
   VGA_G_f                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');  -- green magnitude output to DAC
	VGA_B_f                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');   -- blue magnitude output to DAC
	VGA_HS_f		         :	OUT	 STD_LOGIC;	-- horizontal sync pulse
   VGA_VS_f		         :	OUT	 STD_LOGIC;	-- vertical sync pulse 
	
	GSENSOR_CS_N_f          : OUT   STD_LOGIC;
   GSENSOR_SCLK_f          : OUT   STD_LOGIC;
   GSENSOR_SDI_f           : INOUT STD_LOGIC;
   GSENSOR_SDO_f           : INOUT STD_LOGIC;
	BUT1						: IN STD_LOGIC;
	BUT2						: IN STD_LOGIC
	);
end top_entity;

ARCHITECTURE behavior OF top_entity IS
    -- Component declarations
	COMPONENT gato IS
		port ( 
		clk : IN STD_LOGIC;
		VGA_R                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');  -- red magnitude output to DAC
		VGA_G                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');  -- green magnitude output to DAC
		VGA_B                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');   -- blue magnitude output to DAC
		VGA_HS		         :	OUT	 STD_LOGIC;	-- horizontal sync pulse
		VGA_VS		         :	OUT	 STD_LOGIC;	-- vertical sync pulse 
		
		select_xShift : IN integer:=0;
		select_yShift : IN integer:=0;
		used: IN STD_LOGIC_VECTOR(8 downto 0) := "000000000";
		player: IN STD_LOGIC_VECTOR(8 downto 0) := "000000000" --0 = circle,  1 = cross
		);
	end COMPONENT;
	
	COMPONENT logic is
		port ( 
		clk1 : IN STD_LOGIC;
		confirm : IN STD_LOGIC;
		
		-- Accelerometer I/O
		GSENSOR_CS_N          : OUT   STD_LOGIC;
		GSENSOR_SCLK          : OUT   STD_LOGIC;
		GSENSOR_SDI           : INOUT STD_LOGIC;
		GSENSOR_SDO           : INOUT STD_LOGIC;
	  -- Direction of tilt
	  -- 01 : left,    10 : right
	  -- 01 : forward, 01 : backward
		
		select_xShift : OUT INTEGER;
		select_yShift : OUT INTEGER;
		
		used : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		player : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
		);
	end COMPONENT;
	
	signal s_select_xShift, s_select_yShift : integer :=0;
	signal s_used : STD_LOGIC_VECTOR(8 downto 0) := "000000000";
	signal s_player: STD_LOGIC_VECTOR(8 downto 0) := "000000000";
BEGIN
	U0 : GATO PORT MAP( clk => clk_f, VGA_R => VGA_R_f, VGA_G => VGA_G_f, VGA_B => VGA_B_f, VGA_HS => VGA_HS_f, VGA_VS => VGA_VS_f, select_xShift => s_select_xShift, select_yShift => s_select_yShift, used => s_used, player => s_player);
	U1 : LOGIC PORT MAP( clk1 => clk_f, confirm => BUT1, GSENSOR_CS_N => GSENSOR_CS_N_f, GSENSOR_SCLK  => GSENSOR_SCLK_f, GSENSOR_SDI => GSENSOR_SDI_f, GSENSOR_SDO => GSENSOR_SDO_f, select_xShift => s_select_xShift, select_yShift => s_select_yShift, used => s_used, player => s_player);
END ARCHITECTURE;