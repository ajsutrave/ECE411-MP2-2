--
-- VHDL Architecture ece411.PCoff11.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-27.ews.illinois.edu)
--          at - 18:57:01 02/01/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY PCoff11 IS
   PORT( 
      ADJ11out   : IN     LC3b_word;
      clk        : IN     std_logic;
      PCout      : IN     LC3b_word;
      PCoff11out : OUT    LC3b_word
   );

-- Declarations

END PCoff11 ;

--
ARCHITECTURE untitled OF PCoff11 IS
BEGIN
	PROCESS (ADJ11out, PCout)
	VARIABLE temp_PCoff11out: LC3B_WORD;
	BEGIN
	 temp_PCoff11out := STD_LOGIC_VECTOR(SIGNED(ADJ11out) + SIGNED(PCout));
	PCoff11out <= temp_PCoff11out AFTER DELAY_ADDER;
	END PROCESS;
END ARCHITECTURE untitled;

