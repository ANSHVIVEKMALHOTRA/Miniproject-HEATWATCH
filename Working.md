## Working
## Overall
The sensor (Dh t11) measures the atmospheric temperature and sends the value as input directly to a display which is used to display current temperature and it also gives an input to the main circuit after every 30 seconds which is set by using a clock. We use a counter IC to count the number of times we get the temperature inputs.This is an upward counter and it increments every time we get an input from the sensor. The value from the sensor is used as an input to the 11-bit adder in which another 11-bit number is initialized to zero. The result will then be the input for the divider.This result here will be the dividend in this dividor module and the divisor will be the value of the counter. The output from this dividor module is directly displayed using another LCD which is used to display average temperature and the same output is given as an input to 7 flip flops which store each of the 7 bits of the output of divider. Now we are using a 7 by 4 bit multiplier which multiplies the 7-bit ouput from the flip flops and 4 bit output from the counter which is subtracted by 1 using the 4-bit subtractor. The output from this multiplier will be another input for the 11-bit adder which adds the next incoming input to this . The loop goes on and the average temperature is displayed every 30 seconds.

## Logism working [demo]


                                             This is our Logism Simulation design. 
![image](https://github.com/ANSHVIVEKMALHOTRA/Miniproject-HEATWATCH/assets/119870034/154f2798-d6a1-4a4b-bc9f-3094c15a5ce5)


    **Iteration 1**-We can see that the input of the numbers throught the Temperature sensors is 10 which is 00000001010 in binnary, 
    so the current temperature shows the output as 00000001010 and the average output also shows 00000001010 because there is only 
    one single iteration.
![image](https://github.com/ANSHVIVEKMALHOTRA/Miniproject-HEATWATCH/assets/119870034/ff6bde34-ac7f-48df-947a-48d852a297c7)


    **Iteration 2**-We can see that the input of the numbers have changed to 20 in the second iteration which is 00000010100 in binnary,
    so the output shows to be 00000010100 in the current temperature but 00000001111 as average temperature which is 15.
![image](https://github.com/ANSHVIVEKMALHOTRA/Miniproject-HEATWATCH/assets/119870034/67b9facb-2238-46d8-9d3c-09ec99a141e9)
