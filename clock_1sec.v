`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:10:02 04/20/2018 
// Design Name: 
// Module Name:    clock_1sec 
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
module clock_1sec(
	input clk,
	output reg Y
    );

// Declare a 28-bit array for the clock counter
reg [29:0] counter = 1'b0;

// Adder always at the positive edge of the clock
always @(posedge clk)
begin
	if(counter == 100000000)
		counter <= 0;
	else 
		counter <= counter + 1'd1;
end

// Assign the output when counter equals 5000000000 as the frequency of the clock 
always @(counter)
begin
	if(counter == 100000000)
		Y <= 1;
	else
		Y <= 0;
end

endmodule
