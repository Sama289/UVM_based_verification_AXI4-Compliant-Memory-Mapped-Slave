`ifndef AXI4_UVM_BFM_SV
`define AXI4_UVM_BFM_SV

interface axi4_uvm_bfm #(
    parameter DATA_WIDTH   = 32,
    parameter DEPTH        = 1024,
    parameter ADDR_WIDTH_S = 16,
    parameter ADDR_WIDTH_M = 10
);

    // -------- Clock and Reset Generation --------
    bit ACLK;
    bit ARESETn;

    parameter  clk_period  = 10;
    parameter  High_period = 0.5 * clk_period;
    parameter  Low_period  = 0.5 * clk_period;

    initial begin
        ACLK = 0;
        forever begin
            #Low_period  ACLK = ~ACLK;
            #High_period ACLK = ~ACLK;
        end
    end

    task reset_dut();
        ARESETn = 0;
        @(negedge ACLK);
        ARESETn = 1;
    endtask
    // --------------------------------------------

    // Memory signals 
    logic                     mem_en;
    logic                     mem_we;
    logic [ADDR_WIDTH_M-1:0]  mem_addr;
    logic [DATA_WIDTH-1:0]    mem_wdata;
    logic [DATA_WIDTH-1:0]    mem_rdata;

    // Slave Signals
    logic [ADDR_WIDTH_S -1:0] AWADDR, ARADDR;
    logic [7:0]               AWLEN, ARLEN;
    logic [2:0]               AWSIZE, ARSIZE;
    logic                     AWVALID, AWREADY;
    
    logic                     WVALID, WREADY, WLAST;
    logic [DATA_WIDTH-1:0]    WDATA;
    
    logic                     BVALID, BREADY;
    logic [1:0]               BRESP;
    
    logic                     ARVALID, ARREADY;
    
    logic                     RVALID, RREADY, RLAST;
    logic [DATA_WIDTH-1:0]    RDATA;
    logic [1:0]               RRESP;

    modport TB (
        output AWADDR, AWLEN, AWSIZE, AWVALID,
        output WDATA, WVALID, WLAST,
        output BREADY,
        output ARADDR, ARLEN, ARSIZE, ARVALID,
        output RREADY,
        
        input ACLK, ARESETn,
        input AWREADY,
        input WREADY,
        input BVALID, BRESP,
        input ARREADY,
        input RVALID, RDATA, RRESP, RLAST
    );

endinterface
`endif