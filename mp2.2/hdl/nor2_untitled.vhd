--
-- VHDL ARCHITECTURE ECE411.NOR2.UNTITLED
--
-- CREATED:
--          BY - HERSTAD.STDT (EESN27.EWS.UIUC.EDU)
--          AT - 13:52:27 03/13/03
--
-- GENERATED BY MENTOR GRAPHICS' HDL DESIGNER(TM) 2001.5 (BUILD 170)
--
-- HDS INTERFACE_START
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY ECE411;
USE ECE411.LC3B_TYPES.ALL;

ENTITY NOR2 IS
   PORT( 
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );

-- Declarations

END NOR2 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF NOR2 IS
BEGIN
	NOR2: PROCESS(A,B)
	BEGIN
		F <= A NOR B AFTER DELAY_LOGIC2;
	END PROCESS NOR2;
END UNTITLED;
