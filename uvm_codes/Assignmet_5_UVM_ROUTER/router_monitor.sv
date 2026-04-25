`ifndef ROUTER_MONITOR_SVH
`define ROUTER_MONITOR_SVH

	`include "uvm_macros.svh"
	import uvm_pkg::*;

	class router_monitor extends uvm_monitor;
		`uvm_component_utils(router_monitor)

		function new(string name = "router_monitor", uvm_component parent);
			super.new(name,parent);
			$display("\n =========================== MONITOR NEW ===================================");
			`uvm_info("MONITOR","creating new MONITOR class (L)",UVM_LOW)
			`uvm_info("MONITOR","creating new MONITOR class (M)",UVM_MEDIUM)
			`uvm_info("MONITOR","creating new MONITOR class (H)",UVM_HIGH)
			`uvm_info("MONITOR","creating new MONITOR class (FULL)",UVM_FULL)
			$display("============================================================================ \n");

		endfunction 

		function void build_phase(uvm_phase phase);
			super.build_phase(phase);

			$display("\n =========================== MONITOR NEW ===================================");
			`uvm_info(get_type_name()," Inside router MONITOR build phase (L)",UVM_LOW)
			`uvm_info(get_type_name()," Inside router MONITOR build phase (M)",UVM_MEDIUM)
			`uvm_info(get_type_name()," Inside router MONITOR build phase (H)",UVM_HIGH)
			`uvm_info(get_type_name()," Inside router MONITOR build phase (FULL)",UVM_FULL)
			$display("============================================================================ \n");
				
		endfunction
	endclass	
	

`endif