`timescale 1ns/1ps
module s2p (mosi, sck, cs, rstn, clk, buffer_2, buffer_3,buffer_4,buffer_5,reff, head_flag);
input mosi, sck, cs, rstn, clk;
output reg [13:0] buffer_2, buffer_3,buffer_4,buffer_5;
output reg[13:0] reff;
output reg head_flag;
reg [13:0]ad_tmp,ad_1,ad_2,ad_3,ad_4;
reg [2:0] counter;
wire counter_1, counter_2,counter_3, counter_4,valid;   
wire [13:0]sum;

                    
 always@ (posedge sck or negedge rstn)
    begin
    if (rstn == 1'b0)
        ad_tmp <=  14'd0;
    else
        ad_tmp[13:0] <= {ad_tmp[12:0],mosi};
    end

 
  always@ (posedge cs or negedge rstn)
    begin
    if (rstn == 1'b0)
        head_flag <= 1'b0;
    else if (ad_tmp[13:0]==14'h0fff)
	    head_flag <= 1'b0;
 	else 
        head_flag <= 1'b1;
   
	end
assign valid = head_flag & cs;

    always@ (posedge valid or negedge rstn)
    begin
    if (rstn == 1'b0)
        counter <= 3'd0;
    else if (counter == 3'd4)
        counter <= 3'd0;
    else if (head_flag == 1'b1)
             counter <= #1  counter + 3'd1;
    else counter <=   counter;
    end  
reg valid_d,valid_d2;  
always@(posedge clk or negedge rstn)
	begin
		if(rstn== 1'b0)
			valid_d <= 1'd0;
		else
			valid_d <= valid;
	end
always@(posedge clk or negedge rstn)
	begin
		if(rstn== 1'b0)
			valid_d2 <= 1'd0;
		else
			valid_d2 <= valid_d;
	end


 
assign counter_1 = valid_d2 & (counter == 8'd1) ? 1'b1 : 1'b0;
assign counter_2 = valid_d2 & (counter == 8'd2) ? 1'b1 : 1'b0;  
assign counter_3 = valid_d2 & (counter == 8'd3) ? 1'b1 : 1'b0;
assign counter_4 = valid_d2 & (counter == 8'd4) ? 1'b1 : 1'b0;  


always@(posedge clk or negedge rstn)
	begin
		if(rstn== 1'b0)
			ad_1 <= 14'd0;
		else if(counter_1 == 1'b1)
			ad_1 <= ad_tmp;
		else
			ad_1 <= ad_1;
	end
always@(posedge clk or negedge rstn)
	begin
		if(rstn== 1'b0)
			ad_2 <=  14'd0;
		else if(counter_2 == 1'b1)
			ad_2 <= ad_tmp;
		else
			ad_2 <= ad_2;
	end	
always@(posedge clk or negedge rstn)
	begin
		if(rstn== 1'b0)
			ad_3 <=  14'd0;
		else if(counter_3 == 1'b1)
			ad_3 <= ad_tmp;
		else
			ad_3 <= ad_3;
	end	
always@(posedge clk or negedge rstn)
	begin
		if(rstn== 1'b0)
			ad_4 <=  14'd0;
		else if(counter_4 == 1'b1)
			ad_4 <= ad_tmp;
		else
			ad_4 <= ad_4;
	end	

	
always@(negedge head_flag or negedge rstn)
	begin
		if(rstn==1'b0)
		buffer_2 <= 14'd0;
		else
		buffer_2 <= ad_1 - 12'd1960;
	end	
	
always@(negedge head_flag or negedge rstn)
	begin
		if(rstn==1'b0)
		buffer_3 <= 14'd0;
		else
		buffer_3 <= ad_2 - 12'd2102;
	end	
	
always@(negedge head_flag or negedge rstn)
	begin
		if(rstn==1'b0)
		buffer_4 <= 14'd0;
		else
		buffer_4 <= ad_3 - 12'd2128;
	end	
	
always@(negedge head_flag or negedge rstn)
	begin
		if(rstn==1'b0)
		buffer_5 <= 14'd0;
		else
		buffer_5 <= ad_4 - 12'd2140;
	end	

assign sum = (buffer_2 + buffer_3 + buffer_4 + buffer_5);

	
always@(negedge head_flag or negedge rstn)
	begin
		if(rstn==1'b0)
		reff <= 14'd0;
		else 
		reff <= {{2{sum[13]}},sum}>>2;
	end	
		
	
endmodule
	
	/*
			else if(buffer_2[13]==0&&buffer_3[13]==0&&buffer_4[13]==0&&buffer_5[13]==0)
		reff <= (buffer_2 + buffer_3+buffer_4+buffer_5);
		else if(buffer_2[13]==0&&buffer_3[13]==0&&buffer_4[13]==0&&buffer_5[13]==1)
		reff <= (buffer_2 + buffer_3+buffer_4-(~buffer_5+1'b1));	
		else if(buffer_2[13]==0&&buffer_3[13]==0&&buffer_4[13]==1&&buffer_5[13]==0)
		reff <= (buffer_2 + buffer_3-(~buffer_4+1'b1)+buffer_5);	
		else if(buffer_2[13]==0&&buffer_3[13]==0&&buffer_4[13]==1&&buffer_5[13]==1)
		reff <= (buffer_2 + buffer_3-(~buffer_4+1'b1)-(~buffer_5+1'b1));		
		else if(buffer_2[13]==0&&buffer_3[13]==1&&buffer_4[13]==0&&buffer_5[13]==0)
		reff <= (buffer_2 -(~buffer_3+1'b1)+buffer_4+buffer_5);
		else if(buffer_2[13]==0&&buffer_3[13]==1&&buffer_4[13]==0&&buffer_5[13]==1)
		reff <= (buffer_2 -(~buffer_3+1'b1)+buffer_4-(~buffer_5+1'b1));
		else if(buffer_2[13]==0&&buffer_3[13]==1&&buffer_4[13]==1&&buffer_5[13]==0)
		reff <= (buffer_2 -(~buffer_3+1'b1)-(~buffer_4+1'b1)+buffer_5);
		else if(buffer_2[13]==1&&buffer_3[13]==0&&buffer_4[13]==0&&buffer_5[13]==0)
		reff <= (buffer_3+buffer_4+buffer_5-(~buffer_2+1'b1));
		else if(buffer_2[13]==1&&buffer_3[13]==0&&buffer_4[13]==0&&buffer_5[13]==1)
		reff <= (buffer_3+buffer_4-(~buffer_5+1'b1)-(~buffer_2+1'b1));
		else if(buffer_2[13]==1&&buffer_3[13]==0&&buffer_4[13]==1&&buffer_5[13]==0)
		reff <= (buffer_3+buffer_5-(~buffer_4+1'b1)-(~buffer_2+1'b1));
		else if(buffer_2[13]==1&&buffer_3[13]==0&&buffer_4[13]==1&&buffer_5[13]==1)
		reff <= (buffer_3-(~buffer_4+1'b1)-(~buffer_5+1'b1)-(~buffer_2+1'b1));
		else if(buffer_2[13]==1&&buffer_3[13]==1&&buffer_4[13]==0&&buffer_5[13]==0)
		reff <= (buffer_4+buffer_5-(~buffer_3+1'b1)-(~buffer_2+1'b1));
		else if(buffer_2[13]==1&&buffer_3[13]==1&&buffer_4[13]==0&&buffer_5[13]==1)
		reff <= (buffer_4-(~buffer_5+1'b1)-(~buffer_3+1'b1)-(~buffer_2+1'b1));
		else if(buffer_2[13]==1&&buffer_3[13]==1&&buffer_4[13]==1&&buffer_5[13]==0)
		reff <= (buffer_5-(~buffer_4+1'b1)-(~buffer_3+1'b1)-(~buffer_2+1'b1));
		else if(buffer_2[13]==1&&buffer_3[13]==1&&buffer_4[13]==1&&buffer_5[13]==1)
	
	
	*/
	
	
	
