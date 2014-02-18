-- VHDL Entity ece411.StoreMux.generatedInstance
--
-- Created:
--          by - sutrave1.ews (gelib-057-01.ews.illinois.edu)
--          at - 15:21:01 01/25/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY StoreMux IS
   PORT( 
      clk         : IN     std_logic;
      dest        : IN     LC3b_reg;
      SrcA        : IN     LC3b_reg;
      StoreMuxout : OUT    LC3b_reg;
      StoreSR     : IN     std_logic
   );

END StoreMux ;

-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF StoreMux IS 
BEGIN


END generatedInstance;
