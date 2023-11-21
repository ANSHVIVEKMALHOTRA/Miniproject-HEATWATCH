# Miniproject-HEATWATCH
HEATWATCH(Temperature monitoring system)-[Digital and System Designs]

## Team
<details>

221CS209 - ANSH VIVEK MALHOTRA - anshvivekmalhotra.221cs209@nitk.edu.in

221CS227 - KAKARLA NAVEEN JANAKI RAM - naveenkakarla.221cs227@nitk.edu.in

221CS242 - ROHIT SUNIL - rohitsunil.221cs242@nitk.edu.in
</details>

## Working 
<details>
The sensor (Dh t11) measures the atmospheric temperature and sends the value as input directly to a display which is used to display current temperature and it also gives an input to the main circuit after every 30 seconds which is set by using a clock. We use a counter IC to count the number of times we get the temperature inputs.This is an upward counter and it increments every time we get an input from the sensor. The value from the sensor is used as an input to the 11-bit adder in which another 11-bit number is initialized to zero. The result will then be the input for the divider.This result here will be the dividend in this dividor module and the divisor will be the value of the counter. The output from this dividor module is directly displayed using another LCD which is used to display average temperature and the same output is given as an input to 7 flip flops which store each of the 7 bits of the output of divider. Now we are using a 7 by 4 bit multiplier which multiplies the 7-bit ouput from the flip flops and 4 bit output from the counter which is subtracted by 1 using the 4-bit subtractor. The output from this multiplier will be another input for the 11-bit adder which adds the next incoming input to this . The loop goes on and the average temperature is displayed every 30 seconds.
</details>

## Overview
<details>
We as a team worked in this project for the course Digital and Systems design (course code - CS201)

The Temperature Monitoring System is a digital project designed to measure and monitor temperature levels in real-time. This system uses digital sensors, and display units to collect, process, and display temperature data. It can be used in labs after some advancedments. It oĊers a practical application for various industries, including environmental monitoring, healthcare, and industrial control. The project involves the integration of a temperature sensor, counter IC, flip-flops, logic gates, a 7-segment LED display, and power supply components on a breadboard or PCB. It performs various tasks like it records and monitors temperature, it gives a security alarm when Temperature reaches extremes. It displays the Temperature in both Celcius and Fahrenheit. It also displays the average Temperature over 24hrs and also alerts when the temperature exceeds over a certain temperature 
## Team
</details>


## Unique Contribution
<details>
Our unique contribution to the project is that we are able to calculate the average temperature just by using basics of combinational circuits without even using higher memory elements. Also Hypothetically we can maintain optimal temperature and share data using bluetooth / WiFi.
</details>

## Languages and Simulator 
<details>
#LOGISM - Logism worked as simulator software that can be used for designing and testing logic circuits through a graphical user interface.

#Verilog - Verilog is a Hardware Description Language (HDL) for verification through simulation, for timing analysis, for test analysis (testability analysis and fault grading) and for logic synthesis.
</details>

## Components-used
<details>
#Temperature Sensor (e.g., LM35, LM75, or thermistor)

#Counter IC (e.g., 74LS90 or 74LS192).

#Flip-Flops (e.g., 74LS74).

#Logic Gates (e.g., 74LS00, 74LS32).

#Display (e.g., 7-segment LED display).

#Power supply components (voltage regulator, capacitors, etc.).

#Breadboard or PCB for circuit construction.
</details>

## Our Learning

<details>
This Project gives a good learning about Designing of Digital and Signal systems which opens up our knowledge in various types of IC (Integrated Circuit) chips, Logic gates, Sequential and Combinational circuits, Digital Integrated Circuits, Hardware modeling using VHDL,Logisim Simulation, Soldering, etc.
</details>
