`ifndef AXI4_DRIVER_SVH
`define AXI4_DRIVER_SVH

import uvm_pkg::*;
`include "uvm_macros.svh"

class axi4_driver extends uvm_driver #(axi4_sequence_item);
    `uvm_component_utils(axi4_driver)

    virtual axi4_uvm_bfm vif;

    function new(string name = "axi4_driver", uvm_component parent);
        super.new(name, parent);
        $display("\n =========================== DRIVER NEW ===================================");
        `uvm_info("[DRV]", "Creating new Driver class (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        $display("\n =========================== DRIVER BUILD ===================================");
        `uvm_info(get_type_name(), "Inside axi4 DRIVER build phase (L)", UVM_LOW)
        $display("============================================================================\n");   
    endfunction
endclass : axi4_driver

`endif