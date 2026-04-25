`ifndef AXI4_AGENT_SVH
`define AXI4_AGENT_SVH

import uvm_pkg::*;
`include "uvm_macros.svh"


class axi4_agent extends uvm_agent;
    `uvm_component_utils(axi4_agent)

    // For the building phase ::
    axi4_sequencer sqr;
    axi4_driver    drv;
    axi4_monitor   mon;


    // For creating new agent classes ::
    function new(string name = "axi4_agent", uvm_component parent);
        super.new(name, parent);
        $display("\n =========================== AGENT NEW ===================================");
        `uvm_info("[AGT]", "Creating new Agent class (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction


    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        sqr = axi4_sequencer::type_id::create("sqr", this);
        drv = axi4_driver::type_id::create("drv", this);
        mon = axi4_monitor::type_id::create("mon", this);

        $display("\n =========================== AGENT BUILD ===================================");
        `uvm_info(get_type_name(), "Inside axi4 AGENT build phase (L)", UVM_LOW)
        $display("============================================================================\n");   
    endfunction


    function void start_of_simulation_phase(uvm_phase phase);
        `uvm_info(get_type_name(), {"start of simulation for \n", get_full_name()}, UVM_LOW);
   endfunction : start_of_simulation_phase


    function void connect_phase (uvm_phase phase);
        super.connect_phase(phase);
        drv.seq_item_port.connect(sqr.seq_item_export);
    endfunction

   
endclass : axi4_agent

`endif
