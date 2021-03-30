# **DIGITAL LOGIC WITH TL-VERILOG IN MAKERCHIP IDE**
 
Logic Gates are fundamental building blocks for digital circuits

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/logic%20gates.PNG)

## ** 1.AND GATE**
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/AND%20GATE.PNG)

## ** 2.OR GATE**
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/OR%20GATE.PNG)

## ** 3.XOR GATE**
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/XOR%20GATE.PNG)

## ** 4.VECTOR OF 5 BITS**

$out[4:0] creates a vector of 5 bits.Arithmetic operators operate on vectors as binary numbers

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/VECTOR%20OF%205%20BITS.PNG)

## ** 5.MUX**

Through a Multiplexer we can select any input of our choice and forward the output to our chosen output line

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/MUX.PNG)

## ** 6.7:0 MUX**
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/7%20MUX.PNG)

## ** 7.COMBINATIONAL CALCULATOR**

The circuit that can implement +,-,* and / on two input values. $rand[3:0] would be used to keep the input values small.

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/combinational%20calculator.PNG)

## ** 8.COUNTER**
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/COUNTER.PNG)

## ** 9.FIBONACCI SERIES**

Next value is the sum of the previous two values in Fibonacci series

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/FIBONACCI%20EXAMPLE.PNG)

## ** 10.SEQUENTIAL CALCULATOR**

A Sequential Logic is one that is sequenced by a clock. A D fliflop transitions next state to current state on a rising clock edge.The circuit is constructed to enter a known state in response to a reset signal. Reset Signals will get logic to known state on reseting the state,it will go to either 0 or 1. The whole circuit can be viewed as a big state machine.

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/SEQUENTIAL%20CALCULATOR.PNG)

## ** 11.PYTHAGORAS THEOREM**

Sum of squares of base and perpendicular should be equal to square of the hypotenuse

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/PYTHAGORAS%20THEOREM.PNG)

## ** 12.FIBONACCI IN PIPELINE**
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/FIBONACCI%20PIPELINE.PNG)

## ** 13.CYCLE CALCULATOR**

We can distribute our calculator over different stages. We can create multiple pipeline stages where we would provide the computation.Staging is although a physical attribute and has no impact on behavior since TL Verilog gives us the ability to model our project in a timing abstract representation

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/CYCLE%20CALCULATOR.PNG)

## ** 14.VALID PYTHAGORAS**

Validity is a notion of when values or signals are meaningful. It provides easier debug,cleaner design,bettor error checking and automated clock gating.

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/VALID%20PYTHAGORAS.PNG)

## ** 15.TOTAL DISTANCE USING VALIDITY**
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/TOTAL%20DISTANCE.PNG)

## ** 16.CYCLE CALCULATOR WITH VALIDITY**

Using $valid_or_reset = $valid || $reset; as a  when condition for calculation instead of zeroing $out

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/CYCLE%20CALCULATOR%20WITH%20VALIDITY.PNG)
