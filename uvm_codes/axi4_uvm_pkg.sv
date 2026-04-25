package axi4_uvm_pkg;

  import uvm_pkg::*;
  `include "uvm_macros.svh"
  
  import axi4_enum::*; // Bring in AXI_READ/AXI_WRITE
  //`include "axi4_bfm.sv"
  `include "common_cfg_class.sv" 
  
  `include "axi4_sequence_items.sv"
  `include "axi4_sequences.sv"
  `include "axi4_sequencer.sv"
  `include "axi4_driver.sv"
  `include "axi4_monitor.sv"
  `include "axi4_agent.sv"
  `include "axi4_scoreboard.sv"
  `include "axi4_coverage.sv"
  `include "axi4_env.sv"
  `include "axi4_test.sv"

endpackage : axi4_uvm_pkg