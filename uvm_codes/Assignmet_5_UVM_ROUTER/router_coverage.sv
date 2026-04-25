`ifndef ROUTER_COVERAGE_SVH 
`define ROUTER_COVERAGE_SVH

	import uvm_pkg::*;
	`include "uvm_macros.svh"

	class router_coverage extends uvm_component;
		`uvm_component_utils(router_coverage)

		function new(string name = "router_coverage", uvm_component parent);
			super.new(name,parent);

			$display("\n =========================== COVERAGE NEW ===================================");
			`uvm_info("COVERAGE","creating new COVERAGE class (L)",UVM_LOW)
			`uvm_info("COVERAGE","creating new COVERAGE class (M)",UVM_MEDIUM)
			`uvm_info("COVERAGE","creating new COVERAGE class (H)",UVM_HIGH)
			`uvm_info("COVERAGE","creating new COVERAGE class (FULL)",UVM_FULL)
			$display("============================================================================\n");

		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			
			$display("\n =========================== COVERAGE NEW ===================================");			
			`uvm_info(get_type_name()," Inside router COVERAGE build phase (L)",UVM_LOW)
			`uvm_info(get_type_name()," Inside router COVERAGE build phase (M)",UVM_MEDIUM)
			`uvm_info(get_type_name()," Inside router COVERAGE build phase (H)",UVM_HIGH)
			`uvm_info(get_type_name()," Inside router COVERAGE build phase (FULL)",UVM_FULL)
			$display("============================================================================\n");
		endfunction

	endclass

`endif