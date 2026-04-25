`ifndef AXI4_COVERAGE_SVH
`define AXI4_COVERAGE_SVH

import uvm_pkg::*;
`include "uvm_macros.svh"

class axi4_coverage extends uvm_component;
    `uvm_component_utils(axi4_coverage)

    // uvm_analysis_export #(axi4_sequence_item) mon_analysis_export;
    // uvm_tlm_analysis_fifo #(axi4_sequence_item) fifo_cov;

    function new(string name = "axi4_coverage", uvm_component parent);
        super.new(name, parent);
        // fifo_cov = new("fifo_cov", this);

        $display("\n =========================== COVERAGE NEW ===================================");
        `uvm_info("[COV]", "Creating new Coverage class (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction


    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        $display("\n =========================== COVERAGE BUILD ===================================");
        `uvm_info(get_type_name(), "Inside axi4 COVERAGE build phase (L)", UVM_LOW)
        $display("============================================================================\n");   
    endfunction


    // function void connect_phase (uvm_phase phase);
    //     super.connect_phase(phase);
    //     mon_analysis_export.connect(fifo_cov.analysis_export);
    // endfunction

    // // Required override for uvm_subscriber
    // function void write(axi4_sequence_item t);
    // endfunction

    
endclass : axi4_coverage

`endif