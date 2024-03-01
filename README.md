# A program that selects subjects on the prospectus of **BSCS** written in **MASM32**

Commands to run the program:

> assuming you have masm32 in your path

## Windows

Assemble file:

`ml /c /coff /Zd prospectus.asm`

Link:

`link /SUBSYSTEM:CONSOLE prospectus.obj`

Run:

`prospectus.exe`

Or you could run with the batch script:

`masm.bat prospectus.asm`
