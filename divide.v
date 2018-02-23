`timescale 1ns/1ps
module divdiv ( dividend, divisor,weight_pre, clk, rstn, enable, result);

input	[28:0] dividend;
input	[28:0] divisor;
input 	[15:0] weight_pre;
input	clk;
input	rstn;
input	enable;

output	reg[15:0]result;


/////////////////////////////////////////////////////////
// result = dividend / divisor
//
// If input bus width is 32 bits, clk needs 32 cycles
// inputing data while enable = 0
// Calculating while enable = 1
// Keeping result while enable = 0 
// This source code is proveded by kuiliang 2017/10/17
///////////////////////////////////////////////////////
reg [28:0]temp;
(* KEEP = "TRUE" *)reg [28:0]temp1;
reg temp2;
reg [15:0]weight_temp;
reg [13:0]counter;
reg [15:0]result_pre;
reg	[57:0] tempa ;  
reg enable1;
reg	[57:0] tempb ; 
reg	[57:0] tempc; 
reg result_ok;


always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		temp <=  29'd0;
	else if (enable)
		temp <=  temp;
	else if (dividend[28]==1)
		temp <=  ~dividend+1'b1;
	else if (dividend[28]==0)
		temp <=  dividend;
	else
		temp <= dividend;
end
always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		temp1 <=  29'd0;
	else if (enable)
		temp1 <=  temp1;
	else
		temp1 <= dividend;
end
always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		temp2 <=  1'd0;

	else
		temp2 <= temp1[28];
end
always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		enable1 <=  1'd0;

	else
		enable1 <= enable;
end
always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		weight_temp <=  16'd0;
	else if (enable==0)
		weight_temp <=  weight_pre;
	else
		weight_temp <= weight_temp;
end


/*
always @(posedge enable)  
begin  
    tempa = {29'd0,temp};
    tempb = {divisor,29'd0}; 

	for(i = 6'd0;i < 6'd29;i = i + 6'd1)  
        begin  
		tempa = {tempa[57:0],1'b0}; 
		if(tempa >= tempb && counter<=14'd30 && tempa!=58'd0)  
		tempa = tempa - tempb + 1'b1; 
		else  
        tempa = tempa;  	
	end
   
end  */

always @(posedge enable or negedge rstn)  
begin  
	if (!rstn) 
	tempa =58'd0;
	else
	tempa = {29'd0,temp};
   
end  


always @(posedge enable or negedge rstn)  
begin  
	if (!rstn) 
	tempb =58'd0;
	else
	tempb = {divisor,29'd0};
   
end  
  
/*  
always@(posedge clk or negedge rstn)
begin  

	tempa = {tempa[57:0],1'b0};  
	if (!rstn) 
	tempa = 58'd0;		
	else if(tempa >= tempb && counter<=14'd30 && tempa!=58'd0)  
        tempa = tempa - tempb + 1'b1; 
	else  
        tempa = tempa;  	

end  
*/
always@(posedge clk or negedge rstn)
begin  
	if (!rstn) 
	tempc <= 58'd0;	
	else if (enable1==0)
	tempc <= {29'd0,tempa};  

	else if(tempc >= tempb && counter<=14'd30)  
        tempc <= ((tempc - tempb)<<1) + 1'b1; 
		
	else if (enable)
	tempc <= {tempc[57:0],1'b0}; 
	else
	tempc <= tempc;
end 

always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		counter <=  14'd0;
	else if (enable&& counter<31)
		counter <=  counter+ 14'd1;
	else if (enable ==1'b0)
		counter <=  14'd0;
	else 
		counter<=counter;
end

always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		result_pre <=  16'd0;
	else if (counter==14'd31)
    result_pre <= tempc[28:0]; 
	else 
		result_pre <=  result_pre;
end

always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		result_ok <=  1'b0;
	else if (counter==14'd30)
		result_ok <=  1'b1;
	else 
		result_ok <=  1'b0;
end
		
always@(posedge clk or negedge rstn)
begin
	if (!rstn) 
		result <=  16'b0;
	else if (temp2==1'b1&&enable==1'b1&&counter==1'b0)
		result <=  weight_temp-result_pre;
	else if (temp2==1'b0&&enable==1'b1&&counter==1'b0)
		result <=  weight_temp+result_pre;
	else 
		result <=  result;
end


//assign result =(div_state==1)?result_pre:result;
//assign div_state = (temp <divisor)? 1'b1:1'b0;
endmodule

