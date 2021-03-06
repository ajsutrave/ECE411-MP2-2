--
-- VHDL Architecture ece411.AddrTranslator.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-28.ews.illinois.edu)
--          at - 19:24:35 02/15/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AddrTranslator IS
   PORT( 
      ADDRESS   : IN     LC3b_word;
      PMADDRESS : OUT    LC3B_WORD
   );

-- Declarations

END AddrTranslator ;

--
ARCHITECTURE untitled OF AddrTranslator IS
BEGIN
  PROCESS (ADDRESS)
  BEGIN
    PMADDRESS <= ADDRESS;
  END PROCESS;
END ARCHITECTURE untitled;

