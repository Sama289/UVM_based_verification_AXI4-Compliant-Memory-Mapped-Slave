import uvm_pkg::*;
`include "uvm_macros.svh"

import axi4_enum::*;
import axi4_uvm_pkg::*;

module axi4_top;

    // Instantiate the BFM (Clock/Reset generated internally now)
    axi4_uvm_bfm axi4if ();

    // Pass the instantiated interface to DUT
    axi4 uut (
        .ACLK(axi4if.ACLK),
        .ARESETn(axi4if.ARESETn),

        // Write address channel
        .AWADDR(axi4if.AWADDR),
        .AWLEN(axi4if.AWLEN),
        .AWSIZE(axi4if.AWSIZE),
        .AWVALID(axi4if.AWVALID),
        .AWREADY(axi4if.AWREADY),

        // Write data channel
        .WDATA(axi4if.WDATA),
        .WVALID(axi4if.WVALID),
        .WLAST(axi4if.WLAST),
        .WREADY(axi4if.WREADY),

        // Write response channel
        .BRESP(axi4if.BRESP),
        .BVALID(axi4if.BVALID),
        .BREADY(axi4if.BREADY),

        // Read address channel
        .ARADDR(axi4if.ARADDR),
        .ARLEN(axi4if.ARLEN),
        .ARSIZE(axi4if.ARSIZE),
        .ARVALID(axi4if.ARVALID),
        .ARREADY(axi4if.ARREADY),

        // Read data channel
        .RDATA(axi4if.RDATA),
        .RRESP(axi4if.RRESP),
        .RVALID(axi4if.RVALID),
        .RLAST(axi4if.RLAST),
        .RREADY(axi4if.RREADY)
    );

    // Bind Assertions
    bind axi4 axi4_sva axi4_sva_inst (
        .ACLK(axi4.ACLK),
        .ARESETn(axi4.ARESETn),
        .AWADDR(axi4.AWADDR), 
        .ARADDR(axi4.ARADDR),
        .AWLEN(axi4.AWLEN),
        .AWSIZE(axi4.AWSIZE),    
        .AWVALID(axi4.AWVALID),
        .AWREADY(axi4.AWREADY),
        .WDATA(axi4.WDATA),
        .WVALID(axi4.WVALID),
        .WLAST(axi4.WLAST),
        .WREADY(axi4.WREADY),
        .BREADY(axi4.BREADY),
        .BVALID(axi4.BVALID),
        .BRESP(axi4.BRESP),
        .ARLEN(axi4.ARLEN),
        .ARSIZE(axi4.ARSIZE),
        .ARVALID(axi4.ARVALID),
        .ARREADY(axi4.ARREADY),
        .RREADY(axi4.RREADY),
        .RLAST(axi4.RLAST),
        .RVALID(axi4.RVALID),
        .RDATA(axi4.RDATA),
        .RRESP(axi4.RRESP)
    );

    initial begin
        // Set the virtual interface in the config DB
        uvm_config_db #(virtual axi4_uvm_bfm)::set(null, "*", "vif", axi4if);
        run_test("axi4_test");
    end

endmodule