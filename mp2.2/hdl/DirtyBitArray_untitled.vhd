--
-- VHDL Architecture ece411.DirtyBitArray.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-22.ews.illinois.edu)
--          at - 17:53:37 02/10/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DirtyBitArray IS
   PORT( 
      DirtyBitIn          : IN     std_logic;
      DirtyBitWrite       : IN     std_logic;
      RESET_L             : IN     std_logic;
      index               : IN     LC3b_C_INDEX;
      DirtyBitArrayOut    : OUT    std_logic
   );

-- Declarations

END DirtyBitArray ;

--
ARCHITECTURE untitled OF DirtyBitArray IS
	TYPE DirtyBitArray IS array (7 downto 0) of std_logic;
	SIGNAL DirtyBit : DirtyBitArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromDirtyBitArray : PROCESS (DirtyBit, Index)
		--------------------------------------------------------------
  		VARIABLE DirtyBitIndex : integer;
		VARIABLE pre_DirtyBitArrayOut : std_logic;
		BEGIN
				DirtyBitIndex := to_integer(unsigned(Index));
				DirtyBitArrayOut <= DirtyBit(DirtyBitIndex) after 20 ns;
		END PROCESS ReadFromDirtyBitArray;
	
		
		--------------------------------------------------------------
		WriteToDirtyBitArray : PROCESS (RESET_L, Index, DirtyBitWrite, DirtyBitIn)
		-------------------------------------------------------	------	
			VARIABLE DirtyBitIndex : integer;
			BEGIN
				DirtyBitIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				DirtyBit(0) <= '0';
				DirtyBit(1) <= '0';
				DirtyBit(2) <= '0';
				DirtyBit(3) <= '0';
				DirtyBit(4) <= '0';
				DirtyBit(5) <= '0';
				DirtyBit(6) <= '0';
				DirtyBit(7) <= '0';
			END IF;

			IF (DirtyBitWrite = '1') THEN
				DirtyBit(DirtyBitIndex) <= DirtyBitIn;
			END IF;
		
		END PROCESS WriteToDirtyBitArray;
END ARCHITECTURE untitled;
