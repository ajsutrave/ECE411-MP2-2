--
-- VHDL Architecture ece411.MDRsplitter.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-02.ews.illinois.edu)
--          at - 17:16:36 02/03/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MDRsplitter IS
   PORT( 
      MDRout  : IN     LC3b_word;
      clk     : IN     std_logic;
      MDRhigh : OUT    LC3b_word;
      MDRlow  : OUT    LC3b_word
   );

-- Declarations

END MDRsplitter ;

--
ARCHITECTURE untitled OF MDRsplitter IS
BEGIN
  MDRhigh <= MDRout (15 DOWNTO 8) & "00000000";
  MDRlow <= "00000000" & MDRout (7 DOWNTO 0);
END ARCHITECTURE untitled;

