--
-- VHDL Architecture ece411.BRadd.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-01.ews.illinois.edu)
--          at - 15:43:37 01/25/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BRadd IS
   PORT( 
      ADJ9out  : IN     LC3b_word;
      clk      : IN     std_logic;
      BRaddout : OUT    LC3b_word;
      PCout    : IN     LC3b_word
   );

-- Declarations

END BRadd ;

--
ARCHITECTURE untitled OF BRadd IS
BEGIN
	PROCESS (ADJ9out, PCout)
	VARIABLE temp_BRaddout: LC3B_WORD;
	BEGIN
	 temp_BRaddout := STD_LOGIC_VECTOR(SIGNED(ADJ9out) + SIGNED(PCout));
	BRaddout <= temp_BRaddout AFTER DELAY_ADDER;
	END PROCESS;
END ARCHITECTURE untitled;
