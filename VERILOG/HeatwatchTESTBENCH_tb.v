module testbench;
  reg clk;
  reg reset;
  reg [10:0] data_input;
  wire [10:0] result_output;

  MovingAverage uut (
    .clk(clk),
    .reset(reset),
    .data_input(data_input),
    .result_output(result_output)
  );


  always begin
    #5 clk = ~clk; 
  end

  initial begin
    clk = 0;
    reset = 0;
    data_input = 11'b00000000000; 

    reset = 1;
    #30 reset = 0;

    
    #30 data_input = 11'b00000000001; 
    #30 data_input = 11'b00000000010; 
    #30 data_input = 11'b00000000011;
    $finish;
  end
  initial begin
    $monitor("Time=%d: Data Input=%b, Result Output=%b", $time, data_input, result_output);
  end
endmodule
