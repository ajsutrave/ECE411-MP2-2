--
-- VHDL Architecture ece411.AddresSplitter.untitled
--
-- Created:
--          by - sutrave1.ews (evrt-252-18.ews.illinois.edu)
--          at - 18:20:09 02/09/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AddressSplitter IS
   PORT( 
      ADDRESS     : IN     LC3b_word;
      index       : OUT    LC3B_C_INDEX;
      offset      : OUT    LC3b_C_OFFSET;
      tag         : OUT    LC3b_C_TAG;
      byte_offset : OUT    std_logic
   );

-- Declarations

END AddressSplitter ;

--
ARCHITECTURE untitled OF AddressSplitter IS
BEGIN
  TAG <= ADDRESS (15 DOWNTO 7);
  INDEX <= ADDRESS (6 DOWNTO 4);
  OFFSET <= ADDRESS (3 DOWNTO 1);  
  BYTE_OFFSET <= ADDRESS (0);
END ARCHITECTURE untitled;

