--
-- VHDL Architecture ece411.WordMux2.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-35.ews.illinois.edu)
--          at - 19:17:55 01/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordMux2 IS
   PORT( 
      A   : IN     LC3b_word;
      B   : IN     LC3b_word;
      Sel : IN     std_logic;
      F   : OUT    LC3b_word
   );

-- Declarations

END WordMux2 ;

--
ARCHITECTURE untitled OF WordMux2 IS
BEGIN
  PROCESS (A, B, Sel)
    VARIABLE state : LC3b_word;
  BEGIN
    CASE Sel IS
      WHEN '0' => state := A;
      WHEN '1' => state := B;
      WHEN OTHERS => state := (OTHERS => 'X');
    END CASE;
    F <= state AFTER delay_MUX2;
  END PROCESS;     
END ARCHITECTURE untitled;

