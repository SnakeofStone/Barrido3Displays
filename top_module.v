`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:09:30 04/20/2018 
// Design Name: 
// Module Name:    top_module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_module(
	input clk,
	input [6:0] selector,
	input enable,
	output reg [2:0] osegA,
	output reg [2:0] osegB,
	output reg [2:0] osegC,
	output reg [2:0] osegD,
	output reg [2:0] osegE,
	output reg [2:0] osegF,
	output reg [2:0] osegG,
	output reg reloj
    );
	 
// Initiate temporary vectors	for the segments
reg [2:0] segA;
reg [2:0] segB;
reg [2:0] segC;
reg [2:0] segD;
reg [2:0] segE;
reg [2:0] segF;
reg [2:0] segG;
	 
// Define initial values for the segment vectors
initial
begin
	segA = 3'b000;
	segB = 3'b000;
	segC = 3'b000;
	segD = 3'b000;
	segE = 3'b000;
	segF = 3'b000;
	segG = 3'b000;
end
	 
// Wire veriable type for the ticking second	 
wire pulso;

clock_1sec pulso1seg(clk, pulso);

always @(posedge pulso)
begin
	if(reloj == 0)
		reloj = 1;
	else
		reloj = 0;
	
	osegA <= segA;
	osegB <= segB;
	osegC <= segC;
	osegD <= segD;
	osegE <= segE;
	osegF <= segF;
	osegG <= segG;
	
	if(enable)
	begin
		segA = segA << 1;
		segB = segB << 1;
		segC = segC << 1;
		segD = segD << 1;
		segE = segE << 1;
		segF = segF << 1;
		segG = segG << 1;
		
		segA[0] = selector[0];
		segB[0] = selector[1];
		segC[0] = selector[2];
		segD[0] = selector[3];
		segE[0] = selector[4];
		segF[0] = selector[5];
		segG[0] = selector[6];
	end
	
	/*
	if(segA == 0)
		segA = 3'b001;
		
	if(segB == 0)
		segB = 3'b001;
		
	if(segC == 0)
		segC = 3'b001;
		
	if(segD == 0)
		segD = 3'b001;
		
	if(segE == 0)
		segE = 3'b001;
		
	if(segF == 0)
		segF = 3'b001;
		
	if(segG == 0)
		segG= 3'b001;*/
		
end

endmodule 