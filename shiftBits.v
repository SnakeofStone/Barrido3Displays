`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:40 04/21/2018 
// Design Name: 
// Module Name:    shiftBits 
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
module shiftBits(
	 input pulso,
	 input [2:0] iSegA,
	 input [2:0] iSegB,
	 input [2:0] iSegC,
	 input [2:0] iSegD,
	 input [2:0] iSegE,
	 input [2:0] iSegF,
	 input [2:0] iSegG,
	 output [2:0] oSegA,
	 output [2:0] oSegB,
	 output [2:0] oSegC,
	 output [2:0] oSegD,
	 output [2:0] oSegE,
	 output [2:0] oSegF,
	 output [2:0] oSegG
    );
/*	 
always @(posedge pulso)
begin
	iSegA << 1;
	iSegB << 1;
	iSegC << 1;
	iSegD << 1;
	iSegE << 1;
	iSegF << 1;
	iSegG << 1;
end*/

endmodule
