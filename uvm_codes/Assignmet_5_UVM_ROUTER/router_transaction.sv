`ifndef ROUTER_TRANSACTION_SVH 
`define ROUTER_TRANSACTION_SVH // to avoid multiple inclusion issues , if its inculded it will not define it  
	
	import uvm_pkg::*;
	`include "uvm_macros.svh"

	class router_transaction extends uvm_sequence_item;

		// Define Signals

		// Inputs to randomize ::
		rand logic   [7:0] data_in0;
  		rand logic   [7:0] data_in1;
  		rand logic   [7:0] data_in2;
  		rand logic   [7:0] data_in3;
  		rand logic         valid_in0;
  		rand logic         valid_in1;
  		rand logic         valid_in2;
  		rand logic         valid_in3;

  		// Outputs ::
  		logic  [7:0]  data_out0;
  		logic  [7:0]  data_out1;
  		logic         valid_out0;
  		logic         valid_out1;

  		/*--------------------------------------------------------
  		Factory Registeration ::
  		 - registerate class in factory so it can be created, to make UVM see it so when I need to make operations on it , I could 
  		 - Tells UVM how to construct objects of class via factory , enabling reusability and override 
  		----------------------------------------------------------*/

  		`uvm_object_utils_begin(router_transaction)

  			// to be able to use uvm_object methods in processing my data ::
  			`uvm_field_int( data_in0, UVM_DEFAULT)
  			`uvm_field_int( data_in1, UVM_DEFAULT)
  			`uvm_field_int( data_in2, UVM_DEFAULT)
  			`uvm_field_int( data_in3, UVM_DEFAULT)
  			`uvm_field_int( valid_in0, UVM_DEFAULT)
  			`uvm_field_int( valid_in1, UVM_DEFAULT)
  			`uvm_field_int( valid_in2, UVM_DEFAULT)
  			`uvm_field_int( valid_in3, UVM_DEFAULT)

  		`uvm_object_utils_end

  		// Function new , which Actually creates the Object :: 
		function new(string name = "router_transaction");
			super.new(name);
			$display("\n =========================== SEQUENCE_ITEM NEW ===================================");
			`uvm_info("SEQUENCE_item","creating new sequence_item class (L)",UVM_LOW)
			`uvm_info("SEQUENCE_item","creating new sequence_item class (M)",UVM_MEDIUM)
			`uvm_info("SEQUENCE_item","creating new sequence_item class (H)",UVM_HIGH)
			`uvm_info("SEQUENCE_item","creating new sequence_item class (FULL)",UVM_FULL)
			$display("====================================================================================\n");
			
		endfunction

	endclass

`endif