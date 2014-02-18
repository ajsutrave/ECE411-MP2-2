--
-- VHDL Architecture ece411.TagArray.untitled
--
-- Created:
--          by - sutrave1.ews (evrt-252-18.ews.illinois.edu)
--          at - 18:57:42 02/09/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TagArray IS
   PORT( 
      Reset_L       : IN     std_logic;
      TagWrite      : IN     std_logic;
      Index         : IN     LC3B_C_INDEX;
      TagIn         : IN     LC3B_C_TAG;
      TagArrayOut   : OUT    LC3B_C_TAG
   );

-- Declarations

END TagArray ;

--
ARCHITECTURE untitled OF TagArray IS
	TYPE TagArray IS array (7 downto 0) of LC3B_C_TAG;
	SIGNAL Tag : TagArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromTagArray : PROCESS (Tag, Index)
		--------------------------------------------------------------
  		VARIABLE TagIndex : integer;
		VARIABLE pre_TagArrayOut : LC3B_C_TAG;
		BEGIN
				TagIndex := to_integer(unsigned(Index));
				TagArrayOut <= Tag(TagIndex) after 20 ns;
		END PROCESS ReadFromTagArray;
	
		--------------------------------------------------------------
		WriteToTagArray : PROCESS (RESET_L, Index, TagWrite, Tag)
		-------------------------------------------------------	------	
			VARIABLE TagIndex : integer;
			BEGIN
				TagIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				Tag(0) <= (OTHERS => 'X');
				Tag(1) <= (OTHERS => 'X');
				Tag(2) <= (OTHERS => 'X');
				Tag(3) <= (OTHERS => 'X');
				Tag(4) <= (OTHERS => 'X');
				Tag(5) <= (OTHERS => 'X');
				Tag(6) <= (OTHERS => 'X');
				Tag(7) <= (OTHERS => 'X');
			END IF;

			IF (TagWrite = '1') THEN
				Tag(TagIndex) <= TagIn;
			END IF;
		
		END PROCESS WriteToTagArray;
END ARCHITECTURE untitled;
