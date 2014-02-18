-- VHDL Entity ece411.memory.generatedInstance
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

ENTITY memory IS
   PORT( 
      ADDRESS     : IN     LC3b_word;
      clk         : IN     std_logic;
      DATAIN      : OUT    LC3b_word;
      DATAOUT     : IN     LC3b_word;
      MEMREAD_L   : IN     std_logic;
      MEMRESP_H   : OUT    std_logic;
      MEMWRITEH_L : IN     std_logic;
      MEMWRITEL_L : IN     std_logic;
      RESET_L     : IN     std_logic
   );

END memory ;

-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF memory IS 
BEGIN


END generatedInstance;
