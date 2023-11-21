# Miniproject-HEATWATCH
HEATWATCH(Temperature monitoring system)-[Digital and System Designs]

## Team
<details>

221CS209 - ANSH VIVEK MALHOTRA - anshvivekmalhotra.221cs209@nitk.edu.in

221CS227 - KAKARLA NAVEEN JANAKI RAM - naveenkakarla.221cs227@nitk.edu.in

221CS242 - ROHIT SUNIL - rohitsunil.221cs242@nitk.edu.in
</details>

## Abstract 
<details>
The Temperature Monitoring System is a digital project designed to measure and monitor
temperature levels in real-time. This system uses digital sensors, microcontrollers, and
display units to collect, process, and display temperature data. It can be used in labs after
some advancedments. It oĊers a practical application for various industries, including
environmental monitoring, healthcare, and industrial control. The project involves the
integration of a temperature sensor, counter IC, flip-flops, logic gates, a 7-segment LED
display, and power supply components on a breadboard or PCB. It performs various tasks like
it records and monitors temperature, it gives a security alarm when Temperature reaches
extremes. It displays the Temperature in both Celcius and Fahrenheit. It also displays the average
Temperature over 24hrs.
  
```
       Our motivation is to provide safety measures and safe working conditions for employes. After some advancements we can provide this setup for maintaining optimal Temperature in Industries to make   Industrial processes more effecient.


```
       Our unique contribution is Hypothetically we can implement Alarms, maintain optimal temperatureand share data using bluetooth/WiFi



</details>

## Working
<details>

The sensor (Dh t11) measures the atmospheric temperature and 
sends the value as input directly to a display which is used to 
display current temperature and it also gives an input to the main 
circuit after every 30 seconds which is set by using a clock.
We use a counter IC to count the number of times we get the 
temperature inputs.This is an upward counter and it increments 
every time we get an input from the sensor.
The value from the sensor is used as an input to the 11-bit adder in
which another 11-bit number is initialized to zero.
The result will then be the input for the divider.This result here 
will be the dividend in this dividor module and the divisor will be 
the value of the counter.
The output from this dividor module is directly displayed using 
another LCD which is used to display average temperature and the
same output is given as an input to 7 flip flops which store each of
the 7 bits of the output of divider.
Now we are using a 7 by 4 bit multiplier which multiplies the 7-bit
ouput from the flip flops and 4 bit output from the counter which 
is subtracted by 1 using the 4-bit subtractor.
The output from this multiplier will be another input for the 11-bit 
adder which adds the next incoming input to this .
The loop goes on and the average temperature is displayed every 
30 seconds.

Components-used
#Temperature Sensor (e.g., LM35, LM75, or thermistor)

#Counter IC (e.g., 74LS90 or 74LS192).

#Flip-Flops (e.g., 74LS74).

#Logic Gates (e.g., 74LS00, 74LS32).

#Display (e.g., 7-segment LED display).

#Power supply components (voltage regulator, capacitors, etc.).

#Breadboard or PCB for circuit construction.
</details>

## Logism working
<details>

                                             This is our Logism Simulation design. 
![WhatsApp Image 2023-10-25 at 21 01 03_fbb7a637](https://github.com/ANSHVIVEKMALHOTRA/Miniproject-HEATWATCH/assets/119870034/d7bb532c-6983-4796-8085-95bc584574c9)



    **Iteration 1**-We can see that the input of the numbers throught the Temperature sensors is 10 which is 00000001010 in binnary, 
    so the current temperature shows the output as 00000001010 and the average output also shows 00000001010 because there is only 
    one single iteration.
  ![WhatsApp Image 2023-10-25 at 21 01 08_aaffcf53](https://github.com/ANSHVIVEKMALHOTRA/Miniproject-HEATWATCH/assets/119870034/17d032a9-65bd-42c2-a1a0-d7fd2493f622)



    **Iteration 2**-We can see that the input of the numbers have changed to 20 in the second iteration which is 00000010100 in binnary,
    so the output shows to be 00000010100 in the current temperature but 00000001111 as average temperature which is 15.
![WhatsApp Image 2023-10-25 at 21 01 13_cee11c6d](https://github.com/ANSHVIVEKMALHOTRA/Miniproject-HEATWATCH/assets/119870034/f6b5f254-2bab-4a4a-abd3-badcb90b2bc8)
</details>

## Verilog
Main
<details>

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

</details>
Test bench 
<details>
  
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

</details>



