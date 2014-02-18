--
-- VHDL Architecture ece411.ADJ8.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-23.ews.illinois.edu)
--          at - 16:51:42 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ8 IS
   PORT( 
      clk       : IN     std_logic;
      trapvect8 : IN     LC3b_trapvect8;
      ADJ8out   : OUT    LC3b_word
   );

-- Declarations

END ADJ8 ;

--
ARCHITECTURE untitled OF ADJ8 IS
BEGIN
  ADJ8out <=  "0000000" & trapvect8 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

