--
-- VHDL Architecture ece411.WordMux3.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-27.ews.illinois.edu)
--          at - 15:26:35 02/01/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordMux3 IS
   PORT( 
      A   : IN     LC3b_word;
      B   : IN     LC3b_word;
      C   : IN     LC3b_word;
      Sel : IN     std_logic_vector (1 DOWNTO 0);
      F   : OUT    LC3b_word
   );

-- Declarations

END WordMux3 ;

--
ARCHITECTURE untitled OF WordMux3 IS
BEGIN
  PROCESS (A, B, C, Sel)
    VARIABLE state : LC3b_word;
  BEGIN
    CASE Sel IS
      WHEN "00" => state := A;
      WHEN "01" => state := B;
      WHEN "10" => state := C;
      WHEN OTHERS => state := (OTHERS => 'X');
    END CASE;
    F <= state AFTER delay_MUX4;
  END PROCESS;     
END ARCHITECTURE untitled;
