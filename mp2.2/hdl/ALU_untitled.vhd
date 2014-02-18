--
-- VHDL Architecture ece411.ALU.untitled
--
-- Created:
--          by - sutrave1.ews (gelib-057-01.ews.illinois.edu)
--          at - 15:39:11 01/25/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ALU IS
   PORT( 
      ALUMuxout : IN     LC3b_word;
      ALUop     : IN     LC3b_aluop;
      RFAout    : IN     LC3b_word;
      clk       : IN     std_logic;
      imm4      : IN     LC3b_imm4;
      ALUout    : OUT    LC3b_word
   );

-- Declarations

END ALU ;

--
ARCHITECTURE UNTITLED OF ALU IS
BEGIN
	----------------------------------------
	VHDL_ALU : PROCESS (RFAOUT, ALUMUXOUT, ALUOP)
	----------------------------------------
	VARIABLE TEMP_ALUOUT : LC3B_WORD;
	VARIABLE COUNT :INTEGER;
	BEGIN
		-- CHECK FOR ALU OPERATION TYPE, AND EXECUTE
		COUNT := TO_INTEGER(UNSIGNED('0' & IMM4));		
		CASE ALUOP IS
			WHEN ALU_ADD =>
				TEMP_ALUOUT := STD_LOGIC_VECTOR(SIGNED(RFAOUT) + SIGNED(ALUMUXOUT));
			WHEN ALU_AND =>
				TEMP_ALUOUT := (RFAOUT AND ALUMUXOUT);
			WHEN ALU_NOT =>
				TEMP_ALUOUT := (RFAOUT XOR "1111111111111111");
			WHEN ALU_PASS =>
				TEMP_ALUOUT := (RFAOUT);
			WHEN ALU_SLL =>
			  TEMP_ALUOUT := ( RFAOUT SLL COUNT );
		  WHEN ALU_SRL =>
			  TEMP_ALUOUT := ( RFAOUT SRL COUNT );
		  WHEN ALU_SRA =>
		    IF ( IMM4 = "0000") THEN
		    		TEMP_ALUOUT := RFAOUT;
		    ELSE
		      TEMP_ALUOUT (15 - COUNT DOWNTO - 0) := RFAOUT (15 DOWNTO COUNT);
		      TEMP_ALUOUT (15 DOWNTO (15 - COUNT +1)) := (OTHERS => RFAOUT(15));
		    END IF;
		  WHEN OTHERS =>
		END CASE;
	--SET OUTPUT VALUE ALUOUT TO BE THE TEMPORARY VALUE CALCULATED WITHIN THE PROCESS AFTER A DELAY
	ALUOUT <= TEMP_ALUOUT AFTER DELAY_ALU;
	END PROCESS VHDL_ALU;
END UNTITLED;
