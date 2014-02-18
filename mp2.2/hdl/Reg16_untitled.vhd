--
-- VHDL Architecture ece411.Reg16.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-35.ews.illinois.edu)
--          at - 19:38:29 01/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Reg16 IS
   PORT( 
      clk    : IN     std_logic;
      input  : IN     LC3b_word;
      load   : IN     std_logic;
      reset  : IN     std_logic;
      output : OUT    LC3b_word
   );

-- Declarations

END Reg16 ;

--
ARCHITECTURE untitled OF Reg16 IS
  SIGNAL pre_out : LC3b_word;
BEGIN
  PROCESS (clk, reset, input)
  BEGIN
    IF reset = '0' THEN
      pre_out <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      IF (load = '1') THEN 
        pre_out <= input;
      END IF;
    END IF;
  END PROCESS;
  output <= pre_out AFTER delay_reg;
END ARCHITECTURE untitled;

