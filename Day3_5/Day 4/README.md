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
