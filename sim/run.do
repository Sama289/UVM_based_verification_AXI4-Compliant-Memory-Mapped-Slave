vlog +incdir+../uvm_codes -f axi4_files.txt
vsim -voptargs=+acc work.axi4_top +UVM_VERBOSITY=UVM_LOW
run -all