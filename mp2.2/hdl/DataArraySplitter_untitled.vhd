--
-- VHDL Architecture ece411.DataArraySplitter.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-22.ews.illinois.edu)
--          at - 18:46:38 02/10/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DataArraySplitter IS
   PORT( 
      DataArrayOut   : IN     LC3B_OWORD;
      dword0         : OUT    LC3b_WORD;
      dword1         : OUT    LC3b_WORD;
      dword2         : OUT    LC3b_WORD;
      dword3         : OUT    LC3b_WORD;
      dword4         : OUT    LC3b_WORD;
      dword5         : OUT    LC3b_WORD;
      dword6         : OUT    LC3b_WORD;
      dword7         : OUT    LC3b_WORD
   );

-- Declarations

END DataArraySplitter ;

--
ARCHITECTURE untitled OF DataArraySplitter IS
BEGIN
  DWORD0 <= DataArrayOut(15 DOWNTO 0);
  DWORD1 <= DataArrayOut(31 DOWNTO 16);
  DWORD2 <= DataArrayOut(47 DOWNTO 32);
  DWORD3 <= DataArrayOut(63 DOWNTO 48);
  DWORD4 <= DataArrayOut(79 DOWNTO 64);
  DWORD5 <= DataArrayOut(95 DOWNTO 80);
  DWORD6 <= DataArrayOut(111 DOWNTO 96);
  DWORD7 <= DataArrayOut(127 DOWNTO 112);
END ARCHITECTURE untitled;

