`ifndef AXI4_SEQUENCE_ITEMS_SVH
`define AXI4_SEQUENCE_ITEMS_SVH

class axi4_sequence_item extends uvm_sequence_item;
    `uvm_object_utils(axi4_sequence_item)

    function new(string name = "axi4_sequence_item");
        super.new(name);
        $display("\n =========================== SEQ ITEM NEW ===================================");
        `uvm_info("[SEQ_ITEM]", "Creating new Sequence Item (L)", UVM_LOW)
        $display("============================================================================\n"); 
    endfunction
endclass : axi4_sequence_item

`endif 