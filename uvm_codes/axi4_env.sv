`ifndef AXI4_ENV_SVH
`define AXI4_ENV_SVH

import uvm_pkg::*;
`include "uvm_macros.svh"

class axi4_env extends uvm_env;
    `uvm_component_utils(axi4_env)

        // For the building phase ::
        axi4_agent agt;
        axi4_scoreboard scb;
        axi4_coverage cov;

        // For creating new test classes ::
        function new(string name = "axi4_env", uvm_component parent);
            super.new(name, parent);

            $display("\n =========================== ENVIROMENT NEW ===================================");
            `uvm_info("[ENV]","creating new ENV class (L)",UVM_LOW)
            $display("============================================================================\n"); 
        endfunction

        function void build_phase (uvm_phase phase);
            super.build_phase(phase);
            agt = axi4_agent::type_id::create("agt", this);
            scb = axi4_scoreboard::type_id::create("scb",this);
            cov = axi4_coverage::type_id::create("cov",this);

            $display("\n =========================== ENVIROMENT BUILD ===================================");
            `uvm_info(get_type_name()," Inside axi4 ENV build phase (L)",UVM_LOW)
            $display("============================================================================\n");   
        endfunction

        function void start_of_simulation_phase(uvm_phase phase);
            `uvm_info(get_type_name(), {"start of simulation for \n", get_full_name()}, UVM_LOW);
        endfunction : start_of_simulation_phase

endclass : axi4_env

`endif