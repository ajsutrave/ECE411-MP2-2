--
-- VHDL Architecture ece411.ResponseUnit.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-08.ews.illinois.edu)
--          at - 21:06:59 02/16/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ResponseUnit IS
   PORT( 
      cache_hit : IN     std_logic;
      mem_req   : IN     STD_LOGIC;
      MRESP_H   : OUT    std_logic
   );

-- Declarations

END ResponseUnit ;

--
ARCHITECTURE untitled OF ResponseUnit IS
BEGIN
END ARCHITECTURE untitled;

