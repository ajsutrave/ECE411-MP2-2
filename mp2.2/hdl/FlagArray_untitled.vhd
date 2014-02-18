--
-- VHDL Architecture ece411.FlagArray.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-22.ews.illinois.edu)
--          at - 17:32:14 02/10/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY FlagArray IS
   PORT( 
      RESET_L         : IN     std_logic;
      index           : IN     LC3b_C_INDEX;
      CacheEntryValid : OUT    std_logic
   );

-- Declarations

END FlagArray ;

--
ARCHITECTURE untitled OF FlagArray IS
	TYPE ValidArray IS array (7 downto 0) of std_logic;
	SIGNAL CacheEntryValid : DataArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromFlagArray : PROCESS (Data, Index)
		--------------------------------------------------------------
    
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
				DataOut <= Data(DataIndex) after 20 ns;
		
		END PROCESS ReadFromFlagArray;
	
		--------------------------------------------------------------
		WriteToDataArray : PROCESS (RESET_L, Index, DataWrite, DataIn)
		-------------------------------------------------------	------	
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				Data(0) <= (OTHERS => 'X');
				Data(1) <= (OTHERS => 'X');
				Data(2) <= (OTHERS => 'X');
				Data(3) <= (OTHERS => 'X');
				Data(4) <= (OTHERS => 'X');
				Data(5) <= (OTHERS => 'X');
				Data(6) <= (OTHERS => 'X');
				Data(7) <= (OTHERS => 'X');
			END IF;

			IF (DataWrite = '1') THEN
				Data(DataIndex) <= DataIn;
			END IF;
		
		END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

