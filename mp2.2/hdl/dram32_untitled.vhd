-- ADDED TIMING VALIDATION JANUARY 2010
--
-- VHDL ARCHITECTURE ECE411.DRAM32.UNTITLED
--
-- CREATED:
--          BY - HERSTAD.STDT (GLSN23.EWS.UIUC.EDU)
--          AT - 16:18:46 11/04/03
--
-- GENERATED BY MENTOR GRAPHICS' HDL DESIGNER(TM) 2001.5 (BUILD 170)
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY ECE411;
USE ECE411.LC3B_TYPES.ALL;

ENTITY DRAM32 IS
   PORT( 
      ADDRESS  : IN     LC3B_WORD;
      DATAOUT  : IN     LC3B_DWORD;
      MREAD_L  : IN     STD_LOGIC;
      MWRITE_L : IN     STD_LOGIC;
      RESET_L  : IN     STD_LOGIC;
      DATAIN   : OUT    LC3B_DWORD;
      MRESP_H  : OUT    STD_LOGIC
   );

-- Declarations

END DRAM32 ;

ARCHITECTURE UNTITLED OF DRAM32 IS
SIGNAL PRE_MRESP_H : STD_LOGIC;
SIGNAL PRE_DATAIN  : LC3B_DWORD;
BEGIN
	-------------------------------------------------------------------
	VHDL_MEMORY : PROCESS (RESET_L, MREAD_L, MWRITE_L) 
	-------------------------------------------------------------------
	VARIABLE MEM         : MEMORY_ARRAY_64K;
	VARIABLE INT_ADDRESS : INTEGER;
	BEGIN
		INT_ADDRESS := TO_INTEGER(UNSIGNED(ADDRESS(15 DOWNTO 2)) * 4);
		IF RESET_L = '0' THEN
			PRE_MRESP_H <= '0';
			MYDRAMINIT_64K(MEM);
		ELSE
			IF ((INT_ADDRESS >= 0) AND (INT_ADDRESS <= 65535)) THEN
				IF (MREAD_L = '0' AND MWRITE_L = '1') THEN
					PRE_DATAIN(7 DOWNTO 0)   <= MEM(INT_ADDRESS);
					PRE_DATAIN(15 DOWNTO 8)  <= MEM(INT_ADDRESS + 1);
					PRE_DATAIN(23 DOWNTO 16) <= MEM(INT_ADDRESS + 2);
					PRE_DATAIN(31 DOWNTO 24) <= MEM(INT_ADDRESS + 3);
					PRE_MRESP_H <= '1' AFTER 0 NS, '0' AFTER CLOCK_PERIOD;
				ELSIF (MWRITE_L = '0' AND MREAD_L = '1') THEN			
					MEM(INT_ADDRESS)     := DATAOUT(7 DOWNTO 0);
					MEM(INT_ADDRESS + 1) := DATAOUT(15 DOWNTO 8);
					MEM(INT_ADDRESS + 2) := DATAOUT(23 DOWNTO 16);
					MEM(INT_ADDRESS + 3) := DATAOUT(31 DOWNTO 24);
					PRE_MRESP_H <= '1' AFTER 0 NS, '0' AFTER CLOCK_PERIOD;
				END IF;
			END IF;
		END IF;
	END PROCESS VHDL_MEMORY;
  MRESP_H <= PRE_MRESP_H'DELAYED(DELAY_32B_MEM);
  DATAIN  <= PRE_DATAIN'DELAYED(DELAY_32B_MEM);
END UNTITLED;
