`ifndef COMMON_CONFIG_CLASS_SVH
`define COMMON_CONFIG_CLASS_SVH

class axi4_config extends uvm_object;
    `uvm_object_utils(axi4_config)

    virtual axi4_uvm_bfm vif;

    function new(string name = "axi4_config");
        super.new(name);
        $display("\n =========================== CONFIG NEW ===================================");
        `uvm_info("CFG", "Creating new Config Object (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction
endclass : axi4_config

`endif