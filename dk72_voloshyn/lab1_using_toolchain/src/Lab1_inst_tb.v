// Generated by Quartus II 64-Bit Version 13.0 (Build Build 232 06/12/2013)
// Created on Mon Sep  9 11:12:01 2019

`timescale 1ns/1ps

module tests;

reg arstn_sig;
reg srstn_sig;
reg clk_sig;
reg we_sig;
reg [31:0] data_sig;
wire [31:0] Q_sig;


Lab1 Lab1_inst_tb
(
	.data(data_sig) ,	// input [31:0] data_sig
	.arstn(arstn_sig) ,	// input  arstn_sig
	.srstn(srstn_sig) ,	// input  srstn_sig
	.clk(clk_sig) ,	// input  clk_sig
	.we(we_sig) ,	// input  we_sig
	.Q(Q_sig) 	// output [31:0] Q_sig
);

initial begin
	clk_sig = 1'b0;
	forever #1 clk_sig = ~clk_sig;
end

initial begin
	arstn_sig = 1'b1;
	srstn_sig = 1'b1;
	we_sig = 1'b1;

	#2 arstn_sig = 1'b0;
	#2 arstn_sig = 1'b1;

	#10 srstn_sig = 1'b0;
	#5 srstn_sig = 1'b1;
end	

initial begin
	data_sig = 32'h12345678;
	#20 data_sig = 32'h14881488;
	#40 data_sig = 32'h22822811; 
end

initial begin
	#100 $stop();
end

endmodule
