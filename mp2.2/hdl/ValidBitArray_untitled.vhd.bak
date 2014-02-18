--
-- VHDL Architecture ece411.ValidBitArray.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-22.ews.illinois.edu)
--          at - 17:53:29 02/10/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ValidBitArray IS
   PORT( 
      RESET_L             : IN     std_logic;
      ValidBitIn          : IN     std_logic;
      ValidBitWrite       : IN     std_logic;
      index               : IN     LC3b_C_INDEX;
      ValidBitArrayOut    : OUT    std_logic
   );

-- Declarations

END ValidBitArray ;

--
ARCHITECTURE untitled OF ValidBitArray IS
	TYPE ValidBitArray IS array (7 downto 0) of std_logic;
	SIGNAL ValidBit : ValidBitArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromValidBitArray : PROCESS (ValidBit, Index)
		--------------------------------------------------------------
  		VARIABLE ValidBitIndex : integer;
		VARIABLE pre_ValidBitArrayOut : std_logic;
		BEGIN
				ValidBitIndex := to_integer(unsigned(Index));
				ValidBitArrayOut <= ValidBit(ValidBitIndex) after 20 ns;
		END PROCESS ReadFromValidBitArray;
	
		
		--------------------------------------------------------------
		WriteToValidBitArray : PROCESS (RESET_L, Index, ValidBitWrite, ValidBitIn)
		-------------------------------------------------------	------	
			VARIABLE ValidBitIndex : integer;
			BEGIN
				ValidBitIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				ValidBit(0) <= '0';
				ValidBit(1) <= '0';
				ValidBit(2) <= '0';
				ValidBit(3) <= '0';
				ValidBit(4) <= '0';
				ValidBit(5) <= '0';
				ValidBit(6) <= '0';
				ValidBit(7) <= '0';
			END IF;

			IF (ValidBitWrite = '1') THEN
				ValidBit(ValidBitIndex) <= ValidBitIn AFTER 29 ns;
			END IF;
		
		END PROCESS WriteToValidBitArray;
END ARCHITECTURE untitled;
