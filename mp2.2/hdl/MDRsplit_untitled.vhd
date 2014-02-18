--
-- VHDL Architecture ece411.MDRsplit.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-23.ews.illinois.edu)
--          at - 14:09:52 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MDRsplit IS
   PORT( 
      MDRout       : IN     LC3b_word;
      clk          : IN     std_logic;
      MDRhigh_byte : OUT    LC3b_nibble;
      MDRlow_byte  : OUT    LC3b_nibble
   );

-- Declarations

END MDRsplit ;

--
ARCHITECTURE untitled OF MDRsplit IS
BEGIN
END ARCHITECTURE untitled;

