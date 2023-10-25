## Working
## Overall
The sensor (Dh t11) measures the atmospheric temperature and sends the value as input directly to a display which is used to display current temperature and it also gives an input to the main circuit after every 30 seconds which is set by using a clock. We use a counter IC to count the number of times we get the temperature inputs.This is an upward counter and it increments every time we get an input from the sensor. The value from the sensor is used as an input to the 11-bit adder in which another 11-bit number is initialized to zero. The result will then be the input for the divider.This result here will be the dividend in this dividor module and the divisor will be the value of the counter. The output from this dividor module is directly displayed using another LCD which is used to display average temperature and the same output is given as an input to 7 flip flops which store each of the 7 bits of the output of divider. Now we are using a 7 by 4 bit multiplier which multiplies the 7-bit ouput from the flip flops and 4 bit output from the counter which is subtracted by 1 using the 4-bit subtractor. The output from this multiplier will be another input for the 11-bit adder which adds the next incoming input to this . The loop goes on and the average temperature is displayed every 30 seconds.

## Logism working [demo]
                                             This is our Logism Simulation design. 
![image](https://github.com/ANSHVIVEKMALHOTRA/Miniproject-HEATWATCH/assets/119870034/154f2798-d6a1-4a4b-bc9f-3094c15a5ce5)
                                             Iteration 1. 
![image](https://github.com/ANSHVIVEKMALHOTRA/Miniproject-HEATWATCH/assets/119870034/ec0e8e0a-a4c6-4ddd-9660-d4801d1974f5)
