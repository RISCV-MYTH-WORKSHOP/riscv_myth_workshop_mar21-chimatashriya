# RISC-V CPU CORE

This repository is containg everything which one needs to know and need  to build  RISC-V pipelined core, which has support of base interger RV32I instruction format and is simualted using TL VERILOG and Makerchip IDE

# INTRODUCTION

RISC-V is a free and open ISA. We define ISA a way in which we can talk to the computer .Here is the official website for RISC-V-[GitHub](https://riscv.org/). Any RISC-V core is characterized by XLEN(Width of integer Register),size of address space and number of registers(32)

# TABLE OF CONTENTS

1. INTRODUCTION TO ABI

2. DIGITAL LOGIC WITH TL VERILOG AND MAKERCHIP IDE
    * AND GATE
    * OR GATE
    * XOR GATE
    * VECTOR OF 5 BITS
    * MUX
    * 7:0 MUX
    * COMBINATIONAL CALCULATOR
    * COUNTER
    * FIBONACCI SERIES
    * SEQUENTIAL CALCULATOR
    * PYTHAGORAS THEOREM
    * FIBONACCI IN PIPELINE
    * CYCLE CALCULATOR
    * VALID PYTHAGORAS
    * TOTAL DISTANCE USING VALIDITY
    * CYCLE CALCULATOR WITH VALIDITY
    
3. RISC-V CPU MICRO ARCHITECTURE
    * FETCH
    * DECODE
    * REGISTER FILE READ
    * ALU
    * REGISTER FILE WRITE
    * BRANCHES
    * TESTBENCH
    * VISUALIZATION RESULT
    * DIAGRAM RESULT
    
4.COMPLETING THE RISC-V CPU
    * FINAL CODE
    * FINAL VISUALIZATION AT 53 CYCLES
    * FINAL VISUALIZATION AT 56 CYCLES
    * FINAL DIAGRAM
    * FINAL WAVEFORM
    
5.DIRECT LINKS TO FOLDERS IN REPOSITORIES FOR MORE PROGRAMS

6.CONCLUSION

7.ACKNOWLEDGEMENTS

# **APPLICATION BINARY INTERFACE**
For users when talking about interface in terms of any application, what matters is the appearance and functionality. Any application programmer has to write multiple layers of programme for an application to run on hardware. 
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/ABI.png)
 
Through the above diagram we realise the process which is going on
1.For first building interface we need to use some standard libraries which can be through Java, C++ or C this interface is called Application Programming Interface which can     access OS and std.lib via another interface.
2. From Operating system in order to reach the machine language we will be using ISA. Parts of ISA which are accessible to programmer is called USER ISA and parts of ISA which      are accessible to OS are called User and System ISA.
3. For this architecture to be implemented on hardware we have interface called RTL which implements specifications.
4. Through system call the programmer can access parts (registers of RISC-V architecture) of OS. And this interface is called as Application Binary Interface (System Call           Interface) because if an application programmer wants to access hardware resources of processors then it has to do via registers only.

## **TO WRITE C PROGRAM OF COMPUTING SUM OF NUMBERS 1 TO 9 USING ASM LANGUAGE**
1.	**ALGORTITHM**
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/ALGORITHM.png)

**STEP 1**: Opening a leafpad 
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/first%20step.PNG)

**STEP 2**: Writing a C programme for sum up to 1 to 9 numbers
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/second%20step.PNG)

**STEP 3**: Opening another window for load of this programme where same programme will be written but in assembly language
 ![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/third%20step.PNG)
 
**STEP 4**: Writing the same programme in assembly language
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/fourth%20step.PNG)

**STEP 5**: using cat to show both programs in terminal itself
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/sixth%20step.PNG)

**STEP 6**: Running the programme in RISCV and checking the answer which matches exactly as the previous one. Sum of numbers 1 to 9 is 45.
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/seventh%20step.PNG) 

**STEP 7**: Using objdump and pipe less command to monitor disassembly window
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/eighth%20step.PNG) 

**STEP 8**: Observing main in the disassembly window
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/ninth%20step.PNG) 

**STEP 9**: The programme is running as we wrote it and wanted it to .
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/tenth%20step.PNG)


**STEP 10**: To be able to check memory loaction of loop and load subroutine  
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/loop%20and%20load.PNG)

**STEP 11**: To run the program from 0 till 100b0 and finding values of registers a0 and a1
 ![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/a0%20and%20a1.PNG)
 
**STEP 12**: To run the program from 0 till 100b0c and finding values of registers a0 and a1
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/a0%20and%20a1%20til%20100bc.PNG)

## **TO RUN A C PROGRAM ON RISCV-CPU**
 
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/RISCV%20ALGO.png)

**STEP 1**: cd and then writing https://github.com/kunalg123/riscv_workshop_collaterals.git to downlaod some basic labs.
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/riscv%20collateral%20first%20step.PNG)

**STEP 2**: picorv32.v is for our RISCV CPU whereas testbench is for verifying entire thing where picor v32 is unit under test(uut) and it is the place where we give all the initial conditions. Testbench is where we read the hex files into memory.
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/riscv%20collateral%20second%20and%20third%20step.PNG)

**STEP 3**: After running the above two commands one after the other we will get picorv32 and testbench which look as shown below
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/riscv%20collateral%20second%20step%20output.PNG)
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/riscv%20collateral%20third%20step%20output.PNG)

**STEP 4**: Now we would be running scripts which will help in conversion into hex file and then load it into CPU for running.
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/riscv%20collateral%20fourth%20step.PNG)

**STEP 5**: We can observe mabi and march for rv32i here
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/value%20of%20mabi%20and%20march.PNG)

**STEP 6**: For running this we use the following commands. We get output that is sum of 1 to 2 will be 3 and rightly so
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/riscv%20collateral%20fifth%20step.PNG)

**STEP 7**: The script will create a hex file to access the hex file we use following command
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/riscv%20collateral%20sixth%20step.PNG)

**STEP 8**: We see bitstream which gets loaded into firmware. Using vim firmware32.hex will give how exactly bitstream looks like 
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day2/riscv%20collateral%20sixth%20step%20output.PNG)

## **SUMMARY**
So basically, the testbench will read the memory and that is how it will get loaded inside testbench and the it will be used by picorv32(uut) and this is being processed under core and finally displays output

# **DIGITAL LOGIC WITH TL-VERILOG IN MAKERCHIP IDE**
 
Logic Gates are fundamental building blocks for digital circuits

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/logic%20gates.PNG)

## 1.AND GATE
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/AND%20GATE.PNG)

## 2.OR GATE
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/OR%20GATE.PNG)

## 3.XOR GATE
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/XOR%20GATE.PNG)

## 4.VECTOR OF 5 BITS

$out[4:0] creates a vector of 5 bits.Arithmetic operators operate on vectors as binary numbers

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/VECTOR%20OF%205%20BITS.PNG)

## 5.MUX

Through a Multiplexer we can select any input of our choice and forward the output to our chosen output line

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/MUX.PNG)

## 6. 7:0 MUX
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/7%20MUX.PNG)

## 7.COMBINATIONAL CALCULATOR

The circuit that can implement +,-,* and / on two input values. $rand[3:0] would be used to keep the input values small.

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/combinational%20calculator.PNG)

## 8.COUNTER
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/COUNTER.PNG)

## 9.FIBONACCI SERIES

Next value is the sum of the previous two values in Fibonacci series

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/FIBONACCI%20EXAMPLE.PNG)

## 10.SEQUENTIAL CALCULATOR

A Sequential Logic is one that is sequenced by a clock. A D fliflop transitions next state to current state on a rising clock edge.The circuit is constructed to enter a known state in response to a reset signal. Reset Signals will get logic to known state on reseting the state,it will go to either 0 or 1. The whole circuit can be viewed as a big state machine.

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/SEQUENTIAL%20CALCULATOR.PNG)

## 11.PYTHAGORAS THEOREM

Sum of squares of base and perpendicular should be equal to square of the hypotenuse

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/PYTHAGORAS%20THEOREM.PNG)

## 12.FIBONACCI IN PIPELINE
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/FIBONACCI%20PIPELINE.PNG)

## 13.CYCLE CALCULATOR

We can distribute our calculator over different stages. We can create multiple pipeline stages where we would provide the computation.Staging is although a physical attribute and has no impact on behavior since TL Verilog gives us the ability to model our project in a timing abstract representation

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/CYCLE%20CALCULATOR.PNG)

## 14.VALID PYTHAGORAS

Validity is a notion of when values or signals are meaningful. It provides easier debug,cleaner design,bettor error checking and automated clock gating.

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/VALID%20PYTHAGORAS.PNG)

## 15.TOTAL DISTANCE USING VALIDITY
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/TOTAL%20DISTANCE.PNG)

## 16.CYCLE CALCULATOR WITH VALIDITY

Using $valid_or_reset = $valid || $reset; as a  when condition for calculation instead of zeroing $out

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day3/Images/DAY%203%20ORIGINAL/CYCLE%20CALCULATOR%20WITH%20VALIDITY.PNG)

# MICROARCHITECTURE OF RISC-V CPU

## NEXT PC LOGIC

Program Counter is the pointer in the instruction memory of the instruction we are going to execute next. PC is sent to IMem as the index into the memory,the data that comes from Instruction memory is instruction itself.

## FETCH

Fetch comprises of our Program counter and also Immediate Memory. Here the processor will fetche the instruction from Immediate Memory ,which is pointed by the adress given by the PC.

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%204/DAY4/FETCH.PNG)

## DECODE

In Decode Stage we will be decoding the instructions . Processor is going to pick apart fields of instruction , source of instruction, the destination register etc. Based on instruction types instructions are divided into different fields. S-type - Store ,R-type - Register ,I-type - Immediate,U-type - Upper Immediate,J-type - Jump (Unconditional Jump) and B-type - Branch (Conditional Jump)

1. Instruction Immediate Decode
2. Other Fields Of Instructions
3. Use When Conditions to have that field only defined when the instruction type has such a field
4. Individual Instruction Decode

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%204/DAY4/DECODE.PNG)

## REGISTER FILE READ

So the instructions that we decode ,now we need to use the fields that we decoded to control the register read file. We have 2 read 1 write register file. Macro would provide a register file that defines signals listed . Based on the decode we want to check whether those sources are valid or not. We want to read the corresponding fields for the registers which have signal rs1 and rs2.
rd-read and destination register
When rd has a valid rs1 and rs2 we want to read that register. So we want to hook up the rs1/2 to signal which is index of the register to provide the read index and based on the validity of rs1/2 we have to enable the read operation. We will further hook up src1/2 to these signals which are more meaningfully named.

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%204/DAY4/REGISTER%20FILE%20READ.PNG)

## ALU

ALU is Arithmetic Logic Unit. We will assign the ALU $result for ADD and ADDI

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%204/DAY4/ALU.PNG)

## REGISTER FILE WRITE

We need to provide proper input assignments to enable RF write(wr) of $result to $rd(destination register) when $rd_valid is valid for an instruction.

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%204/DAY4/REGISTER%20FILE%20WRITE.PNG)

## BRANCHES

We are not only checking whether we will taking that branch or not but also whether that is a branch or not. $taken_br is being used as a ternary expression load on $is_bxxx, defaulting to 1'b0

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%204/DAY4/BRANCH.PNG)

## TESTBENCH

We will be telling the makerchip when simulation passes by monitoring the value in register x10(containing the sum)

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%204/DAY4/FINAL%20M4.PNG)

## VISUALIZATION RESULT

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%204/DAY4/D4%20VIZ.PNG)

## DIAGRAM RESULT

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%204/DAY4/DIAGRAM%20D4.PNG)

# COMPLETING THE RISC-V CORE

We have added conditional statements like jump,updated the instructions,ALU and PC. We also added memory to the existing code

## 1. FINAL CODE
![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%20%205/DAY%205/FINAL%20OUTPUT.PNG)

## 2. FINAL VISUALIZATION AT 53 CYCLES

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%20%205/DAY%205/FINAL%20VISUALIZATION.PNG)

## 3. FINAL VISUALIZATION AT 56 CYCLES

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%20%205/FINAL%20VISUALIZATION%202.PNG)

## 4. FINAL DIAGRAM

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%20%205/DAY%205/FINAL%20DIAGRAM.PNG)

## 5. FINAL WAVEFORM

![Alt Text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/blob/master/Day3_5/Day%20%205/DAY%205/WAVEFORM%20FINAL.PNG)

# DIRECT LINKS TO FOLDERS IN REPOSITORIES FOR MORE PROGRAMS

[GitHub](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/tree/master/Day2)
[GitHub](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/tree/master/Day3_5/Day3)
[GitHub](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/tree/master/Day3_5/Day%204)
[GitHub](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-chimatashriya/tree/master/Day3_5/Day%20%205)
[GitHub](https://myth3.makerchip.com/sandbox/0rkfAh7N/0oYhXZ)
# CONCLUSION

This project was done as a part of the RISC-V based MYTH workshop conducted by Kunal Ghosh and Steve Hoover. The current project implements almost the entire RV32I base instruction set.  We used TL-Verilog - a relatively new language whih significantly reduces the time spent on writing long codes and gives efficient results. We also used Makerchip a platform by Redwood IDE that helps in real time simulation of our core

# ACKNOWLEDGEMENTS

1.Kunal Ghosh 

2.Steve Hoover

3.Shivani Shah

4.Shivam Potdar

5.Vineet Jain
