`ifndef AXI4_SEQUENCER_SVH
`define AXI4_SEQUENCER_SVH

import uvm_pkg::*;
`include "uvm_macros.svh"

class axi4_sequencer extends uvm_sequencer #(axi4_sequence_item);
    `uvm_component_utils(axi4_sequencer)

    function new(string name = "axi4_sequencer", uvm_component parent);
        super.new(name, parent);
        $display("\n =========================== SEQUENCER NEW ===================================");
        `uvm_info("[SQR]", "Creating new Sequencer class (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        $display("\n =========================== SEQUENCER BUILD ===================================");
        `uvm_info(get_type_name(), "Inside axi4 SEQUENCER build phase (L)", UVM_LOW)
        $display("============================================================================\n");   
    endfunction
endclass : axi4_sequencer

`endif