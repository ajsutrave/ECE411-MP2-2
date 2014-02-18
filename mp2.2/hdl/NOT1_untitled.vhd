--
-- VHDL Architecture ece411.NOT1.untitled
--
-- Created:
--          by - sutrave1.ews (evrt-252-18.ews.illinois.edu)
--          at - 19:26:17 02/09/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NOT1 IS
   PORT( 
      A : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END NOT1 ;

--
ARCHITECTURE untitled OF NOT1 IS
BEGIN
	PROCESS (A)
	VARIABLE TEMP_F : STD_LOGIC;
	BEGIN
	 TEMP_F := NOT A;
	 F <= TEMP_F AFTER DELAY_LOGIC2;
	END PROCESS;  
END ARCHITECTURE UNTITLED;

