
module boron_encrypt(
input clk,rst,
input [63:0] plaintex,

output reg [79:0] masterkey,
output reg [4:0] counter);

wire [79:0] roundkey,key;
reg  [79:0] roundkey_q;




key_schedule s1 (.key_register(key),.round_key(roundkey),.tur_number(counter),.rst(rst));

assign key = (counter == 0) ? 0 : roundkey_q;

    always @(posedge clk)begin  
       if(rst) begin
        counter <= 0;
       end else begin
            roundkey_q <= roundkey;
            if(counter < 27) begin
                counter <= counter+1;
            end else begin
             counter <= counter;
            end
        end
        masterkey <= roundkey;
    end
endmodule
