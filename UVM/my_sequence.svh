class my_sequence extends uvm_sequence #(my_transaction);
`uvm_object_utils(my_sequence)

function new (string name);
super.new(name);
endfunction:new

task body:

forever 
begin

my_transaction tx;

tx=my_transaction::type_id::create("tx")l;
start_item(tx);
assert(tx.randomize());
finish_item(tx);

end

endtask:body
