-- VHDL Entity ece411.MDRsplit.generatedInstance
--
-- Created:
--          by - sutrave1.ews (gelib-057-23.ews.illinois.edu)
--          at - 14:09:23 02/02/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MDRsplit IS
   PORT( 
      clk          : IN     std_logic;
      MDRhigh_byte : OUT    LC3b_nibble;
      MDRlow_byte  : OUT    LC3b_nibble;
      MDRout       : IN     LC3b_word
   );

END MDRsplit ;

-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF MDRsplit IS 
BEGIN


END generatedInstance;
