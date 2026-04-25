`ifndef ROUTER_SCOREBOARD_SVH 
`define ROUTER_SCOREBOARD_SVH

	import uvm_pkg::*;
	`include "uvm_macros.svh"

	class router_scoreboard extends uvm_scoreboard;
		`uvm_component_utils(router_scoreboard)

		function new(string name = "router_scoreboard", uvm_component parent);
			super.new(name,parent);
			$display("\n =========================== SCOREBOARD NEW ===================================");
			`uvm_info("SCOREBOARD","creating new SCOREBOARD class (L)",UVM_LOW)
			`uvm_info("SCOREBOARD","creating new SCOREBOARD class (M)",UVM_MEDIUM)
			`uvm_info("SCOREBOARD","creating new SCOREBOARD class (H)",UVM_HIGH)
			`uvm_info("SCOREBOARD","creating new SCOREBOARD class (FULL)",UVM_FULL)
			$display("============================================================================\n");

		endfunction

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);
			$display("\n =========================== SCOREBOARD BUILD ===================================");			
			`uvm_info(get_type_name()," Inside router SCOREBOARD build phase (L)",UVM_LOW)
			`uvm_info(get_type_name()," Inside router SCOREBOARD build phase (M)",UVM_MEDIUM)
			`uvm_info(get_type_name()," Inside router SCOREBOARD build phase (H)",UVM_HIGH)
			`uvm_info(get_type_name()," Inside router SCOREBOARD build phase (FULL)",UVM_FULL)
			$display("============================================================================\n");
			
		endfunction

	endclass

`endif