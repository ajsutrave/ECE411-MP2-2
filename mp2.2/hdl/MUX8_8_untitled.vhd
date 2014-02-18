--
-- VHDL Architecture ece411.MUX8_8.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-22.ews.illinois.edu)
--          at - 18:58:09 02/10/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MUX8_16 IS
   PORT( 
      A   : IN     LC3b_WORD;
      B   : IN     LC3b_WORD;
      C   : IN     LC3b_WORD;
      D   : IN     LC3b_WORD;
      E   : IN     LC3b_WORD;
      G   : IN     LC3b_WORD;
      H   : IN     LC3b_WORD;
      I   : IN     LC3b_WORD;
      sel : IN     LC3b_C_OFFSET;
      F   : OUT    LC3b_WORD
   );

-- Declarations

END MUX8_16 ;

--
ARCHITECTURE UNTITLED OF MUX8_16 IS
SIGNAL TEMP : LC3B_WORD;
BEGIN
	PROCESS (A, B, C, D, SEL)
	BEGIN  -- PROCESS
		CASE SEL IS
		WHEN "000" =>
			TEMP <= A;
		WHEN "001" => 
			TEMP <= B;
		WHEN "010" => 
			TEMP <= C;
		WHEN "011" => 
			TEMP <= D;
		WHEN "100" =>
			TEMP <= E;
		WHEN "101" => 
			TEMP <= G;
		WHEN "110" => 
			TEMP <= H;
		WHEN "111" => 
			TEMP <= I;			
		WHEN OTHERS =>
			TEMP <= (OTHERS => 'X');
		END CASE;
	END PROCESS;
	F <= TEMP AFTER DELAY_MUX8;
END UNTITLED;
