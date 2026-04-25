`ifndef ROUTER_ENV_SVH 
`define ROUTER_ENV_SVH

	import uvm_pkg::*;
	`include "uvm_macros.svh"

	`include "router_agent.sv"
	`include "router_coverage.sv"
	`include "router_scoreboard.sv"


	class router_env extends uvm_env;
		`uvm_component_utils(router_env)

		// For the building phase ::
		router_agent agt;
		router_scoreboard scb;
		router_coverage cov;

		// For creating new test classes ::
		function new(string name = "router_env", uvm_component parent);
			super.new(name, parent);

			$display("\n =========================== ENVIROMENT NEW ===================================");
			`uvm_info("ENV","creating new ENV class (L)",UVM_LOW)
			`uvm_info("ENV","creating new ENV class (M)",UVM_MEDIUM)
			`uvm_info("ENV","creating new ENV class (H)",UVM_HIGH)
			`uvm_info("ENV","creating new ENV class (FULL)",UVM_FULL)
			$display("============================================================================\n");	
		endfunction

		function void build_phase (uvm_phase phase);
			super.build_phase(phase);
			agt = router_agent::type_id::create("agt", this);
			scb = router_scoreboard::type_id::create("scb",this);
			cov = router_coverage::type_id::create("cov",this);

			$display("\n =========================== ENVIROMENT BUILD ===================================");
			`uvm_info(get_type_name()," Inside router ENV build phase (L)",UVM_LOW)
			`uvm_info(get_type_name()," Inside router ENV build phase (M)",UVM_MEDIUM)
			`uvm_info(get_type_name()," Inside router ENV build phase (H)",UVM_HIGH)
			`uvm_info(get_type_name()," Inside router ENV build phase (FULL)",UVM_FULL)
			$display("============================================================================\n");
				
		endfunction

	endclass 
	

`endif