`timescale 1ns/1ps
module ram_weight (counter, weight_cal_state,div_state, rstn, clk, e, reff_0, reff_1, reff_2, reff_3, reff_4, reff_5, reff_6, reff_7, reff_8, reff_9, reff_10, reff_11, reff_12, reff_13, reff_14, reff_15,reff_16,reff_17,reff_18,reff_19,reff_20,reff_21,reff_22,reff_23,reff_24,reff_25,reff_26,reff_27,reff_28,reff_29,reff_30,reff_31, weight_in_0, weight_in_1, weight_in_2, weight_in_3, weight_in_4, weight_in_5, weight_in_6, weight_in_7, weight_in_8, weight_in_9, weight_in_10, weight_in_11, weight_in_12, weight_in_13, weight_in_14, weight_in_15 ,weight_in_16,weight_in_17,weight_in_18,weight_in_19,weight_in_20,weight_in_21,weight_in_22,weight_in_23,weight_in_24,weight_in_25,weight_in_26,weight_in_27,weight_in_28,weight_in_29,weight_in_30,weight_in_31,n);

input [11:0] counter;
input rstn, clk, weight_cal_state;
input [13:0] e;
input div_state;
input [13:0] reff_0;
input [13:0] reff_1;
input [13:0] reff_2;
input [13:0] reff_3;
input [13:0] reff_4;
input [13:0] reff_5;
input [13:0] reff_6;
input [13:0] reff_7;
input [13:0] reff_8;
input [13:0] reff_9;
input [13:0] reff_10;
input [13:0] reff_11;
input [13:0] reff_12;
input [13:0] reff_13;
input [13:0] reff_14;
input [13:0] reff_15;
input [13:0] reff_16;
input [13:0] reff_17;
input [13:0] reff_18;
input [13:0] reff_19;
input [13:0] reff_20;
input [13:0] reff_21;
input [13:0] reff_22;
input [13:0] reff_23;
input [13:0] reff_24;
input [13:0] reff_25;
input [13:0] reff_26;
input [13:0] reff_27;
input [13:0] reff_28;
input [13:0] reff_29;
input [13:0] reff_30;
input [13:0] reff_31;
input [31:0] n;

output reg [15:0] weight_in_0;
output reg [15:0] weight_in_1;
output reg [15:0] weight_in_2;
output reg [15:0] weight_in_3;
output reg [15:0] weight_in_4;
output reg [15:0] weight_in_5;
output reg [15:0] weight_in_6;
output reg [15:0] weight_in_7;
output reg [15:0] weight_in_8;
output reg [15:0] weight_in_9;
output reg [15:0] weight_in_10;
output reg [15:0] weight_in_11;
output reg [15:0] weight_in_12;
output reg [15:0] weight_in_13;
output reg [15:0] weight_in_14;
output reg [15:0] weight_in_15;
output reg [15:0] weight_in_16;
output reg [15:0] weight_in_17;
output reg [15:0] weight_in_18;
output reg [15:0] weight_in_19;
output reg [15:0] weight_in_20;
output reg [15:0] weight_in_21;
output reg [15:0] weight_in_22;
output reg [15:0] weight_in_23;
output reg [15:0] weight_in_24;
output reg [15:0] weight_in_25;
output reg [15:0] weight_in_26;
output reg [15:0] weight_in_27;
output reg [15:0] weight_in_28;
output reg [15:0] weight_in_29;
output reg [15:0] weight_in_30;
output reg [15:0] weight_in_31;

wire [28:0] multiple;
wire [28:0] multiple_0;
wire [28:0] multiple_1;
wire [28:0] multiple_2;
wire [28:0] multiple_3;
wire [28:0] multiple_4;
wire [28:0] multiple_5;
wire [28:0] multiple_6;
wire [28:0] multiple_7;
wire [28:0] multiple_8;
wire [28:0] multiple_9;
wire [28:0] multiple_10;
wire [28:0] multiple_11;
wire [28:0] multiple_12;
wire [28:0] multiple_13;
wire [28:0] multiple_14;
wire [28:0] multiple_15;
wire [28:0] multiple_16;
wire [28:0] multiple_17;
wire [28:0] multiple_18;
wire [28:0] multiple_19;
wire [28:0] multiple_20;
wire [28:0] multiple_21;
wire [28:0] multiple_22;
wire [28:0] multiple_23;
wire [28:0] multiple_24;
wire [28:0] multiple_25;
wire [28:0] multiple_26;
wire [28:0] multiple_27;
wire [28:0] multiple_28;
wire [28:0] multiple_29;
wire [28:0] multiple_30;
wire [28:0] multiple_31;
wire [28:0] multiple_32;

//**************************************************//

reg [13:0] reff;
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		reff <=    14'd0;
	else	
		case (counter)
		12'd34      :	reff <=  reff_0;
		12'd35      :	reff <=  reff_1;
		12'd36      :	reff <=  reff_2;
		12'd37      :	reff <=  reff_3;
		12'd38      :	reff <=  reff_4;
		12'd39      :	reff <=  reff_5;
		12'd40      :	reff <=  reff_6;
		12'd41      :	reff <=  reff_7;
		12'd42      :	reff <=  reff_8;
		12'd43      :	reff <=  reff_9;
		12'd44      :	reff <=  reff_10;
		12'd45      :	reff <=  reff_11;
		12'd46      :	reff <=  reff_12;
		12'd47      :	reff <=  reff_13;
		12'd48      :	reff <=  reff_14;
		12'd49      :	reff <=  reff_15;
		12'd50      :	reff <=  reff_16;
		12'd51      :	reff <=  reff_17;
		12'd52      :	reff <=  reff_18;
		12'd53      :	reff <=  reff_19;
		12'd54      :	reff <=  reff_20;
		12'd55      :	reff <=  reff_21;
		12'd56      :	reff <=  reff_22;
		12'd57      :	reff <=  reff_23;
		12'd58      :	reff <=  reff_24;
		12'd59      :	reff <=  reff_25;
		12'd60      :	reff <=  reff_26;
		12'd61      :	reff <=  reff_27;
		12'd62      :	reff <=  reff_28;
		12'd63      :	reff <=  reff_29;
		12'd64      :	reff <=  reff_30;
		12'd65      :	reff <=  reff_31;
		default       :	reff <=  14'd0;
		endcase
	end	
			
reg [15:0] weight_pre;	
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		weight_pre <=    16'd0;
	else	
		case (counter)
		12'd100     :	weight_pre <= weight_in_0;
		12'd132      :	weight_pre <= weight_in_1;
		12'd164      :	weight_pre <= weight_in_2;
		12'd196      :	weight_pre <= weight_in_3;
		12'd228      :	weight_pre <= weight_in_4;
		12'd260      :	weight_pre <= weight_in_5;
		12'd292      :	weight_pre <= weight_in_6;
		12'd324      :	weight_pre <= weight_in_7;
		12'd356    :	weight_pre <= weight_in_8;
		12'd388      :	weight_pre <= weight_in_9;
		12'd420      :	weight_pre <= weight_in_10;
		12'd452      :	weight_pre <= weight_in_11;
		12'd484      :	weight_pre <= weight_in_12;
		12'd516      :	weight_pre <= weight_in_13;
		12'd548      :	weight_pre <= weight_in_14;
		12'd580      :	weight_pre <= weight_in_15;
		12'd612      :	weight_pre <= weight_in_16;
		12'd644      :	weight_pre <= weight_in_17;
		12'd676      :	weight_pre <= weight_in_18;
		12'd708      :	weight_pre <= weight_in_19;
		12'd740      :	weight_pre <= weight_in_20;
		12'd772      :	weight_pre <= weight_in_21;
		12'd804      :	weight_pre <= weight_in_22;
		12'd836      :	weight_pre <= weight_in_23;
		12'd868      :	weight_pre <= weight_in_24;
		12'd900      :	weight_pre <= weight_in_25;
		12'd932      :	weight_pre <= weight_in_26;
		12'd964      :	weight_pre <= weight_in_27;
		12'd996     :	weight_pre <= weight_in_28;
		12'd1028      :	weight_pre <= weight_in_29;
		12'd1060      :	weight_pre <= weight_in_30;
		12'd1092      :	weight_pre <= weight_in_31;
		default	   :	weight_pre <=  16'd0;
		endcase
	end		
	
reg [28:0] dividend;	
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		dividend <=    16'd0;
	else	
		case (counter)
		12'd68      :	dividend <= multiple_32;
		12'd100      :	dividend <= multiple_31;
		12'd132      :	dividend <= multiple_30;
		12'd164      :	dividend <= multiple_29;
		12'd196      :	dividend <= multiple_28;
		12'd228      :	dividend <= multiple_27;
		12'd260      :	dividend <= multiple_26;
		12'd292      :	dividend <= multiple_25;
		12'd324      :	dividend <= multiple_24;
		12'd356      :	dividend <= multiple_23;
		12'd388      :	dividend <= multiple_22;
		12'd420      :	dividend <= multiple_21;
		12'd452      :	dividend <= multiple_20;
		12'd484      :	dividend <= multiple_19;
		12'd516      :	dividend <= multiple_18;
		12'd548      :	dividend <= multiple_17;
		12'd580      :	dividend <= multiple_16;
		12'd612      :	dividend <= multiple_15;
		12'd644      :	dividend <= multiple_14;
		12'd676      :	dividend <= multiple_13;
		12'd708      :	dividend <= multiple_12;
		12'd740      :	dividend <= multiple_11;
		12'd772      :	dividend <= multiple_10;
		12'd804      :	dividend <= multiple_9;
		12'd836      :	dividend <= multiple_8;
		12'd868      :	dividend <= multiple_7;
		12'd900      :	dividend <= multiple_6;
		12'd932      :	dividend <= multiple_5;
		12'd964     :	dividend <= multiple_4;
		12'd996      :	dividend <= multiple_3;
		12'd1028      :	dividend <= multiple_2;
		12'd1060      :	dividend <= multiple_1;
		default	   :	dividend <=  29'd0;
		endcase
	end
	
//********************** DSP ***********************//		
//reg [31:0] weight;

reg weight_cal_state_dly;	
reg [5:0]counter1,counter2;
wire flag_15;
wire flag_div;
reg flag_n;

wire [15:0]w_t;
assign flag_15 = (counter == 12'd42) ? 1'd1 : 1'd0;
assign flag_div = (counter == 12'd69||counter == 12'd101||counter == 12'd133||counter == 12'd165||counter == 12'd197||counter == 12'd229||counter == 12'd261||counter == 12'd293||counter == 12'd325||counter == 12'd357||counter == 12'd389||counter == 12'd421||counter == 12'd453||counter == 12'd485||counter == 12'd517||counter == 12'd549||counter == 12'd581||counter == 12'd613||counter == 12'd645||counter == 12'd677||counter == 12'd709||counter == 12'd741||counter == 12'd773||counter == 12'd805||counter == 12'd837||counter == 12'd869||counter == 12'd901||counter == 12'd933||counter == 12'd965||counter == 12'd997||counter == 12'd1029||counter == 12'd1061||counter == 12'd1093||counter == 12'd1125)?1'b0:1'b1;

always@(posedge flag_15 or negedge rstn)
begin
if (rstn == 0)
	counter1 <=   6'd0;
	
else if(counter1<=6'd43)
	counter1 <=   counter1+6'b1;

else
	counter1<=counter1;
end
always@(posedge flag_15 or negedge rstn)
begin
if (rstn == 0)
	flag_n 	<=   6'd0;
	
else if(counter1==6'd43)
	flag_n 	<=  6'd1;

else
	flag_n	<=	flag_n;
end

always@(negedge flag_div or negedge rstn)
begin
if (rstn == 0)
	counter2 <=   6'd0;

else if(counter2<6'd33&&flag_n==1)
	counter2 <=   counter2+6'd1;

else
	counter2<=6'd0;
end

		
	always@(posedge clk or negedge rstn)
	begin
	if (rstn == 0)
		weight_cal_state_dly <=   1'd0;
	else
		weight_cal_state_dly <=    weight_cal_state;
	end		


assign multiple =({{15{e[13]}}, e} * {{15{reff[13]}}, reff});



//********************** Output Storage ***********************//
   always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_0 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd2)
	weight_in_0 <=  w_t;
    else
        weight_in_0 <=  weight_in_0;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_1 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd3)
	weight_in_1 <=  w_t;
    else
        weight_in_1 <=  weight_in_1;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_2 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd4)
	weight_in_2 <=  w_t;
    else
        weight_in_2 <=  weight_in_2;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_3 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd5)
	weight_in_3 <=  w_t;
    else
        weight_in_3 <=  weight_in_3;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_4 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd6)
	weight_in_4 <=  w_t;
    else
        weight_in_4 <=  weight_in_4;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_5 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd7)
	weight_in_5 <=  w_t;
    else
        weight_in_5 <=  weight_in_5;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_6 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd8)
	weight_in_6 <=  w_t;
    else
        weight_in_6 <=  weight_in_6;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_7 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd9)
	weight_in_7 <=  w_t;
    else
        weight_in_7 <=  weight_in_7;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_8 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd10)
	weight_in_8 <=  w_t;
    else
        weight_in_8 <=  weight_in_8;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_9 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd11)
	weight_in_9 <=  w_t;
    else
        weight_in_9 <=  weight_in_9;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_10 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd12)
	weight_in_10 <=  w_t;
    else
        weight_in_10 <=  weight_in_10;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_11 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd13)
	weight_in_11 <=  w_t;
    else
        weight_in_11 <=  weight_in_11;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_12 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd14)
	weight_in_12 <=  w_t;
    else
        weight_in_12 <=  weight_in_12;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_13 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd15)
	weight_in_13 <=  w_t;
    else
        weight_in_13 <=  weight_in_13;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_14 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd16)
	weight_in_14 <=  w_t;
    else
        weight_in_14 <=  weight_in_14;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_15 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd17)
	weight_in_15 <=  w_t;
    else
        weight_in_15 <=  weight_in_15;
    end 
	
/*************************************************/	
   always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_16 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd18)
	weight_in_16 <=  w_t;
    else
        weight_in_16 <=  weight_in_16;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_17 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd19)
	weight_in_17 <=  w_t;
    else
        weight_in_17 <=  weight_in_17;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_18 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd20)
	weight_in_18 <=  w_t;
    else
        weight_in_18 <=  weight_in_18;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_19 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd21)
	weight_in_19 <=  w_t;
    else
        weight_in_19 <=  weight_in_19;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_20 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd22)
	weight_in_20 <=  w_t;
    else
        weight_in_20 <=  weight_in_20;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_21 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd23)
	weight_in_21 <=  w_t;
    else
        weight_in_21 <=  weight_in_21;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_22 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd24)
	weight_in_22 <=  w_t;
    else
        weight_in_22 <=  weight_in_22;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_23 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd25)
	weight_in_23 <=  w_t;
    else
        weight_in_23 <=  weight_in_23;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_24 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd26)
	weight_in_24 <=  w_t;
    else
        weight_in_24 <=  weight_in_24;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_25 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd27)
	weight_in_25 <=  w_t;
    else
        weight_in_25 <=  weight_in_25;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_26 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd28)
	weight_in_26 <=  w_t;
    else
        weight_in_26 <=  weight_in_26;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_27 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd29)
	weight_in_27 <=  w_t;
    else
        weight_in_27 <=  weight_in_27;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_28 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd30)
	weight_in_28 <=  w_t;
    else
        weight_in_28 <=  weight_in_28;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_29 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd31)
	weight_in_29 <=  w_t;
    else
        weight_in_29 <=  weight_in_29;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_30 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd32)
	weight_in_30 <=  w_t;
    else
        weight_in_30 <=  weight_in_30;
    end 

    always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_31 <=  16'd0;
    else if(div_state == 1'b1&&counter2 == 6'd33)
	weight_in_31 <=  w_t;
    else
        weight_in_31 <=  weight_in_31;
    end 

divdiv divdiv_t(.dividend({{7{dividend[28]}},dividend[28:7]}), .divisor({{12{n[31]}},n[31:15]}),.weight_pre(weight_pre),.clk(clk), .rstn(rstn), .enable(flag_div), .result(w_t));


ram_multiple ram_multiple_1 (
			.shift_data_state(weight_cal_state_dly),
			.rstn(rstn),
			.clk(clk),
			.in(multiple),
			.ram_tmp_0(multiple_0),		
			.ram_tmp_1(multiple_1),
			.ram_tmp_2(multiple_2),
			.ram_tmp_3(multiple_3),
			.ram_tmp_4(multiple_4),
			.ram_tmp_5(multiple_5),
			.ram_tmp_6(multiple_6),
			.ram_tmp_7(multiple_7),
			.ram_tmp_8(multiple_8),
			.ram_tmp_9(multiple_9),
			.ram_tmp_10(multiple_10),
			.ram_tmp_11(multiple_11),
			.ram_tmp_12(multiple_12),
			.ram_tmp_13(multiple_13),
			.ram_tmp_14(multiple_14),
			.ram_tmp_15(multiple_15),
			.ram_tmp_16(multiple_16),
			.ram_tmp_17(multiple_17),		
			.ram_tmp_18(multiple_18),
			.ram_tmp_19(multiple_19),
			.ram_tmp_20(multiple_20),
			.ram_tmp_21(multiple_21),
			.ram_tmp_22(multiple_22),
			.ram_tmp_23(multiple_23),
			.ram_tmp_24(multiple_24),
			.ram_tmp_25(multiple_25),
			.ram_tmp_26(multiple_26),
			.ram_tmp_27(multiple_27),
			.ram_tmp_28(multiple_28),
			.ram_tmp_29(multiple_29),
			.ram_tmp_30(multiple_30),
			.ram_tmp_31(multiple_31),
			.ram_tmp_32(multiple_32)
     
);   


endmodule

