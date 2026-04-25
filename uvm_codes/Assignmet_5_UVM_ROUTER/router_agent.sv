`ifndef ROUTER_AGENT_SVH 
`define ROUTER_AGENT_SVH

	import uvm_pkg::*;
	`include "uvm_macros.svh"

	`include "router_sequencer.sv"
	`include "router_driver.sv"
	`include "router_monitor.sv"


	class router_agent extends uvm_agent;
		`uvm_component_utils(router_agent)

		// For the building phase ::
		router_sequencer sqr;
		router_driver drv;
		router_monitor mon;

		// For creating new test classes ::
		function new(string name = "router_agent", uvm_component parent);
			super.new(name, parent);

			$display("\n =========================== AGENT NEW ===================================");
			`uvm_info("agent","creating new agent class (L)",UVM_LOW)
			`uvm_info("agent","creating new agent class (M)",UVM_MEDIUM)
			`uvm_info("agent","creating new agent class (H)",UVM_HIGH)
			`uvm_info("agent","creating new agent class (FULL)",UVM_FULL)
			$display("============================================================================\n");

		endfunction

		function void build_phase (uvm_phase phase);
			super.build_phase(phase);
			sqr = router_sequencer::type_id::create("sqr", this);
			drv = router_driver::type_id::create("drv",this);
			mon = router_monitor::type_id::create("mon",this);

			$display("\n =========================== AGENT BUILD ===================================");
			`uvm_info(get_type_name()," Inside router AGENT build phase (L)",UVM_LOW)
			`uvm_info(get_type_name()," Inside router AGENT build phase (M)",UVM_MEDIUM)
			`uvm_info(get_type_name()," Inside router AGENT build phase (H)",UVM_HIGH)
			`uvm_info(get_type_name()," Inside router AGENT build phase (FULL)",UVM_FULL)
			$display("============================================================================\n"); 	
		endfunction
		
	endclass 
	

`endif