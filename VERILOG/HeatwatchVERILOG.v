module MovingAverage(
    input wire clk,
    input wire reset,
    input wire [10:0] data_input,
    output wire [10:0] result_output
);

reg [10:0] sum;
reg [10:0] prev_sum;
reg [3:0] count;
reg [31:0] delay_counter;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        sum <= 11'b0;
        prev_sum <= 11'b0;
        count <= 4'b0000;
        delay_counter <= 32'b0;
    end else begin
       
        if (delay_counter == 32'h77359400) begin
            delay_counter <= 32'b0;
            count <= count + 1;
            prev_sum <= sum; 
            sum <= data_input + prev_sum * (count - 1);
        end else begin
            delay_counter <= delay_counter + 1;
        end
    end
end

assign result_output = (data_input + prev_sum * (count - 1)) / count;

endmodule

