module boron(
input [63:0]plaintext,
input clk,rst,

output [63:0]chipertext
    );
wire [79:0] a;
wire [63:0] c,e,f,g,i;
wire [63:0] out_s_box;
wire [4:0]counter;

 boron_encrypt enc_boron (.plaintex(plaintext),.masterkey(a),.clk(clk),.rst(rst),.counter(counter));   
 dflipflop   dflp  (.D(a),.Q(i),.clk(clk));
 
 add_round     adround (.key_round(i[63:0]),.current_state(f),.current_state_o(g),.rst(rst));
 
 
 
 s_box_layer   s6  (.p(g[3:0])  ,.s_out(out_s_box[3:0]));
 s_box_layer   s7  (.p(g[7:4])  ,.s_out(out_s_box[7:4]));
 s_box_layer   s8  (.p(g[11:8]) ,.s_out(out_s_box[11:8]));
 s_box_layer   s9  (.p(g[15:12]),.s_out(out_s_box[15:12]));
 s_box_layer   s10 (.p(g[19:16]),.s_out(out_s_box[19:16]));
 s_box_layer   s11 (.p(g[23:20]),.s_out(out_s_box[23:20]));
 s_box_layer   s12 (.p(g[27:24]),.s_out(out_s_box[27:24]));
 s_box_layer   s13 (.p(g[31:28]),.s_out(out_s_box[31:28]));
 s_box_layer   s14 (.p(g[35:32]),.s_out(out_s_box[35:32]));
 s_box_layer   s15 (.p(g[39:36]),.s_out(out_s_box[39:36]));
 s_box_layer   s21 (.p(g[43:40]),.s_out(out_s_box[43:40]));
 s_box_layer   s16 (.p(g[47:44]),.s_out(out_s_box[47:44]));
 s_box_layer   s17 (.p(g[51:48]),.s_out(out_s_box[51:48]));
 s_box_layer   s18 (.p(g[55:52]),.s_out(out_s_box[55:52]));
 s_box_layer   s19 (.p(g[59:56]),.s_out(out_s_box[59:56]));
 s_box_layer   s20 (.p(g[63:60]),.s_out(out_s_box[63:60]));


 
 shuffle       sufle (.shuffle(out_s_box),.shuffle_out(c));
 round_per     rper (.p_i(c),.p_o(e));
 xor_op        xorp (.xor_i(e),.xor_o(f));
 add_round     adround1 (.key_round(i[63:0]),.current_state(f),.current_state_o(chipertext),.rst(rst));
   
    
endmodule
