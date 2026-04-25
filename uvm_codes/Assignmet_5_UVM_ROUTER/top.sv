import uvm_pkg::*;
`include "uvm_macros.svh"

	import router_pkg::*;
	`include "router_if.sv"

module top;

	router_if routerif();

	// DUT Instantiation ::
	router dut (  
  		.clk (routerif.clk),
  		.rst_n (routerif.rst_n),
        .data_in0 (routerif.data_in0),
        .data_in1 (routerif.data_in1),
        .data_in2 (routerif.data_in2),
        .data_in3 (routerif.data_in3),
        .valid_in0 (routerif.valid_in0),
        .valid_in1 (routerif.valid_in1),
        .valid_in2 (routerif.valid_in2),
        .valid_in3 (routerif.valid_in3),
        .data_out0 (routerif.data_out0),
        .data_out1 (routerif.data_out1),
        .valid_out0 (routerif.valid_out0),
        .valid_out1 (routerif.valid_out1)
    );

	// Clock generation ::
	initial begin
		routerif.clk = 0;
		forever begin
			#2 routerif.clk = ~routerif.clk;
		end
	end

	// Rest ::
	initial begin
		routerif.rst_n = 0;
		#2 routerif.rst_n = 1;
	end

	// RUN TEST ::
	initial begin
		$display("DEFAULT VERRBOSITY LEVEL IS %0d ",uvm_top.get_report_verbosity_level);
		run_test("router_test");
	end

endmodule