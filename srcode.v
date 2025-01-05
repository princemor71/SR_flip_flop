`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2025 23:13:44
// Design Name: 
// Module Name: srcode
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module srcode(s,r,clk,q,qn);
output  q,qn;
input s,r,clk;
reg q,qn;
initial
begin q=1;qn=0; end
always @(posedge clk)
begin
case ({s,r})
2'b00:begin q =q; qn=qn; end
2'b01: begin q=1; qn=0; end
2'b10: begin q=0; qn=1; end 
2'b11 : begin q=1'bx; qn=1'bx; end
endcase
end 

endmodule
