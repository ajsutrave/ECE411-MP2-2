--
-- VHDL Architecture ece411.memory.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-01.ews.illinois.edu)
--          at - 15:28:20 01/25/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY memory IS
   PORT( 
      ADDRESS   : IN     LC3b_word;
      CLK       : IN     STD_LOGIC;
      DATAOUT   : IN     LC3b_word;
      MREAD_L   : IN     std_logic;
      MWRITEH_L : IN     std_logic;
      MWRITEL_L : IN     std_logic;
      RESET_L   : IN     STD_LOGIC;
      DATAIN    : OUT    LC3b_word;
      MRESP_H   : OUT    std_logic
   );

-- Declarations

END memory ;

--
-- VHDL Architecture ece411.memory.struct
--
-- Created:
--          by - sutrave1.ews (gelib-057-06.ews.illinois.edu)
--          at - 19:36:41 02/17/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF memory IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL PMADDRESS   : LC3B_WORD;
   SIGNAL PMDATAIN    : LC3B_OWORD;
   SIGNAL PMDATAOUT   : LC3b_oword;
   SIGNAL PMREAD_L    : STD_LOGIC;
   SIGNAL PMRESP_H    : STD_LOGIC;
   SIGNAL PMWRITE_L   : STD_LOGIC;
   SIGNAL cache_hit   : std_logic;
   SIGNAL cache_write : std_logic;
   SIGNAL mem_req     : STD_LOGIC;


   -- Component Declarations
   COMPONENT Cache_Controller
   PORT (
      CLK         : IN     STD_LOGIC ;
      PMRESP_H    : IN     STD_LOGIC ;
      RESET_L     : IN     STD_LOGIC ;
      cache_hit   : IN     std_logic ;
      mem_req     : IN     STD_LOGIC ;
      PMREAD_L    : OUT    STD_LOGIC ;
      PMWRITE_L   : OUT    STD_LOGIC ;
      cache_write : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT Cache_Datapath
   PORT (
      ADDRESS     : IN     LC3b_word ;
      CLK         : IN     STD_LOGIC ;
      DATAOUT     : IN     LC3b_word ;
      MREAD_L     : IN     std_logic ;
      MWRITEH_L   : IN     std_logic ;
      MWRITEL_L   : IN     std_logic ;
      PMDATAIN    : IN     LC3B_OWORD ;
      RESET_L     : IN     STD_LOGIC ;
      cache_write : IN     std_logic ;
      DATAIN      : OUT    LC3b_word ;
      MRESP_H     : OUT    std_logic ;
      PMADDRESS   : OUT    LC3B_WORD ;
      PMDATAOUT   : OUT    LC3b_oword ;
      cache_hit   : OUT    std_logic ;
      mem_req     : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT Physical_Memory
   PORT (
      CLK       : IN     STD_LOGIC ;
      PMADDRESS : IN     LC3B_WORD ;
      PMDATAOUT : IN     LC3b_oword ;
      PMREAD_L  : IN     STD_LOGIC ;
      PMWRITE_L : IN     STD_LOGIC ;
      RESET_L   : IN     STD_LOGIC ;
      PMDATAIN  : OUT    LC3B_OWORD ;
      PMRESP_H  : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : Cache_Controller USE ENTITY ece411.Cache_Controller;
   FOR ALL : Cache_Datapath USE ENTITY ece411.Cache_Datapath;
   FOR ALL : Physical_Memory USE ENTITY ece411.Physical_Memory;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   Cache_Cont : Cache_Controller
      PORT MAP (
         CLK         => CLK,
         PMRESP_H    => PMRESP_H,
         RESET_L     => RESET_L,
         cache_hit   => cache_hit,
         mem_req     => mem_req,
         PMREAD_L    => PMREAD_L,
         PMWRITE_L   => PMWRITE_L,
         cache_write => cache_write
      );
   Cache_DP : Cache_Datapath
      PORT MAP (
         ADDRESS     => ADDRESS,
         CLK         => CLK,
         DATAOUT     => DATAOUT,
         MREAD_L     => MREAD_L,
         MWRITEH_L   => MWRITEH_L,
         MWRITEL_L   => MWRITEL_L,
         PMDATAIN    => PMDATAIN,
         RESET_L     => RESET_L,
         cache_write => cache_write,
         DATAIN      => DATAIN,
         MRESP_H     => MRESP_H,
         PMADDRESS   => PMADDRESS,
         PMDATAOUT   => PMDATAOUT,
         cache_hit   => cache_hit,
         mem_req     => mem_req
      );
   PDRAM : Physical_Memory
      PORT MAP (
         CLK       => CLK,
         PMADDRESS => PMADDRESS,
         PMDATAOUT => PMDATAOUT,
         PMREAD_L  => PMREAD_L,
         PMWRITE_L => PMWRITE_L,
         RESET_L   => RESET_L,
         PMDATAIN  => PMDATAIN,
         PMRESP_H  => PMRESP_H
      );

END struct;
