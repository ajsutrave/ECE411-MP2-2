--
-- VHDL Architecture ece411.LRUArray.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-22.ews.illinois.edu)
--          at - 18:43:34 02/10/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LRUBitArray IS
   PORT( 
      RESET_L           : IN     std_logic;
      LRUBitIn          : IN     std_logic;
      LRUBitWrite       : IN     std_logic;
      index             : IN     LC3b_C_INDEX;
      LRUBitArrayOut    : OUT    std_logic
   );

-- Declarations

END LRUBitArray ;

--
ARCHITECTURE untitled OF LRUBitArray IS
	TYPE LRUBitArray IS array (7 downto 0) of std_logic;
	SIGNAL LRUBit : LRUBitArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromLRUBitArray : PROCESS (LRUBitIn, Index)
		--------------------------------------------------------------
  			VARIABLE LRUBitIndex : integer;
			BEGIN
				LRUBitIndex := to_integer(unsigned(Index));
				LRUBitArrayOut <= LRUBit(LRUBitIndex) after 20 ns;
		END PROCESS ReadFromLRUBitArray;
		
		--------------------------------------------------------------
		WriteToLRUBitArray : PROCESS (RESET_L, Index, LRUBitWrite, LRUBitIn)
		-------------------------------------------------------	------	
			VARIABLE LRUBitIndex : integer;
			BEGIN
				LRUBitIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				LRUBit(0) <= 'X';
				LRUBit(1) <= 'X';
				LRUBit(2) <= 'X';
				LRUBit(3) <= 'X';
				LRUBit(4) <= 'X';
				LRUBit(5) <= 'X';
				LRUBit(6) <= 'X';
				LRUBit(7) <= 'X';
			END IF;

			IF (LRUBitWrite = '1') THEN
				LRUBit(LRUBitIndex) <= LRUBitIn;
			END IF;
		
		END PROCESS WriteToLRUBitArray;
END ARCHITECTURE untitled;
