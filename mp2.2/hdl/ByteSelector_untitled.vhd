--
-- VHDL Architecture ece411.ByteSelector.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-02.ews.illinois.edu)
--          at - 17:04:10 02/03/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ByteSelector IS
   PORT( 
      ADDRESS      : IN     LC3b_word;
      clk          : IN     std_logic;
      mem_byte_sel : OUT    std_logic
   );

-- Declarations

END ByteSelector ;

--
ARCHITECTURE untitled OF ByteSelector IS
BEGIN
  mem_byte_sel <= address(0);
END ARCHITECTURE untitled;

