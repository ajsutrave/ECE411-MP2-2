--
-- VHDL Architecture ece411.ADJ11.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-27.ews.illinois.edu)
--          at - 18:54:24 02/01/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ11 IS
   PORT( 
      offset11 : IN     LC3b_offset11;
      clk      : IN     std_logic;
      ADJ11out : OUT    LC3b_word
   );

-- Declarations

END ADJ11 ;

--
ARCHITECTURE untitled OF ADJ11 IS
BEGIN
    ADJ11out <= offset11(10) & offset11(10) & offset11(10) & offset11(10) & offset11 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

