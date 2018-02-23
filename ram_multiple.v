`timescale 1ns/1ps
module ram_multiple (shift_data_state, rstn, clk, in, ram_tmp_0, ram_tmp_1, ram_tmp_2, ram_tmp_3, ram_tmp_4, ram_tmp_5, ram_tmp_6, ram_tmp_7, ram_tmp_8, ram_tmp_9, ram_tmp_10, ram_tmp_11, ram_tmp_12, ram_tmp_13, ram_tmp_14, ram_tmp_15,ram_tmp_16,ram_tmp_17,ram_tmp_18,ram_tmp_19,ram_tmp_20,ram_tmp_21,ram_tmp_22,ram_tmp_23,ram_tmp_24,ram_tmp_25,ram_tmp_26,ram_tmp_27,ram_tmp_28,ram_tmp_29,ram_tmp_30,ram_tmp_31,ram_tmp_32);

input rstn, clk, shift_data_state;
input [28:0] in;

output reg [28:0] ram_tmp_0;
output reg [28:0] ram_tmp_1;
output reg [28:0] ram_tmp_2;
output reg [28:0] ram_tmp_3;
output reg [28:0] ram_tmp_4;
output reg [28:0] ram_tmp_5;
output reg [28:0] ram_tmp_6;
output reg [28:0] ram_tmp_7;
output reg [28:0] ram_tmp_8;
output reg [28:0] ram_tmp_9;
output reg [28:0] ram_tmp_10;
output reg [28:0] ram_tmp_11;
output reg [28:0] ram_tmp_12;
output reg [28:0] ram_tmp_13;
output reg [28:0] ram_tmp_14;
output reg [28:0] ram_tmp_15;
output reg [28:0] ram_tmp_16;
output reg [28:0] ram_tmp_17;
output reg [28:0] ram_tmp_18;
output reg [28:0] ram_tmp_19;
output reg [28:0] ram_tmp_20;
output reg [28:0] ram_tmp_21;
output reg [28:0] ram_tmp_22;
output reg [28:0] ram_tmp_23;
output reg [28:0] ram_tmp_24;
output reg [28:0] ram_tmp_25;
output reg [28:0] ram_tmp_26;
output reg [28:0] ram_tmp_27;
output reg [28:0] ram_tmp_28;
output reg [28:0] ram_tmp_29;
output reg [28:0] ram_tmp_30;
output reg [28:0] ram_tmp_31;
output reg [28:0] ram_tmp_32;

//********************** Shift Register Storage ***********************//
    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_0 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_0 <=   in;
    else
	ram_tmp_0 <=   ram_tmp_0;
    end  


    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_1 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_1 <=   ram_tmp_0;
    else
	ram_tmp_1 <=   ram_tmp_1;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_2 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_2 <=   ram_tmp_1;
    else
	ram_tmp_2 <=   ram_tmp_2;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_3 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_3 <=   ram_tmp_2;
    else
	ram_tmp_3 <=   ram_tmp_3;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_4 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_4 <=   ram_tmp_3;
    else
	ram_tmp_4 <=   ram_tmp_4;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_5 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_5 <=   ram_tmp_4;
    else
	ram_tmp_5 <=   ram_tmp_5;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_6 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_6 <=   ram_tmp_5;
    else
	ram_tmp_6 <=   ram_tmp_6;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_7 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_7 <=   ram_tmp_6;
    else
	ram_tmp_7 <=   ram_tmp_7;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_8 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_8 <=   ram_tmp_7;
    else
	ram_tmp_8 <=   ram_tmp_8;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_9 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_9 <=   ram_tmp_8;
    else
	ram_tmp_9 <=   ram_tmp_9;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_10 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_10 <=   ram_tmp_9;
    else
	ram_tmp_10 <=   ram_tmp_10;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_11 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_11 <=   ram_tmp_10;
    else
	ram_tmp_11 <=   ram_tmp_11;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_12 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_12 <=   ram_tmp_11;
    else
	ram_tmp_12 <=   ram_tmp_12;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_13 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_13 <=   ram_tmp_12;
    else
	ram_tmp_13 <=   ram_tmp_13;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_14 <=   30'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_14 <=   ram_tmp_13;
    else
	ram_tmp_14 <=   ram_tmp_14;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_15 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_15 <=   ram_tmp_14;
    else
	ram_tmp_15 <=   ram_tmp_15;
    end
	
	always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_16 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_16 <=   ram_tmp_15;
    else
	ram_tmp_16 <=   ram_tmp_16;
    end
	
	always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_17 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_17 <=   ram_tmp_16;
    else
	ram_tmp_17 <=   ram_tmp_17;
    end  


    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_18 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_18 <=   ram_tmp_17;
    else
	ram_tmp_18 <=   ram_tmp_18;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_19 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_19 <=   ram_tmp_18;
    else
	ram_tmp_19 <=   ram_tmp_19;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_20 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_20 <=   ram_tmp_19;
    else
	ram_tmp_20 <=   ram_tmp_20;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_21 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_21 <=   ram_tmp_20;
    else
	ram_tmp_21 <=   ram_tmp_21;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_22 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_22 <=   ram_tmp_21;
    else
	ram_tmp_22 <=   ram_tmp_22;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_23 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_23 <=   ram_tmp_22;
    else
	ram_tmp_23 <=   ram_tmp_23;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_24 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_24 <=   ram_tmp_23;
    else
	ram_tmp_24 <=   ram_tmp_24;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_25 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_25 <=   ram_tmp_24;
    else
	ram_tmp_25 <=   ram_tmp_25;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_26 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_26 <=   ram_tmp_25;
    else
	ram_tmp_26 <=   ram_tmp_26;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_27 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_27 <=   ram_tmp_26;
    else
	ram_tmp_27 <=   ram_tmp_27;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_28 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_28 <=   ram_tmp_27;
    else
	ram_tmp_28 <=   ram_tmp_28;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_29 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_29 <=   ram_tmp_28;
    else
	ram_tmp_29 <=   ram_tmp_29;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_30 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_30 <=   ram_tmp_29;
    else
	ram_tmp_30 <=   ram_tmp_30;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_31 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_31 <=   ram_tmp_30;
    else
	ram_tmp_31 <=   ram_tmp_31;
    end    

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 1'b0)
        ram_tmp_32 <=   29'd0;
    else if (shift_data_state == 1'b1)
        ram_tmp_32 <=   ram_tmp_31;
    else
	ram_tmp_32 <=   ram_tmp_32;
    end
	


endmodule
