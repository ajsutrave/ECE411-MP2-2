--
-- VHDL Architecture ece411.DATAOUTTranslator.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-28.ews.illinois.edu)
--          at - 19:27:15 02/15/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DATAOUTTranslator IS
   PORT( 
      DATAOUT      : IN     LC3b_word;
      DataArrayOut : IN     LC3b_OWORD;
      MWRITEL_H    : IN     std_logic;
      MWRITEL_L    : IN     std_logic;
      byte_offset  : IN     std_logic;
      offset       : IN     LC3b_C_OFFSET;
      PMDATAOUT    : OUT    LC3b_oword
   );

-- Declarations

END DATAOUTTranslator ;

--
ARCHITECTURE untitled OF DATAOUTTranslator IS
BEGIN
  PROCESS (DATAOUT)
  BEGIN
    PMDATAOUT <= (128 DOWNTO 17 => '0') & DATAOUT;
  END PROCESS;  
END ARCHITECTURE untitled;

