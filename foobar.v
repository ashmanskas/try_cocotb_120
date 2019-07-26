
`timescale 1ns / 1ps
`default_nettype none

module foobar
(
 input  wire        clk,
 input  wire        reset,
 output wire [15:0] q
 );
    reg [15:0] qq = 0;
    always @ (posedge clk) begin
        if (reset) begin
            qq <= 0;
        end else begin
            qq <= qq + 1;
        end
    end
    assign q = qq;
endmodule

`default_nettype wire
