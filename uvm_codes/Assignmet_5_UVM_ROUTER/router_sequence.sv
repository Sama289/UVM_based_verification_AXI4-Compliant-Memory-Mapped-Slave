`ifndef ROUTER_SEQUENCE_SVH 
`define ROUTER_SEQUENCE_SVH
	
	import uvm_pkg::*;
	`include "uvm_macros.svh"

	class router_sequence extends uvm_sequence;
		`uvm_object_utils(router_sequence)

		function new(string name = "router_sequence");
			super.new(name);

			$display("\n =========================== SEQUENCE NEW ===================================");
			`uvm_info("SEQUENCE","creating new sequence class (L)",UVM_LOW)
			`uvm_info("SEQUENCE","creating new sequence class (M)",UVM_MEDIUM)
			`uvm_info("SEQUENCE","creating new sequence class (H)",UVM_HIGH)
			`uvm_info("SEQUENCE","creating new sequence class (FULL)",UVM_FULL)
			$display("============================================================================\n");
		endfunction

	endclass 
	

`endif