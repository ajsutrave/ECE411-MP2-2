--
-- VHDL Architecture ece411.R7Mux.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-23.ews.illinois.edu)
--          at - 17:25:33 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY R7Mux IS
   PORT( 
      clk      : IN     std_logic;
      R7MuxSel : IN     std_logic;
      dest     : IN     LC3b_reg;
      R7Muxout : OUT    LC3b_reg
   );

-- Declarations

END R7Mux ;

--
ARCHITECTURE untitled OF R7Mux IS
BEGIN
	PROCESS (R7MuxSel, dest)
	VARIABLE STATE : LC3b_reg;
	BEGIN
		CASE R7MuxSel IS
			WHEN '0' =>
				STATE := dest;
			WHEN '1' =>
				STATE := "111";
			WHEN OTHERS =>
				STATE := (OTHERS => 'X');
		END CASE;
	R7Muxout <= STATE AFTER DELAY_MUX2;
	END PROCESS;
END ARCHITECTURE untitled;

