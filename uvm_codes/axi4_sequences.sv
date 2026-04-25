`ifndef AXI4_SEQUENCES_SVH
`define AXI4_SEQUENCES_SVH

import uvm_pkg::*;
`include "uvm_macros.svh"

class axi4_base_sequence extends uvm_sequence #(axi4_sequence_item);
    `uvm_object_utils(axi4_base_sequence)

    function new(string name = "axi4_base_sequence");
        super.new(name);
        $display("\n =========================== BASE SEQ NEW ===================================");
        `uvm_info("[BASE_SEQ]", "Creating new Base Sequence (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction
endclass : axi4_base_sequence

`endif