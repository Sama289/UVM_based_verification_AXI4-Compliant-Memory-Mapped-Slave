`ifndef ROUTER_TEST_SVH 
`define ROUTER_TEST_SVH

	import uvm_pkg::*;
	`include "uvm_macros.svh"

	`include "router_enviroment.sv"
	`include "router_sequence.sv"

	class router_test extends uvm_test;
		`uvm_component_utils(router_test)

		// For the building phase ::
		router_env env;
		router_sequence seq;

		// For creating new test classes ::
		function new(string name = "router_test", uvm_component parent);
			super.new(name, parent);
			$display("\n =========================== TEST NEW ===================================");
			`uvm_info("TEST","creating new TEST class (L)",UVM_LOW)
			`uvm_info("TEST","creating new TEST class (M)",UVM_MEDIUM)
			`uvm_info("TEST","creating new TEST class (H)",UVM_HIGH)
			`uvm_info("TEST","creating new TEST class (FULL)",UVM_FULL)
			$display("============================================================================\n");
	
		endfunction

		function void build_phase (uvm_phase phase);
			super.build_phase(phase);
			env = router_env::type_id::create("env", this);
			seq = router_sequence::type_id::create("seq",this);

			$display("\n =========================== TEST BUILD ===================================");
			`uvm_info(get_type_name()," Inside router TEST build phase (L)",UVM_LOW)
			`uvm_info(get_type_name()," Inside router TEST build phase (M)",UVM_MEDIUM)
			`uvm_info(get_type_name()," Inside router TEST build phase (H)",UVM_HIGH)
			`uvm_info(get_type_name()," Inside router TEST build phase (FULL)",UVM_FULL)
			$display("============================================================================\n");

		endfunction
	endclass 
	
`endif