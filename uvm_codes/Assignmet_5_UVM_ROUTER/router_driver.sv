`ifndef ROUTER_DRIVER_SVH
`define ROUTER_DRIVER_SVH

	`include "uvm_macros.svh"
	import uvm_pkg::*;

	class router_driver extends uvm_driver;
		`uvm_component_utils(router_driver)

		function new(string name = "router_driver", uvm_component parent);
			super.new(name,parent);
			$display("\n =========================== DRIVER NEW ===================================");
			`uvm_info("DRIVER","creating new DRIVER class (L)",UVM_LOW)
			`uvm_info("DRIVER","creating new DRIVER class (M)",UVM_MEDIUM)
			`uvm_info("DRIVER","creating new DRIVER class (H)",UVM_HIGH)
			`uvm_info("DRIVER","creating new DRIVER class (FULL)",UVM_FULL)
			$display("============================================================================ \n");

		endfunction 

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);

			$display("\n =========================== DRIVER BUILD ===================================");
			`uvm_info(get_type_name()," Inside router DRIVER build phase (L)",UVM_LOW)
			`uvm_info(get_type_name()," Inside router DRIVER build phase (M)",UVM_MEDIUM)
			`uvm_info(get_type_name()," Inside router DRIVER build phase (H)",UVM_HIGH)
			`uvm_info(get_type_name()," Inside router DRIVER build phase (FULL)",UVM_FULL)
			$display("============================================================================ \n");
	
		endfunction
	endclass	
	
`endif