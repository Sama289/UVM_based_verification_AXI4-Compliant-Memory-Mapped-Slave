`ifndef AXI4_TEST_SVH
`define AXI4_TEST_SVH

import uvm_pkg::*;
`include "uvm_macros.svh"

class axi4_test extends uvm_test;
    `uvm_component_utils(axi4_test)

    axi4_env env;
    axi4_config cfg;

    function new(string name = "axi4_test", uvm_component parent);
        super.new(name, parent);
        $display("\n =========================== TEST NEW ===================================");
        `uvm_info("[TEST]", "Creating new Test class (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        env = axi4_env::type_id::create("env", this);
        cfg = axi4_config::type_id::create("cfg");

        // Grab virtual interface from configuration DB
        if(!uvm_config_db #(virtual axi4_uvm_bfm)::get(this, "", "vif", cfg.vif)) begin
            `uvm_fatal("[TEST]", "Could not retrieve virtual interface from config DB!")
        end
        
        // Pass the config down to the environment
        uvm_config_db #(axi4_config)::set(this, "*", "cfg", cfg);

        $display("\n =========================== TEST BUILD ===================================");
        `uvm_info(get_type_name(), "Inside axi4 TEST build phase (L)", UVM_LOW)
        $display("============================================================================\n");   
    endfunction

    virtual function void end_of_elaboration_phase(uvm_phase phase);
		super.end_of_elaboration_phase(phase);
		uvm_top.print_topology();	
	endfunction: end_of_elaboration_phase

    function void start_of_simulation_phase(uvm_phase phase);
        `uvm_info(get_type_name(), {"start of simulation for ", get_full_name()}, UVM_HIGH);
    endfunction : start_of_simulation_phase
    
endclass : axi4_test

`endif
