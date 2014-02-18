--
-- VHDL Architecture ece411.StoreMux.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-01.ews.illinois.edu)
--          at - 15:44:06 01/25/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY StoreMux IS
   PORT( 
      StoreSR     : IN     std_logic;
      clk         : IN     std_logic;
      SrcA        : IN     LC3b_reg;
      StoreMuxout : OUT    LC3b_reg;
      dest        : IN     LC3b_reg
   );

-- Declarations

END StoreMux ;

--
ARCHITECTURE UNTITLED OF StoreMux IS
BEGIN
	PROCESS (SrcA, dest, StoreSR)
	VARIABLE STATE : LC3b_reg;
	BEGIN
		CASE StoreSR IS
			WHEN '0' =>
				STATE := dest;
			WHEN '1' =>
				STATE := SrcA;
			WHEN OTHERS =>
				STATE := (OTHERS => 'X');
		END CASE;
	StoreMuxout <= STATE AFTER DELAY_MUX2;
	END PROCESS;
END UNTITLED;
