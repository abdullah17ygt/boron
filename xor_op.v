module xor_op(
input clk,
input [63:0] xor_i,
input rst,
output  [63:0] xor_o,
input [4:0] counter
    );
                 
wire [15:0]W0;
wire [15:0]W1;
wire [15:0]W2;
wire [15:0]W3;
      
wire [15:0]Q0;
wire [15:0]Q1;
wire [15:0]Q2;
wire [15:0]Q3;
  

    assign W0 = xor_i[15:0];  
    assign W1 = xor_i[31:16];
    assign W2 = xor_i[47:32];
    assign W3 = xor_i[63:48];
    
    assign Q3 = (W3 ^ W2 ^ W0) ;
    assign Q2 = (W2 ^ W0) ;
    assign Q1 = (W3 ^ W1) ;
    assign Q0 = (W3 ^ W1 ^ W0);
    
       assign  xor_o [15:0]  = Q0;
       assign  xor_o [31:16] = Q1;
       assign  xor_o [47:32] = Q2;
       assign  xor_o [63:48] = Q3;    


    
   /* always@(*) begin    
        if (rst) begin  
        xor_o = 64'b0;      
                /*xor_o [15:0]  = Q0;
                xor_o [31:16] = Q1;
                xor_o [47:32] = Q2;
                xor_o [63:48] = Q3;*/
       /* end
        else begin
            if (counter < 24 )begin
                xor_o [15:0]  = Q0;
                xor_o [31:16] = Q1;
                xor_o [47:32] = Q2;
                xor_o [63:48] = Q3;
            end
            else begin
                xor_o2 [15:0]  = Q0;
                xor_o2 [31:16] = Q1;
                xor_o2 [47:32] = Q2;
                xor_o2 [63:48] = Q3;
            end
        end     
   end */ 
endmodule
