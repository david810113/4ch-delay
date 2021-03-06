`timescale 1ns/1ps
module alog_top (rstn, clk,buffer_2,buffer_3,reff,head_flag,dout/*,weight_2_in_0,weight_2_in_1,weight_2_in_2,weight_2_in_3,weight_2_in_4,weight_2_in_5,weight_2_in_6,weight_2_in_7,weight_2_in_8,weight_2_in_9,weight_2_in_10,weight_2_in_11,weight_2_in_12,weight_2_in_13,weight_2_in_14,weight_2_in_15,weight_2_in_16,weight_2_in_17,weight_2_in_18,weight_2_in_19,weight_2_in_20,weight_2_in_21,weight_2_in_22,weight_2_in_23,weight_2_in_24,weight_2_in_25,weight_2_in_26,weight_2_in_27,weight_2_in_28,weight_2_in_29,weight_2_in_30,weight_2_in_31*/);
input rstn, clk, head_flag;
input [13:0] buffer_2,buffer_3,reff;

//output [13:0]weight_2_in_0,weight_2_in_1,weight_2_in_2,weight_2_in_3,weight_2_in_4,weight_2_in_5,weight_2_in_6,weight_2_in_7,weight_2_in_8,weight_2_in_9,weight_2_in_10,weight_2_in_11,weight_2_in_12,weight_2_in_13,weight_2_in_14,weight_2_in_15,weight_2_in_16,weight_2_in_17,weight_2_in_18,weight_2_in_19,weight_2_in_20,weight_2_in_21,weight_2_in_22,weight_2_in_23,weight_2_in_24,weight_2_in_25,weight_2_in_26,weight_2_in_27,weight_2_in_28,weight_2_in_29,weight_2_in_30,weight_2_in_31;
output reg [13:0] dout;
wire [13:0]d_2, d_3;
wire [13:0]e_2, e_3;
wire [31:0]n_2,n_3;
wire [13:0] buffer_2_in_0;
wire [13:0] buffer_2_in_1;
wire [13:0] buffer_2_in_2;
wire [13:0] buffer_2_in_3;
wire [13:0] buffer_2_in_4;
wire [13:0] buffer_2_in_5;
wire [13:0] buffer_2_in_6;
wire [13:0] buffer_2_in_7;
wire [13:0] buffer_2_in_8;
wire [13:0] buffer_2_in_9;
wire [13:0] buffer_2_in_10;
wire [13:0] buffer_2_in_11;
wire [13:0] buffer_2_in_12;
wire [13:0] buffer_2_in_13;
wire [13:0] buffer_2_in_14;
wire [13:0] buffer_2_in_15;
wire [13:0] buffer_2_in_16;
wire [13:0] buffer_2_in_17;
wire [13:0] buffer_2_in_18;
wire [13:0] buffer_2_in_19;
wire [13:0] buffer_2_in_20;
wire [13:0] buffer_2_in_21;
wire [13:0] buffer_2_in_22;
wire [13:0] buffer_2_in_23;
wire [13:0] buffer_2_in_24;
wire [13:0] buffer_2_in_25;
wire [13:0] buffer_2_in_26;
wire [13:0] buffer_2_in_27;
wire [13:0] buffer_2_in_28;
wire [13:0] buffer_2_in_29;
wire [13:0] buffer_2_in_30;
wire [13:0] buffer_2_in_31;
wire [13:0] buffer_2_in_32;
wire [13:0] buffer_2_in_33;
wire [13:0] buffer_2_in_34;
wire [13:0] buffer_2_in_35;
wire [13:0] buffer_2_in_36;
wire [13:0] buffer_2_in_37;
wire [13:0] buffer_2_in_38;
wire [13:0] buffer_2_in_39;
wire [13:0] buffer_2_in_40;
wire [13:0] buffer_2_in_41;
wire [13:0] buffer_2_in_42;

wire [13:0] buffer_3_in_0;
wire [13:0] buffer_3_in_1;
wire [13:0] buffer_3_in_2;
wire [13:0] buffer_3_in_3;
wire [13:0] buffer_3_in_4;
wire [13:0] buffer_3_in_5;
wire [13:0] buffer_3_in_6;
wire [13:0] buffer_3_in_7;
wire [13:0] buffer_3_in_8;
wire [13:0] buffer_3_in_9;
wire [13:0] buffer_3_in_10;
wire [13:0] buffer_3_in_11;
wire [13:0] buffer_3_in_12;
wire [13:0] buffer_3_in_13;
wire [13:0] buffer_3_in_14;
wire [13:0] buffer_3_in_15;
wire [13:0] buffer_3_in_16;
wire [13:0] buffer_3_in_17;
wire [13:0] buffer_3_in_18;
wire [13:0] buffer_3_in_19;
wire [13:0] buffer_3_in_20;
wire [13:0] buffer_3_in_21;
wire [13:0] buffer_3_in_22;
wire [13:0] buffer_3_in_23;
wire [13:0] buffer_3_in_24;
wire [13:0] buffer_3_in_25;
wire [13:0] buffer_3_in_26;
wire [13:0] buffer_3_in_27;
wire [13:0] buffer_3_in_28;
wire [13:0] buffer_3_in_29;
wire [13:0] buffer_3_in_30;
wire [13:0] buffer_3_in_31;
wire [13:0] buffer_3_in_32;
wire [13:0] buffer_3_in_33;
wire [13:0] buffer_3_in_34;
wire [13:0] buffer_3_in_35;
wire [13:0] buffer_3_in_36;
wire [13:0] buffer_3_in_37;
wire [13:0] buffer_3_in_38;
wire [13:0] buffer_3_in_39;
wire [13:0] buffer_3_in_40;
wire [13:0] buffer_3_in_41;
wire [13:0] buffer_3_in_42;

wire [15:0] weight_2_in_0;
wire [15:0] weight_2_in_1;
wire [15:0] weight_2_in_2;
wire [15:0] weight_2_in_3;
wire [15:0] weight_2_in_4;
wire [15:0] weight_2_in_5;
wire [15:0] weight_2_in_6;
wire [15:0] weight_2_in_7;
wire [15:0] weight_2_in_8;
wire [15:0] weight_2_in_9;
wire [15:0] weight_2_in_10;
wire [15:0] weight_2_in_11;
wire [15:0] weight_2_in_12;
wire [15:0] weight_2_in_13;
wire [15:0] weight_2_in_14;
wire [15:0] weight_2_in_15;
wire [15:0] weight_2_in_16;
wire [15:0] weight_2_in_17;
wire [15:0] weight_2_in_18;
wire [15:0] weight_2_in_19;
wire [15:0] weight_2_in_20;
wire [15:0] weight_2_in_21;
wire [15:0] weight_2_in_22;
wire [15:0] weight_2_in_23;
wire [15:0] weight_2_in_24;
wire [15:0] weight_2_in_25;
wire [15:0] weight_2_in_26;
wire [15:0] weight_2_in_27;
wire [15:0] weight_2_in_28;
wire [15:0] weight_2_in_29;
wire [15:0] weight_2_in_30;
wire [15:0] weight_2_in_31;

wire [15:0] weight_3_in_0;
wire [15:0] weight_3_in_1;
wire [15:0] weight_3_in_2;
wire [15:0] weight_3_in_3;
wire [15:0] weight_3_in_4;
wire [15:0] weight_3_in_5;
wire [15:0] weight_3_in_6;
wire [15:0] weight_3_in_7;
wire [15:0] weight_3_in_8;
wire [15:0] weight_3_in_9;
wire [15:0] weight_3_in_10;
wire [15:0] weight_3_in_11;
wire [15:0] weight_3_in_12;
wire [15:0] weight_3_in_13;
wire [15:0] weight_3_in_14;
wire [15:0] weight_3_in_15;
wire [15:0] weight_3_in_16;
wire [15:0] weight_3_in_17;
wire [15:0] weight_3_in_18;
wire [15:0] weight_3_in_19;
wire [15:0] weight_3_in_20;
wire [15:0] weight_3_in_21;
wire [15:0] weight_3_in_22;
wire [15:0] weight_3_in_23;
wire [15:0] weight_3_in_24;
wire [15:0] weight_3_in_25;
wire [15:0] weight_3_in_26;
wire [15:0] weight_3_in_27;
wire [15:0] weight_3_in_28;
wire [15:0] weight_3_in_29;
wire [15:0] weight_3_in_30;
wire [15:0] weight_3_in_31;

wire [13:0] reff_0;
wire [13:0] reff_1;
wire [13:0] reff_2;
wire [13:0] reff_3;
wire [13:0] reff_4;
wire [13:0] reff_5;
wire [13:0] reff_6;
wire [13:0] reff_7;
wire [13:0] reff_8;
wire [13:0] reff_9;
wire [13:0] reff_10;
wire [13:0] reff_11;
wire [13:0] reff_12;
wire [13:0] reff_13;
wire [13:0] reff_14;
wire [13:0] reff_15;
wire [13:0] reff_16;
wire [13:0] reff_17;
wire [13:0] reff_18;
wire [13:0] reff_19;
wire [13:0] reff_20;
wire [13:0] reff_21;
wire [13:0] reff_22;
wire [13:0] reff_23;
wire [13:0] reff_24;
wire [13:0] reff_25;
wire [13:0] reff_26;
wire [13:0] reff_27;
wire [13:0] reff_28;
wire [13:0] reff_29;
wire [13:0] reff_30;
wire [13:0] reff_31;
wire [13:0] reff_32;
wire [13:0] reff_33;
wire [13:0] reff_34;
wire [13:0] reff_35;
wire [13:0] reff_36;
wire [13:0] reff_37;
wire [13:0] reff_38;
wire [13:0] reff_39;
wire [13:0] reff_40;
wire [13:0] reff_41;
wire [13:0] reff_42;

reg [11:0]counter, counter_pre;
//wire adap_filter_state, weight_cal_state, shift_data_state, stop_state,stb_state, start_state;
reg [5:0]curr_state, next_state;
reg stop_state, stb_state, adap_filter_state, weight_cal_state, shift_data_state,div_state;

//********************** Assign State ***********************//
    always @(posedge clk or negedge rstn)
    begin
        if (rstn == 0)
             {stb_state, shift_data_state,div_state, weight_cal_state, adap_filter_state, stop_state} <=   6'd0;
   	else
		{stb_state, shift_data_state,div_state, weight_cal_state, adap_filter_state, stop_state} <=   curr_state;
    end

/*
assign stop_state = curr_state[0];
assign stb_state = curr_state[4];
assign adap_filter_state = curr_state[1];
assign weight_cal_state = curr_state[2];
assign shift_data_state = curr_state[3];
*/

//********************** Counter ***********************//
    always @(posedge clk or negedge rstn)
    begin
        if (rstn == 0)
             counter_pre <=   12'd0;
        else if (counter_pre == 12'd1190)
             counter_pre <=   12'd0;
	else if (stop_state | stb_state)
		counter_pre <=   12'd0;
	else
		counter_pre <=   counter_pre + 12'd1;
    end	

	
    always @(posedge clk or negedge rstn)
    begin
        if (rstn == 0)
             counter <=   12'd0;
   	else
		counter <=   counter_pre;
    end

//**********************state mechine***********************//
    always @(posedge clk or negedge rstn)
    begin
        if (rstn == 0)
             curr_state <=   6'd1;
        else 
             curr_state <=   next_state;
    end

// next state logic

  always@(*)
    case (curr_state) 
    6'd1      : if (head_flag) 		next_state = 6'd2;
           		     else        next_state = 6'd1;
    6'd2      : if (counter == 12'd32) next_state = 6'd4;
            		     else        next_state = 6'd2;
    6'd4      : if (counter == 12'd65) next_state = 6'd8;
              		     else        next_state = 6'd4;				
    6'd8      : if (counter == 12'd1157) next_state = 6'd16;
              		     else        next_state = 6'd8;
    6'd16      : if (counter == 12'd1158) next_state = 6'd32;
              		     else 	 next_state = 6'd16;
    6'd32     : if (~head_flag)		next_state = 6'd1;
              		     else     	next_state = 6'd32;
    default   :        		      next_state = 6'd1;
  endcase 



//******************** Output ********************************//
    always @(posedge clk or negedge rstn)
    begin
        if (rstn == 0)
             dout <=   14'd0;
        else
             dout <=   d_2 + d_3 + 14'd3000;
    end
    

//************************* Call Module ****************************//
adaptive_filter adaptive_filter_2 (
				.adap_filter_state(adap_filter_state),
				.div_state(div_state),
				.rstn(rstn),
				.clk(clk),
				.reff_0(reff_0),
				.reff_1(reff_1),
				.reff_2(reff_2),
				.reff_3(reff_3),
				.reff_4(reff_4),
				.reff_5(reff_5),
				.reff_6(reff_6),
				.reff_7(reff_7),
				.reff_8(reff_8),
				.reff_9(reff_9),
				.reff_10(reff_10),
				.reff_11(reff_11),
				.reff_12(reff_12),
				.reff_13(reff_13),
				.reff_14(reff_14),
				.reff_15(reff_15),
				.reff_16(reff_16),
				.reff_17(reff_17),
				.reff_18(reff_18),
				.reff_19(reff_19),
				.reff_20(reff_20),
				.reff_21(reff_21),
				.reff_22(reff_22),
				.reff_23(reff_23),
				.reff_24(reff_24),
				.reff_25(reff_25),
				.reff_26(reff_26),
				.reff_27(reff_27),
				.reff_28(reff_28),
				.reff_29(reff_29),
				.reff_30(reff_30),
				.reff_31(reff_31),
				.reff_32(reff_32),
				.reff_33(reff_33),
				.reff_34(reff_34),
				.reff_35(reff_35),
				.reff_36(reff_36),
				.reff_37(reff_37),
				.reff_38(reff_38),
				.reff_39(reff_39),
				.reff_40(reff_40),
				.reff_41(reff_41),
				.reff_42(reff_42),
				.buffer_in_0(buffer_2_in_0),
				.buffer_in_1(buffer_2_in_1),
				.buffer_in_2(buffer_2_in_2),
				.buffer_in_3(buffer_2_in_3),
				.buffer_in_4(buffer_2_in_4),
				.buffer_in_5(buffer_2_in_5),
				.buffer_in_6(buffer_2_in_6),
				.buffer_in_7(buffer_2_in_7),
				.buffer_in_8(buffer_2_in_8),
				.buffer_in_9(buffer_2_in_9),
				.buffer_in_10(buffer_2_in_10),
				.buffer_in_11(buffer_2_in_11),
				.buffer_in_12(buffer_2_in_12),
				.buffer_in_13(buffer_2_in_13),
				.buffer_in_14(buffer_2_in_14),
				.buffer_in_15(buffer_2_in_15),
				.buffer_in_16(buffer_2_in_16),
				.buffer_in_17(buffer_2_in_17),
				.buffer_in_18(buffer_2_in_18),
				.buffer_in_19(buffer_2_in_19),
				.buffer_in_20(buffer_2_in_20),
				.buffer_in_21(buffer_2_in_21),
				.buffer_in_22(buffer_2_in_22),
				.buffer_in_23(buffer_2_in_23),
				.buffer_in_24(buffer_2_in_24),
				.buffer_in_25(buffer_2_in_25),
				.buffer_in_26(buffer_2_in_26),
				.buffer_in_27(buffer_2_in_27),
				.buffer_in_28(buffer_2_in_28),
				.buffer_in_29(buffer_2_in_29),
				.buffer_in_30(buffer_2_in_30),
				.buffer_in_31(buffer_2_in_31),
				.buffer_in_32(buffer_2_in_32),
				.buffer_in_33(buffer_2_in_33),
				.buffer_in_34(buffer_2_in_34),
				.buffer_in_35(buffer_2_in_35),
				.buffer_in_36(buffer_2_in_36),
				.buffer_in_37(buffer_2_in_37),
				.buffer_in_38(buffer_2_in_38),
				.buffer_in_39(buffer_2_in_39),
				.buffer_in_40(buffer_2_in_40),
				.buffer_in_41(buffer_2_in_41),
				.buffer_in_42(buffer_2_in_42),
				.weight_in_0(weight_2_in_0),
				.weight_in_1(weight_2_in_1),
				.weight_in_2(weight_2_in_2),
				.weight_in_3(weight_2_in_3),
				.weight_in_4(weight_2_in_4),
				.weight_in_5(weight_2_in_5),
				.weight_in_6(weight_2_in_6),
				.weight_in_7(weight_2_in_7),
				.weight_in_8(weight_2_in_8),
				.weight_in_9(weight_2_in_9),
				.weight_in_10(weight_2_in_10),
				.weight_in_11(weight_2_in_11),
				.weight_in_12(weight_2_in_12),
				.weight_in_13(weight_2_in_13),
				.weight_in_14(weight_2_in_14),
				.weight_in_15(weight_2_in_15),
				.weight_in_16(weight_2_in_16),
				.weight_in_17(weight_2_in_17),
				.weight_in_18(weight_2_in_18),
				.weight_in_19(weight_2_in_19),
				.weight_in_20(weight_2_in_20),
				.weight_in_21(weight_2_in_21),
				.weight_in_22(weight_2_in_22),
				.weight_in_23(weight_2_in_23),
				.weight_in_24(weight_2_in_24),
				.weight_in_25(weight_2_in_25),
				.weight_in_26(weight_2_in_26),
				.weight_in_27(weight_2_in_27),
				.weight_in_28(weight_2_in_28),
				.weight_in_29(weight_2_in_29),
				.weight_in_30(weight_2_in_30),
				.weight_in_31(weight_2_in_31),
				.d(d_2),
				.e(e_2),
				.n(n_2)
				
);

adaptive_filter adaptive_filter_3 (
				.adap_filter_state(adap_filter_state),
				.div_state(div_state),
				.rstn(rstn),
				.clk(clk),
				.reff_0(reff_0),
				.reff_1(reff_1),
				.reff_2(reff_2),
				.reff_3(reff_3),
				.reff_4(reff_4),
				.reff_5(reff_5),
				.reff_6(reff_6),
				.reff_7(reff_7),
				.reff_8(reff_8),
				.reff_9(reff_9),
				.reff_10(reff_10),
				.reff_11(reff_11),
				.reff_12(reff_12),
				.reff_13(reff_13),
				.reff_14(reff_14),
				.reff_15(reff_15),
				.reff_16(reff_16),
				.reff_17(reff_17),
				.reff_18(reff_18),
				.reff_19(reff_19),
				.reff_20(reff_20),
				.reff_21(reff_21),
				.reff_22(reff_22),
				.reff_23(reff_23),
				.reff_24(reff_24),
				.reff_25(reff_25),
				.reff_26(reff_26),
				.reff_27(reff_27),
				.reff_28(reff_28),
				.reff_29(reff_29),
				.reff_30(reff_30),
				.reff_31(reff_31),
				.reff_32(reff_32),
				.reff_33(reff_33),
				.reff_34(reff_34),
				.reff_35(reff_35),
				.reff_36(reff_36),
				.reff_37(reff_37),
				.reff_38(reff_38),
				.reff_39(reff_39),
				.reff_40(reff_40),
				.reff_41(reff_41),
				.reff_42(reff_42),
				.buffer_in_0(buffer_3_in_0),
				.buffer_in_1(buffer_3_in_1),
				.buffer_in_2(buffer_3_in_2),
				.buffer_in_3(buffer_3_in_3),
				.buffer_in_4(buffer_3_in_4),
				.buffer_in_5(buffer_3_in_5),
				.buffer_in_6(buffer_3_in_6),
				.buffer_in_7(buffer_3_in_7),
				.buffer_in_8(buffer_3_in_8),
				.buffer_in_9(buffer_3_in_9),
				.buffer_in_10(buffer_3_in_10),
				.buffer_in_11(buffer_3_in_11),
				.buffer_in_12(buffer_3_in_12),
				.buffer_in_13(buffer_3_in_13),
				.buffer_in_14(buffer_3_in_14),
				.buffer_in_15(buffer_3_in_15),
				.buffer_in_16(buffer_3_in_16),
				.buffer_in_17(buffer_3_in_17),
				.buffer_in_18(buffer_3_in_18),
				.buffer_in_19(buffer_3_in_19),
				.buffer_in_20(buffer_3_in_20),
				.buffer_in_21(buffer_3_in_21),
				.buffer_in_22(buffer_3_in_22),
				.buffer_in_23(buffer_3_in_23),
				.buffer_in_24(buffer_3_in_24),
				.buffer_in_25(buffer_3_in_25),
				.buffer_in_26(buffer_3_in_26),
				.buffer_in_27(buffer_3_in_27),
				.buffer_in_28(buffer_3_in_28),
				.buffer_in_29(buffer_3_in_29),
				.buffer_in_30(buffer_3_in_30),
				.buffer_in_31(buffer_3_in_31),
				.buffer_in_32(buffer_3_in_32),
				.buffer_in_33(buffer_3_in_33),
				.buffer_in_34(buffer_3_in_34),
				.buffer_in_35(buffer_3_in_35),
				.buffer_in_36(buffer_3_in_36),
				.buffer_in_37(buffer_3_in_37),
				.buffer_in_38(buffer_3_in_38),
				.buffer_in_39(buffer_3_in_39),
				.buffer_in_40(buffer_3_in_40),
				.buffer_in_41(buffer_3_in_41),
				.buffer_in_42(buffer_3_in_42),
				.weight_in_0(weight_3_in_0),
				.weight_in_1(weight_3_in_1),
				.weight_in_2(weight_3_in_2),
				.weight_in_3(weight_3_in_3),
				.weight_in_4(weight_3_in_4),
				.weight_in_5(weight_3_in_5),
				.weight_in_6(weight_3_in_6),
				.weight_in_7(weight_3_in_7),
				.weight_in_8(weight_3_in_8),
				.weight_in_9(weight_3_in_9),
				.weight_in_10(weight_3_in_10),
				.weight_in_11(weight_3_in_11),
				.weight_in_12(weight_3_in_12),
				.weight_in_13(weight_3_in_13),
				.weight_in_14(weight_3_in_14),
				.weight_in_15(weight_3_in_15),
				.weight_in_16(weight_3_in_16),
				.weight_in_17(weight_3_in_17),
				.weight_in_18(weight_3_in_18),
				.weight_in_19(weight_3_in_19),
				.weight_in_20(weight_3_in_20),
				.weight_in_21(weight_3_in_21),
				.weight_in_22(weight_3_in_22),
				.weight_in_23(weight_3_in_23),
				.weight_in_24(weight_3_in_24),
				.weight_in_25(weight_3_in_25),
				.weight_in_26(weight_3_in_26),
				.weight_in_27(weight_3_in_27),
				.weight_in_28(weight_3_in_28),
				.weight_in_29(weight_3_in_29),
				.weight_in_30(weight_3_in_30),
				.weight_in_31(weight_3_in_31),
				.d(d_3),
				.e(e_3),
				.n(n_3)
);

ram_weight ram_weight_2 (.counter(counter),
			.weight_cal_state(weight_cal_state),
			.div_state(div_state),
			.rstn(rstn),
			.clk(clk),
			.e(e_2),
			.reff_0(reff_0),
			.reff_1(reff_1),
			.reff_2(reff_2),
			.reff_3(reff_3),
			.reff_4(reff_4),
			.reff_5(reff_5),
			.reff_6(reff_6),
			.reff_7(reff_7),
			.reff_8(reff_8),
			.reff_9(reff_9),
			.reff_10(reff_10),
			.reff_11(reff_11),
			.reff_12(reff_12),
			.reff_13(reff_13),
			.reff_14(reff_14),
			.reff_15(reff_15),
			.reff_16(reff_16),
			.reff_17(reff_17),
			.reff_18(reff_18),
			.reff_19(reff_19),
			.reff_20(reff_20),
			.reff_21(reff_21),
			.reff_22(reff_22),
			.reff_23(reff_23),
			.reff_24(reff_24),
			.reff_25(reff_25),
			.reff_26(reff_26),
			.reff_27(reff_27),
			.reff_28(reff_28),
			.reff_29(reff_29),
			.reff_30(reff_30),
			.reff_31(reff_31),
			.weight_in_0(weight_2_in_0),
			.weight_in_1(weight_2_in_1),
			.weight_in_2(weight_2_in_2),
			.weight_in_3(weight_2_in_3),
			.weight_in_4(weight_2_in_4),
			.weight_in_5(weight_2_in_5),
			.weight_in_6(weight_2_in_6),
			.weight_in_7(weight_2_in_7),
			.weight_in_8(weight_2_in_8),
			.weight_in_9(weight_2_in_9),
			.weight_in_10(weight_2_in_10),
			.weight_in_11(weight_2_in_11),
			.weight_in_12(weight_2_in_12),
			.weight_in_13(weight_2_in_13),
			.weight_in_14(weight_2_in_14),
			.weight_in_15(weight_2_in_15),
			.weight_in_16(weight_2_in_16),
			.weight_in_17(weight_2_in_17),
			.weight_in_18(weight_2_in_18),
			.weight_in_19(weight_2_in_19),
			.weight_in_20(weight_2_in_20),
			.weight_in_21(weight_2_in_21),
			.weight_in_22(weight_2_in_22),
			.weight_in_23(weight_2_in_23),
			.weight_in_24(weight_2_in_24),
			.weight_in_25(weight_2_in_25),
			.weight_in_26(weight_2_in_26),
			.weight_in_27(weight_2_in_27),
			.weight_in_28(weight_2_in_28),
			.weight_in_29(weight_2_in_29),
			.weight_in_30(weight_2_in_30),
			.weight_in_31(weight_2_in_31),
			.n(n_2)
);
ram_weight ram_weight_3 (.counter(counter),
			.weight_cal_state(weight_cal_state),
			.div_state(div_state),
			.rstn(rstn),
			.clk(clk),
			.e(e_3),
			.reff_0(reff_0),
			.reff_1(reff_1),
			.reff_2(reff_2),
			.reff_3(reff_3),
			.reff_4(reff_4),
			.reff_5(reff_5),
			.reff_6(reff_6),
			.reff_7(reff_7),
			.reff_8(reff_8),
			.reff_9(reff_9),
			.reff_10(reff_10),
			.reff_11(reff_11),
			.reff_12(reff_12),
			.reff_13(reff_13),
			.reff_14(reff_14),
			.reff_15(reff_15),
			.reff_16(reff_16),
			.reff_17(reff_17),
			.reff_18(reff_18),
			.reff_19(reff_19),
			.reff_20(reff_20),
			.reff_21(reff_21),
			.reff_22(reff_22),
			.reff_23(reff_23),
			.reff_24(reff_24),
			.reff_25(reff_25),
			.reff_26(reff_26),
			.reff_27(reff_27),
			.reff_28(reff_28),
			.reff_29(reff_29),
			.reff_30(reff_30),
			.reff_31(reff_31),
			.weight_in_0(weight_3_in_0),
			.weight_in_1(weight_3_in_1),
			.weight_in_2(weight_3_in_2),
			.weight_in_3(weight_3_in_3),
			.weight_in_4(weight_3_in_4),
			.weight_in_5(weight_3_in_5),
			.weight_in_6(weight_3_in_6),
			.weight_in_7(weight_3_in_7),
			.weight_in_8(weight_3_in_8),
			.weight_in_9(weight_3_in_9),
			.weight_in_10(weight_3_in_10),
			.weight_in_11(weight_3_in_11),
			.weight_in_12(weight_3_in_12),
			.weight_in_13(weight_3_in_13),
			.weight_in_14(weight_3_in_14),
			.weight_in_15(weight_3_in_15),
			.weight_in_16(weight_3_in_16),
			.weight_in_17(weight_3_in_17),
			.weight_in_18(weight_3_in_18),
			.weight_in_19(weight_3_in_19),
			.weight_in_20(weight_3_in_20),
			.weight_in_21(weight_3_in_21),
			.weight_in_22(weight_3_in_22),
			.weight_in_23(weight_3_in_23),
			.weight_in_24(weight_3_in_24),
			.weight_in_25(weight_3_in_25),
			.weight_in_26(weight_3_in_26),
			.weight_in_27(weight_3_in_27),
			.weight_in_28(weight_3_in_28),
			.weight_in_29(weight_3_in_29),
			.weight_in_30(weight_3_in_30),
			.weight_in_31(weight_3_in_31),
			.n(n_3)
);


ram_data ram_data_2 (
			.shift_data_state(shift_data_state),
			.rstn(rstn),
			.clk(clk),
			.in(buffer_2),
			.ram_tmp_0(buffer_2_in_0),
			.ram_tmp_1(buffer_2_in_1),
			.ram_tmp_2(buffer_2_in_2),
			.ram_tmp_3(buffer_2_in_3),
			.ram_tmp_4(buffer_2_in_4),
			.ram_tmp_5(buffer_2_in_5),
			.ram_tmp_6(buffer_2_in_6),
			.ram_tmp_7(buffer_2_in_7),
			.ram_tmp_8(buffer_2_in_8),
			.ram_tmp_9(buffer_2_in_9),
			.ram_tmp_10(buffer_2_in_10),
			.ram_tmp_11(buffer_2_in_11),
			.ram_tmp_12(buffer_2_in_12),
			.ram_tmp_13(buffer_2_in_13),
			.ram_tmp_14(buffer_2_in_14),
			.ram_tmp_15(buffer_2_in_15),
			.ram_tmp_16(buffer_2_in_16),
			.ram_tmp_17(buffer_2_in_17),
			.ram_tmp_18(buffer_2_in_18),
			.ram_tmp_19(buffer_2_in_19),
			.ram_tmp_20(buffer_2_in_20),
			.ram_tmp_21(buffer_2_in_21),
			.ram_tmp_22(buffer_2_in_22),
			.ram_tmp_23(buffer_2_in_23),
			.ram_tmp_24(buffer_2_in_24),
			.ram_tmp_25(buffer_2_in_25),
			.ram_tmp_26(buffer_2_in_26),
			.ram_tmp_27(buffer_2_in_27),
			.ram_tmp_28(buffer_2_in_28),
			.ram_tmp_29(buffer_2_in_29),
			.ram_tmp_30(buffer_2_in_30),
			.ram_tmp_31(buffer_2_in_31),
			.ram_tmp_32(buffer_2_in_32),
			.ram_tmp_33(buffer_2_in_33),
			.ram_tmp_34(buffer_2_in_34),
			.ram_tmp_35(buffer_2_in_35),
			.ram_tmp_36(buffer_2_in_36),
			.ram_tmp_37(buffer_2_in_37),
			.ram_tmp_38(buffer_2_in_38),
			.ram_tmp_39(buffer_2_in_39),
			.ram_tmp_40(buffer_2_in_40),
			.ram_tmp_41(buffer_2_in_41),
			.ram_tmp_42(buffer_2_in_42)
			
);   
ram_data ram_data_3 (
			.shift_data_state(shift_data_state),
			.rstn(rstn),
			.clk(clk),
			.in(buffer_3),
			.ram_tmp_0(buffer_3_in_0),
			.ram_tmp_1(buffer_3_in_1),
			.ram_tmp_2(buffer_3_in_2),
			.ram_tmp_3(buffer_3_in_3),
			.ram_tmp_4(buffer_3_in_4),
			.ram_tmp_5(buffer_3_in_5),
			.ram_tmp_6(buffer_3_in_6),
			.ram_tmp_7(buffer_3_in_7),
			.ram_tmp_8(buffer_3_in_8),
			.ram_tmp_9(buffer_3_in_9),
			.ram_tmp_10(buffer_3_in_10),
			.ram_tmp_11(buffer_3_in_11),
			.ram_tmp_12(buffer_3_in_12),
			.ram_tmp_13(buffer_3_in_13),
			.ram_tmp_14(buffer_3_in_14),
			.ram_tmp_15(buffer_3_in_15),
			.ram_tmp_16(buffer_3_in_16),
			.ram_tmp_17(buffer_3_in_17),
			.ram_tmp_18(buffer_3_in_18),
			.ram_tmp_19(buffer_3_in_19),
			.ram_tmp_20(buffer_3_in_20),
			.ram_tmp_21(buffer_3_in_21),
			.ram_tmp_22(buffer_3_in_22),
			.ram_tmp_23(buffer_3_in_23),
			.ram_tmp_24(buffer_3_in_24),
			.ram_tmp_25(buffer_3_in_25),
			.ram_tmp_26(buffer_3_in_26),
			.ram_tmp_27(buffer_3_in_27),
			.ram_tmp_28(buffer_3_in_28),
			.ram_tmp_29(buffer_3_in_29),
			.ram_tmp_30(buffer_3_in_30),
			.ram_tmp_31(buffer_3_in_31),
			.ram_tmp_32(buffer_3_in_32),
			.ram_tmp_33(buffer_3_in_33),
			.ram_tmp_34(buffer_3_in_34),
			.ram_tmp_35(buffer_3_in_35),
			.ram_tmp_36(buffer_3_in_36),
			.ram_tmp_37(buffer_3_in_37),
			.ram_tmp_38(buffer_3_in_38),
			.ram_tmp_39(buffer_3_in_39),
			.ram_tmp_40(buffer_3_in_40),
			.ram_tmp_41(buffer_3_in_41),
			.ram_tmp_42(buffer_3_in_42)			
);   

ram_data ram_data_r (
			.shift_data_state(shift_data_state),
			.rstn(rstn),
			.clk(clk),
			.in(reff),
			.ram_tmp_0(reff_0),		
			.ram_tmp_1(reff_1),
			.ram_tmp_2(reff_2),
			.ram_tmp_3(reff_3),
			.ram_tmp_4(reff_4),
			.ram_tmp_5(reff_5),
			.ram_tmp_6(reff_6),
			.ram_tmp_7(reff_7),
			.ram_tmp_8(reff_8),
			.ram_tmp_9(reff_9),
			.ram_tmp_10(reff_10),
			.ram_tmp_11(reff_11),
			.ram_tmp_12(reff_12),
			.ram_tmp_13(reff_13),
			.ram_tmp_14(reff_14),
			.ram_tmp_15(reff_15),
			.ram_tmp_16(reff_16),
			.ram_tmp_17(reff_17),		
			.ram_tmp_18(reff_18),
			.ram_tmp_19(reff_19),
			.ram_tmp_20(reff_20),
			.ram_tmp_21(reff_21),
			.ram_tmp_22(reff_22),
			.ram_tmp_23(reff_23),
			.ram_tmp_24(reff_24),
			.ram_tmp_25(reff_25),
			.ram_tmp_26(reff_26),
			.ram_tmp_27(reff_27),
			.ram_tmp_28(reff_28),
			.ram_tmp_29(reff_29),
			.ram_tmp_30(reff_30),
			.ram_tmp_31(reff_31),
			.ram_tmp_32(reff_32),
			.ram_tmp_33(reff_33),
			.ram_tmp_34(reff_34),
			.ram_tmp_35(reff_35),
			.ram_tmp_36(reff_36),
			.ram_tmp_37(reff_37),
			.ram_tmp_38(reff_38),
			.ram_tmp_39(reff_39),
			.ram_tmp_40(reff_40),
			.ram_tmp_41(reff_41),
			.ram_tmp_42(reff_42)
     
);   
endmodule
