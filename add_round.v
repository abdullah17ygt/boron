
module add_round(
input [63:0] key_round,
input rst,
input [63:0] current_state,
input [63:0] current_state1,
output reg [63:0]current_state_o,
input [4:0] counter

    );
    
  //assign   current_state_o = key_round ^ current_state;

   always@ (*) begin 
//       if (rst) begin
//        current_state_o = 64'b0;  
//        end 
//       else begin //if //(counter == 0) begin
        current_state_o = key_round ^ current_state;
       //end 
//       else begin
//         current_state_o = key_round ^ current_state1;
//       end 
   
   end
endmodule
