class my_env extends uvm_env;
`uvm_component_utils(my_env)

//my_env my_env_h;

fucntion new(string name, uvm_component parent)
super.new(name, parent);
endfunction:new

function void build_phase(uvm_phase phase);
super.buil;d_phase(phase);
endfunction:build_phase

task run_phase(uvm_phase phase);

endtask: run_phase
