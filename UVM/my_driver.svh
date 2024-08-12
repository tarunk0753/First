class my_driver extends uvm_driver;
'uvm_component_utils(my_driver)

virtual intf intf_vi;

fucntion new(string name, uvm_component parent)
super.new(name, parent);
endfunction:new

function void build_phase (uvm_phase phase);

endfunction: build_phase

task run_phase(uvm_phase phase);
phase.raise_objection(this);

phase.drop_objection(this);

endtask:run_phase


