library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;

entity sq is
	port ( 
	VGA_R                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');  -- red magnitude output to DAC
   VGA_G                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');  -- green magnitude output to DAC
	VGA_B                 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (others => '0');   -- blue magnitude output to DAC
	column		:	in	INTEGER range 0 to 639;		--horizontal pixel coordinate
	row			:	in	INTEGER range 0 to 479;
	sq_num 		: 	in	INTEGER range 0 to 8;
	used			: 	in STD_LOGIC;
	player		: 	in STD_LOGIC;	
	clk			: 	in STD_LOGIc
	);
end sq;

architecture RTL of sq is
	signal fig_yShift : integer:= 0;
	signal fig_xShift : integer:= 0;
	
	signal x1: integer := 0;
	signal x2: integer := 0;
	signal y1: integer := 0;
	signal y2: integer := 0;
	
	signal f2x1: integer := 0;
	signal f2x2: integer := 0;
	signal f2y1: integer := 0;
	signal f2y2: integer := 0;	
	begin
		process(used, player, clk)
			begin
				if used = '1'then
					case sq_num is
						when 1 =>
							fig_xShift <= 1;
							fig_yShift <= 0;
						when 2 =>
							fig_xShift <= 2;
							fig_yShift <= 0;
						when 3 =>
							fig_xShift <= 0;
							fig_yShift <= 1;
						when 4 =>
							fig_xShift <= 1;
							fig_yShift <= 1;
						when 5 =>
							fig_xShift <= 2;
							fig_yShift <= 1;
						when 6 =>
							fig_xShift <= 0;
							fig_yShift <= 2;
						when 7 =>
							fig_xShift <= 1;
							fig_yShift <= 2;
						when 8 =>
							fig_xShift <= 2;
							fig_yShift <= 2;
						when others =>
							fig_xShift <= 0;
							fig_yShift <= 0;
					end case;
					if player = '1' then
						x1 <= (-column) + 210 * fig_xShift + 195 + 160 * fig_yShift;
						x2 <= (-column) + 210 * fig_xShift + 185 + 160 * fig_yShift;
						y1 <= (column) -210 * fig_xShift - 15 + 160 * fig_yShift;
						y2 <= (column) -210 * fig_xShift - 25 + 160 * fig_yShift;
						if ((x1 > row  and x2 < row ) or (y1 > row  and y2 < row)) and (row > 30 + 160 * fig_yShift and row < 140 + 160 * fig_yShift) then
							VGA_R <= "1111";
							VGA_G <= "0000";
							VGA_B <= "1111";
						end if;
					else
						f2x1 <= 210 * fig_xShift + 70;
						f2x2 <= f2x1 + 90;
						f2y1 <= 160 * fig_yShift + 40;
						f2y2 <= f2y1 + 90;
						if (f2x1 < column  and f2x2 > column  and f2y1 < row  and f2y2 > row) then
							VGA_R <= "0000";
							VGA_G <= "0000";
							VGA_B <= "1111";
						end if;
					end if;
				else
					VGA_R <= "1111";
					VGA_G <= "1111";
					VGA_B <= "1111";
				end if;
			end process;
		end architecture;
	