`ifndef AXI4_MONITOR_SVH
`define AXI4_MONITOR_SVH

import uvm_pkg::*;
`include "uvm_macros.svh"

class axi4_monitor extends uvm_monitor;
    `uvm_component_utils(axi4_monitor)

    virtual axi4_uvm_bfm vif;

    // TLM Port to broadcast transactions
    uvm_analysis_port #(axi4_sequence_item) ap; //Producer


    function new(string name = "axi4_monitor", uvm_component parent);
        super.new(name, parent);
        ap = new("ap", this);

        $display("\n =========================== MONITOR NEW ===================================");
        `uvm_info("[MON]", "Creating new Monitor class (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction


    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        $display("\n =========================== MONITOR BUILD ===================================");
        `uvm_info(get_type_name(), "Inside axi4 MONITOR build phase (L)", UVM_LOW)
        $display("============================================================================\n");   
    endfunction
    

    // function void connect_phase(uvm_phase phase);
    //     super.connect_phase(phase);
    //     $display("\n =========================== MONITOR CONNECT ===================================");
    //     `uvm_info(get_type_name(), "Inside axi4 MONITOR connect phase (L)", UVM_LOW)
    //     $display("============================================================================\n");   
    // endfunction

endclass : axi4_monitor

`endif