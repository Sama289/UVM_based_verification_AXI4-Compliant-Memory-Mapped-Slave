vlog -f router_files.txt
vsim -voptargs=+acc work.top +UVM_VERBOSITY=UVM_DEBUG
run -all