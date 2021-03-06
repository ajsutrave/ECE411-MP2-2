--
-- VHDL ARCHITECTURE ECE411.OR3.UNTITLED
--
-- CREATED:
--          BY - HERSTAD.STDT (EESN27.EWS.UIUC.EDU)
--          AT - 14:21:37 03/13/03
--
-- GENERATED BY MENTOR GRAPHICS' HDL DESIGNER(TM) 2001.5 (BUILD 170)
--
-- HDS INTERFACE_START
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY ECE411;
USE ECE411.LC3B_TYPES.ALL;

ENTITY OR3 IS
   PORT( 
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      C : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );

-- Declarations

END OR3 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF OR3 IS
BEGIN
	OR3: PROCESS(A,B,C)
	BEGIN
		F <= A OR B OR C AFTER DELAY_LOGIC3;
	END PROCESS OR3;
END UNTITLED;
