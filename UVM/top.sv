module top;
`include "uvm_macros.svh"
import uvm_pkg::*;
import my_pkg::;

//memory_if mem1();
//virtul intf h_intf;


intf h_intf(clk,rst);

TX_FINAL dut(.clk(h_intf.clk,
		))
initial
	clk =0;
forever #5 =clk=~clk;

begin

uvm_config_db #(virtual h_intf)::set(null, "uvm_test_top", "intf_vi", h_inf);

run_test("my_test");
end


endmodule: top
