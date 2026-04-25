`ifndef ROUTER_SEQUENCER_SVH
`define ROUTER_SEQUENCER_SVH

	import uvm_pkg::*;
	`include "uvm_macros.svh"

	class router_sequencer extends uvm_sequencer;
		`uvm_component_utils(router_sequencer)

		function new(string name = "router_sequencer", uvm_component parent);
			super.new(name,parent);

			$display("\n =========================== SEQUENCER NEW ===================================");
			`uvm_info("SQR","creating new SQR class (L)",UVM_LOW)
			`uvm_info("SQR","creating new SQR class (M)",UVM_MEDIUM)
			`uvm_info("SQR","creating new SQR class (H)",UVM_HIGH)
			`uvm_info("SQR","creating new SQR class (FULL)",UVM_FULL)
			$display("============================================================================\n");	
		endfunction 

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);

			$display("\n =========================== SEQUENCER BUILD===================================");
			`uvm_info(get_type_name()," Inside router SQR build phase (L)",UVM_LOW)
			`uvm_info(get_type_name()," Inside router SQR build phase (M)",UVM_MEDIUM)
			`uvm_info(get_type_name()," Inside router SQR build phase (H)",UVM_HIGH)
			`uvm_info(get_type_name()," Inside router SQR build phase (FULL)",UVM_FULL)
			$display("============================================================================\n");	 	
		endfunction
	endclass

`endif