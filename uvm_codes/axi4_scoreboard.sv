`ifndef AXI4_SCOREBOARD_SVH
`define AXI4_SCOREBOARD_SVH

import uvm_pkg::*;
`include "uvm_macros.svh"


class axi4_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(axi4_scoreboard)


    // TLM Imp to receive transactions from the Monitor
    // uvm_analysis_export #(axi4_sequence_item) analysis_export; //consumer
    // uvm_tlm_fifo #(axi4_sequence_item) fifo_scb;


    function new(string name = "axi4_scoreboard", uvm_component parent);
        super.new(name, parent);
        //analysis_export = new("analysis_export",this);

        $display("\n =========================== SCOREBOARD NEW ===================================");
        `uvm_info("[SCB]", "Creating new Scoreboard class (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction


    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        $display("\n =========================== SCOREBOARD BUILD ===================================");
        `uvm_info(get_type_name(), "Inside axi4 SCOREBOARD build phase (L)", UVM_LOW)
        $display("============================================================================\n");   
    endfunction


    // function void connect_phase (uvm_phase phase);
    //     super.connect_phase(phase);
    //     analysis_export.connect(fifo_scb.analysis_export);
    // endfunction

    
    // function void report_phase(uvm_phase phase);
    //     `uvm_info(get_type_name(), $sformatf("correct_count = %0d while error count = %0d",correct_count , error_count), UVM_LOW)
    // endfunction




endclass : axi4_scoreboard
`endif
