--
-- VHDL Architecture ece411.TagComparator.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-22.ews.illinois.edu)
--          at - 17:56:54 02/10/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TagComparator IS
   PORT( 
      TagArrayOut       : IN     LC3B_C_TAG;
      AddressTag        : IN     LC3b_C_TAG;
      hit               : OUT    std_logic
   );

-- Declarations

END TagComparator ;

--
ARCHITECTURE untitled OF TagComparator IS
BEGIN
  PROCESS(TagArrayOut, AddressTag)
  VARIABLE pre_hit : std_logic;
  BEGIN
      IF(TagArrayOut = AddressTag) THEN
        pre_hit := '1';
      ELSE
        pre_hit := '0';
      END IF;
  hit <= pre_hit AFTER DELAY_COMPARE16;    
  END PROCESS;
END ARCHITECTURE untitled;

