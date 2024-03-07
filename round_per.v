
module round_per(
input [63:0] p_i,

output [63:0] p_o

    );
    
wire [15:0] b0,b1,b2,b3;  

reg[15:0] a0,a1,a2,a3; 
    
assign b0 = p_i[15:0] ;
assign b1 = p_i[31:16];
assign b2 = p_i[47:32];
assign b3 = p_i[63:48];
   
    always @ (*) begin
    
        a0 = {b0[14:0],b0[15]};
        a1 = {b1[11:0],b1[15:12]};
        a2 = {b2[8:0],b2[15:9]};
        a3 = {b3[6:0],b3[15:7]};
    
    end
   
assign p_o = {a3,a2,a1,a0}; 
    
endmodule
