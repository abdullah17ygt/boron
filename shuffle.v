module shuffle(
input [63:0]shuffle,
output[63:0] shuffle_out);


wire [3:0]W0;
wire [3:0]W1;
wire [3:0]W2;
wire [3:0]W3;
      
wire [3:0]W4;
wire [3:0]W5;
wire [3:0]W6;
wire [3:0]W7;
      
wire [3:0]W8;
wire [3:0]W9;
wire [3:0]W10;
wire [3:0]W11;
      
wire [3:0]W12;
wire [3:0]W13;
wire [3:0]W14;
wire [3:0]W15;

  
 assign W0   = shuffle[3:0]  ;    
 assign W1   = shuffle[7:4]  ;   
 assign W2   = shuffle[11:8] ;   
 assign W3   = shuffle[15:12];    
 
 assign W4   = shuffle[19:16];    
 assign W5   = shuffle[23:20];   
 assign W6   = shuffle[27:24];   
 assign W7   = shuffle[31:28];   
 
 assign W8  = shuffle [35:32];    
 assign W9  = shuffle [39:36];   
 assign W10 = shuffle [43:40];   
 assign W11 = shuffle [47:44];  
 
 assign W12  = shuffle[51:48];    
 assign W13  = shuffle[55:52];   
 assign W14  = shuffle[59:56];   
 assign W15  = shuffle[63:60];   
 
 
 
 

   
  assign shuffle_out[3:0]  = W2;
  assign shuffle_out[7:4]  = W3;
  assign shuffle_out[11:8] = W0;
  assign shuffle_out[15:12]= W1; 
  
  assign shuffle_out[19:16]= W6;
  assign shuffle_out[23:20]= W7;
  assign shuffle_out[27:24]= W4;
  assign shuffle_out[31:28]= W5; 
  
  assign shuffle_out[35:32]= W10;
  assign shuffle_out[39:36]= W11;
  assign shuffle_out[43:40]= W8;
  assign shuffle_out[47:44]= W9; 
  
  assign shuffle_out[51:48]= W14;
  assign shuffle_out[55:52]= W15;
  assign shuffle_out[59:56]= W12;
  assign shuffle_out[63:60]= W13;
                          
                          
                          

endmodule
