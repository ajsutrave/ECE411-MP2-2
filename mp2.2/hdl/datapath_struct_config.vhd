-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY ece411;
CONFIGURATION datapath_struct_config OF datapath IS
   FOR struct
      FOR ALL : GenCC
         USE ENTITY ece411.GenCC(untitled);
      END FOR;
      FOR ALL : IR
         USE ENTITY ece411.IR(untitled);
      END FOR;
      FOR ALL : Reg16
         USE ENTITY ece411.Reg16(untitled);
      END FOR;
      FOR ALL : WordMux2
         USE ENTITY ece411.WordMux2(untitled);
      END FOR;
   END FOR;
END datapath_struct_config;
