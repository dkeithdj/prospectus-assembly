.386
.model flat, stdcall
option casemap :none

  include C:\masm32\include\windows.inc
  include C:\masm32\include\kernel32.inc
  include C:\masm32\include\masm32.inc
  includelib C:\masm32\lib\kernel32.lib
  includelib C:\masm32\lib\masm32.lib

.data
; HEADEAR START
  uMin     db  10,10,9,9,9,9,8,32, "UNIVERSITY OF MINDANAO"                  ,0
  major    db  10,9,9,8,32,        "Bachelor of Science in Computer Science" ,0
  dept     db  10,9,9,9,8,32,      "COLLEGE OF COMPUTING EDUCATION EDUCATION",0
  studName db  10,10,8,32,         "Name: "                                  ,0
  course   db  10,8,32,            "Course: "                                ,0
  year     db  10,8,32,            "Year: "                                  ,0
; HEADEAR END
  header   db  10,8,32,            "Subject Code",9,9,9,"Unit",9,9,"Subject Title",0
; 1ST YEAR 1ST SEM START
  y1s1     db  10,10,8,32,         "1st Year/1st Sem"                                                             ,0
  cs8      db  10,8,32,            "[1]CS 8        ",9,9,"3.0",9,9, "SOCIAL ISSUES AND PROFESSIONAL PRACTICE"        ,0,51
  ge2      db  10,8,32,            "[2]GE 2        ",9,9,"3.0",9,9, "PURPOSIVE COMMUNICATION W/ INTERACTIVE LEARNING",0,51
  ge15     db  10,8,32,            "[3]GE 15       ",9,9,"3.0",9,9, "ENVIRONMENTAL SCIENCE"                          ,0,51
  ge3      db  10,8,32,            "[4]GE 3        ",9,9,"3.0",9,9, "THE CONTEMPORARY WORLD"                         ,0,51
  pahf1    db  10,8,32,            "[5]PAHF 1      ",9,9,"2.0",9,9, "MOVEMENT COMPETENCY TRAINING"                   ,0,51
  cce101   db  10,8,32,            "[6]CCE 101/L   ",9,9,"3.0",9,9, "INTRODUCTION TO COMPUTING (1ST T)"              ,0,51
  cce109   db  10,8,32,            "[7]CCE 109/L   ",9,9,"3.0",9,9, "FUNDAMENTALS OF PROGRAMMING"                    ,0,51
  nstp1    db  10,8,32,            "[8]NSTP 1      ",9,9,"3.0",9,9, "NATIONAL SERVICE TRAINING PROGRAM 1"            ,0,51
; 1ST YEAR 1ST SEM END
; 1ST YEAR 2ND SEM START
  y1s2     db 10,10,8,32,          "1st Year/2nd Sem"                                                             ,0
  uge1     db 10,8,32,             "[1]UGE 1       ",9,9,"6.0",9,9, "READING COMPREHENSION",                          0,51
  ge1      db 10,8,32,             "[2]GE 1        ",9,9,"3.0",9,9, "UNDERSTANDING THE SELF",                         0,51
  ge4      db 10,8,32,             "[3]GE 4        ",9,9,"3.0",9,9, "MATHEMATICS IN THE MODERN WORLD",                0,51
  cce107   db 10,8,32,             "[4]CCE 107/L   ",9,9,"3.0",9,9, "INTERMEDIATE PROGRAMMING",                       0,51
  cs25     db 10,8,32,             "[5]CS 25       ",9,9,"3.0",9,9, "DISCRETE STRUCTURES 1",                          0,51
  mth101   db 10,8,32,             "[6]MTH 101     ",9,9,"3.0",9,9, "DIFFERENTIAL CALCULUS",                          0,51
  pahf2    db 10,8,32,             "[7]PAHF 2      ",9,9,"2.0",9,9, "EXERCISE-BASED FITNESS ACTIVITY",                0,51
  nstp2    db 10,8,32,             "[8]NSTP 2      ",9,9,"3.0",9,9, "NATIONAL SERVICE TRAINING PROGRAM 2",            0,51
; 1ST YEAR 2ND SEM END
; 2ND YEAR 1ST SEM START
  y2s1     db 10,10,8,32,          "2nd Year/1st Sem"                                                             ,0 
  hci101   db 10,8,32,             "[1]HCI 101     ",9,9,"3.0",9,9, "HUMAN COMPUTER INTERACTION",                    0,51
  cce104   db 10,8,32,             "[2]CCE 104/L   ",9,9,"3.0",9,9, "INFORMATION MANAGEMENT",                        0,51
  cs26     db 10,8,32,             "[3]CS 26/L     ",9,9,"3.0",9,9, "SOFTWARE DEVELOPMENT FUNDAMENTALS",             0,51
  cs3      db 10,8,32,             "[4]CS 3/L      ",9,9,"3.0",9,9, "DISCRETE STRUCTURES 2",                         0,51
  cce105   db 10,8,32,             "[5]CCE 105/L   ",9,9,"3.0",9,9, "DATA STRUCTURES AND ALGORITHMS",                0,51
  cst4     db 10,8,32,             "[6]CST 4/L     ",9,9,"3.0",9,9, "CS PROFESSIONAL TRACK 1",                       0,51
  mth103   db 10,8,32,             "[7]MTH 103/L   ",9,9,"3.0",9,9, "PROBABILITIES AND STATISTICS",                  0,51
  mth105   db 10,8,32,             "[8]MTH 105     ",9,9,"3.0",9,9, "INTEGRAL CALCULUS",                             0,51
  pahf3    db 10,8,32,             "[9]PAHF 3      ",9,9,"2.0",9,9, "DANCE AND SPORTS 1",                            0,51
; 2ND YEAR 1ST SEM END
; 2ND YEAR 2ND SEM START
  y2s2     db 10,10,8,32,          "2nd Year/2nd Sem"                                                             ,0
  ge6      db 10,8,32,             "[1]GE 6        ",9,9,"3.0",9,9,"RIZAL'S LIFE AND WORKS",                       0,51
  ge8      db 10,8,32,             "[2]GE 8        ",9,9,"3.0",9,9,"READINGS IN PHILIPPINE HISTORY",               0,51
  cst5     db 10,8,32,             "[3]CST 5/L     ",9,9,"3.0",9,9,"CS PROFESSIONAL TRACK 2",                      0,51
  ge11     db 10,8,32,             "[4]GE 11       ",9,9,"3.0",9,9,"THE ENTREPRENEURIAL MIND",                     0,51
  bsm222   db 10,8,32,             "[5]BSM 222     ",9,9,"3.0",9,9,"LINEAR ALGEBRA",                               0,51
  cs6      db 10,8,32,             "[6]CS 6/L      ",9,9,"3.0",9,9,"ALGORITHMS AND COMPLEXITY",                    0,51
  bsm312   db 10,8,32,             "[7]BSM 312     ",9,9,"3.0",9,9,"DIFFERENTIAL EQUATIONS",                       0,51
  cse7     db 10,8,32,             "[8]CSE 7/L     ",9,9,"3.0",9,9,"CS PROFESSIONAL ELECTIVE 1",                   0,51
  pahf4    db 10,8,32,             "[9]PAHF 4      ",9,9,"2.0",9,9,"DANCE AND SPORTS 2",                           0,51
; 2ND YEAR 2ND SEM END
; 3RD YEAR 1ST SEM START
  y3s1     db 10,10,8,32,          "3rd Year/1st Sem"                                                             ,0
  bsm325   db 10,8,32,             "[1]BSM 325     ",9,9,"3.0",9,9,"NUMERICAL ANALYSIS",                           0,51
  cst9     db 10,8,32,             "[2]CST 9/L     ",9,9,"3.0",9,9,"CS PROFESSIONAL TRACK 3",                      0,51
  cse10    db 10,8,32,             "[4]CSE 10/L    ",9,9,"3.0",9,9,"CS PROFESSIONAL ELECTIVE 2",                   0,51
  cs12     db 10,8,32,             "[5]CS 12/L     ",9,9,"3.0",9,9,"SOFTWARE ENGINEERING 1",                       0,51
  phys101  db 10,8,32,             "[7]PHYS 101/L  ",9,9,"4.0",9,9,"COLLEGE PHYSICS 1",                            0,51
; 3RD YEAR 1ST SEM END
; 3RD YEAR 2ND SEM START
  y3s2     db 10,10,8,32,          "3rd Year/2nd Sem"                                                             ,0
  phys102  db 10,8,32,             "[1]PHYS 102/L  ",9,9,"4.0",9,9,"COLLEGE PHYSICS 2",                            0,51
  cse13    db 10,8,32,             "[2]CSE 13/L    ",9,9,"3.0",9,9,"CS PROFESSIONAL ELECTIVE 3",                   0,51
  cs15     db 10,8,32,             "[3]CS 15/L     ",9,9,"3.0",9,9,"PROGRAMMING LANGUAGES",                        0,51
  ge20     db 10,8,32,             "[4]GE 20       ",9,9,"3.0",9,9,"READING VISUAL ARTS",                          0,51
  cst14    db 10,8,32,             "[5]CST 14/L    ",9,9,"3.0",9,9,"CS PROFESSIONAL TRACK 4",                      0,51
  cs11     db 10,8,32,             "[6]CS 11/L     ",9,9,"3.0",9,9,"ARCHITECTURE AND ORGANIZATION",                0,51
  cs17     db 10,8,32,             "[7]CS 17/L     ",9,9,"3.0",9,9,"SOFTWARE ENGINEERING 2",                       0,51
  uge2     db 10,8,32,             "[8]UGE 2       ",9,9,"3.0",9,9,"TECHNICAL WRITING IN THE DISCIPLINE",          0,51
; 3RD YEAR 2ND SEM END
; 3RD YEAR SUMMER SEM START
  y3ss     db 10,10,8,32,          "3rd Year/Summer"                                                             ,0
  cs16     db 10,8,32,             "[1]CS 16       ",9,9,"6.0",9,9,"PRACTICUM",                                    0,51
  cs20     db 10,8,32,             "[2]CS 20       ",9,9,"3.0",9,9,"CS PROFESSIONAL TRACK 5",                      0,51
; 3RD YEAR SUMMER SEM END
; 4TH YEAR 1ST SEM START
  y4s1     db 10,10,8,32,          "4th Year/2nd Sem"                                                             ,0
  cs19     db 10,8,32,             "[1]CS 19       ",9,9,"4.0",9,9,"OPERATING SYSTEMS",                            0,51
  caed     db 10,8,32,             "[2]CAED        ",9,9,"3.0",9,9,"CAREER AND PERSONALITY DEVELOPMENT",           0,51
  cs24     db 10,8,32,             "[3]CS 24       ",9,9,"3.0",9,9,"CS PROFESSIONAL TRACK 6",                      0,51
  cce106   db 10,8,32,             "[4]CCE 106     ",9,9,"3.0",9,9,"APPLICATIONS DEV'T AND EMERGING TECHNOLOGIES", 0,51
  cs21     db 10,8,32,             "[5]CS 21       ",9,9,"3.0",9,9,"NETWORKS AND COMMUNICATIONS",                  0,51
  cs18     db 10,8,32,             "[6]CS 18       ",9,9,"3.0",9,9,"CS THESIS WRITING 1",                          0,51
; 4TH YEAR 1ST SEM END
; 4TH YEAR 2ND SEM START
  y4s2     db 10,10,8,32,          "4th Year/2nd Sem"                                                             ,0
  cs23     db 10,8,32,             "[1]CS 23       ",9,9,"6.0",9,9,"CS THESIS WRITING 2",                          0,51
  cs22     db 10,8,32,             "[2]CS 22       ",9,9,"3.0",9,9,"INFORMATION ASSURANCE AND SECURITY",           0,51
; 4TH YEAR 2ND SEM END

; MENU
  selYL db 10,10,8,"1: 1st Year",10,"2: 2nd Year",10,"3: 3rd Year",10,"4: 4th Year",10,"Select Year Level: ",0
  errYL db 10,8,32,"Select only from 1-4",0

  selSE db 10,10,8,"1: 1st Sem",10,"2: 2nd Sem",10,"s: Summer",10,"Select Semester: ",0
  errSE db 10,8,32,"Select only from [1,2,s]",0

  comp   db 10,10,8,"Type [C] to comlete",0
  inv    db 10,10,8,"Invalid input, select the appropriate option",0
  selSU9 db 10,10,8,"Select Subject [1-9]: ",0
  selSU8 db 10,10,8,"Select Subject [1-8]: ",0
  selSU7 db 10,10,8,"Select Subject [1-7]: ",0
  selSU6 db 10,10,8,"Select Subject [1-6]: ",0
  selSU2 db 10,10,8,"Select Subject [1-2]: ",0

  totalU db "Total Units: ", 0

  total  DWORD ?


.data?
; INPUTS
	studNameIn  db 100 dup(?)
	courseIn    db 100 dup(?)
	yearIn      db 100 dup(?)
	semIn       db 100 dup(?)
	subIn       db 100 dup(?)
	year1sem1In db 10  dup(?) ;1st Year/1st Sem
  year1sem2In db 10  dup(?) ;1st Year/2nd Sem
  year2sem1In db 10  dup(?) ;2nd Year/1st Sem
  year2sem2In db 10  dup(?) ;2nd Year/2nd Sem

  selected db 500 dup(?)

  sel1 db 500 dup(?)
  sel2 db 500 dup(?)
  sel3 db 500 dup(?)
  sel4 db 500 dup(?)
  sel5 db 500 dup(?)
  sel6 db 500 dup(?)
  sel7 db 500 dup(?)
  sel8 db 500 dup(?)
  sel9 db 500 dup(?)

.code
start: 
  invoke ClearScreen
  invoke StdOut, addr uMin
  invoke StdOut, addr major
  invoke StdOut, addr dept
  invoke StdOut, addr studName
  invoke StdIn,  addr studNameIn, 100
  invoke StdOut, addr course
  invoke StdIn,  addr courseIn, 100
	invoke StdOut, addr year
  invoke StdIn,  addr yearIn, 100
  
  JMP display

display:
;1st Year/1st Sem
  invoke StdOut, addr y1s1
	invoke StdOut, addr header
  invoke StdOut, addr cs8
  invoke StdOut, addr ge2
  invoke StdOut, addr ge15
  invoke StdOut, addr ge3
  invoke StdOut, addr pahf1
  invoke StdOut, addr cce101
  invoke StdOut, addr cce109
  invoke StdOut, addr nstp1
;1st Year/2nd Sem
  invoke StdOut, addr y1s2
	invoke StdOut, addr header
  invoke StdOut, addr uge1
  invoke StdOut, addr ge1
  invoke StdOut, addr ge4
  invoke StdOut, addr cce107
  invoke StdOut, addr cs25
  invoke StdOut, addr mth101
  invoke StdOut, addr pahf2
  invoke StdOut, addr nstp2
;2nd year/1st sem
  invoke StdOut, addr y2s1
	invoke StdOut, addr header
  invoke StdOut, addr hci101
  invoke StdOut, addr cce104
  invoke StdOut, addr cs26
  invoke StdOut, addr cs3
  invoke StdOut, addr cce105
  invoke StdOut, addr cst4
  invoke StdOut, addr mth103
  invoke StdOut, addr mth105
	invoke StdOut, addr pahf3
;2nd year/2nd sem
  invoke StdOut, addr y2s2
	invoke StdOut, addr header
  invoke StdOut, addr ge6
  invoke StdOut, addr ge8
  invoke StdOut, addr cst5
  invoke StdOut, addr ge11
  invoke StdOut, addr bsm222
  invoke StdOut, addr cs6
  invoke StdOut, addr bsm312
  invoke StdOut, addr cse7
	invoke StdOut, addr pahf4
;3rd year/1st sem
  invoke StdOut, addr y3s1
	invoke StdOut, addr header
  invoke StdOut, addr bsm325
  invoke StdOut, addr cst9
  invoke StdOut, addr ge11
  invoke StdOut, addr cse10
  invoke StdOut, addr cs12
  invoke StdOut, addr ge15
  invoke StdOut, addr phys101
  invoke StdOut, addr cse7
;3rd year/2nd sem
  invoke StdOut, addr y3s2
	invoke StdOut, addr header
  invoke StdOut, addr phys102
  invoke StdOut, addr cse13
  invoke StdOut, addr cs15
  invoke StdOut, addr ge20
  invoke StdOut, addr cst14
  invoke StdOut, addr cs11
  invoke StdOut, addr cs17
  invoke StdOut, addr uge2
;3rd year/summer
  invoke StdOut, addr y3ss
	invoke StdOut, addr header
  invoke StdOut, addr cs16
  invoke StdOut, addr cs20
;4th year/1st sem
  invoke StdOut, addr y4s1
	invoke StdOut, addr header
  invoke StdOut, addr cs19
  invoke StdOut, addr caed
  invoke StdOut, addr cs24
  invoke StdOut, addr cce106
  invoke StdOut, addr cs21
  invoke StdOut, addr cs18
;4th year/2nd sem
  invoke StdOut, addr y4s2
	invoke StdOut, addr header
  invoke StdOut, addr cs23
  invoke StdOut, addr cs22
  
  jmp LEVEL

LEVEL:
  invoke StdOut, addr selYL
  invoke StdIn,  addr yearIn, 10
  .if yearIn == "1"
    jmp YEAR1
  ; .elseif yearIn == "2"
  ;   jmp YEAR2
  ; .elseif yearIn == "3"
  ;   jmp YEAR3
  ; .elseif yearIn == "4"
  ;   jmp YEAR4
  .else
    invoke StdOut, addr errYL
    jmp LEVEL
  .endif

; START YEAR CHOICE
YEAR1:
  invoke StdOut, addr selSE
  invoke StdIn,  addr semIn, 10
  .if semIn == "1"
    jmp SEM11
  ; .elseif semIn == "2"
  ;   jmp SEM12
  .else
    invoke StdOut, addr errSE
    jmp LEVEL
  .endif

; YEAR2:
;   invoke StdOut, addr selSE
;   invoke StdIn,  addr semIn, 10
;   .if semIn == "1"
;     jmp SEM21
;   .elseif semIn == "2"
;     jmp SEM22
;   .else
;     invoke StdOut, addr errSE
;     jmp LEVEL
;   .endif
;
; YEAR3:
;   invoke StdOut, addr selSE
;   invoke StdIn,  addr semIn, 10
;   .if semIn == "1"
;     jmp SEM31
;   .elseif semIn == "2"
;     jmp SEM32
;   .elseif semIn == "s"
;     jmp SEM3S
;   .else
;     invoke StdOut, addr errSE
;     jmp LEVEL
;   .endif
;
; YEAR4:
;   invoke StdOut, addr selSE
;   invoke StdIn,  addr semIn, 10
;   .if semIn == "1"
;     jmp SEM41
;   .elseif semIn == "2"
;     jmp SEM42
;   .else
;     invoke StdOut, addr errSE
;     jmp LEVEL
;   .endif
; END YEAR CHOICE

; START SEM1 CHOICE
SEM11:
  invoke ClearScreen
  invoke StdOut, addr comp
  invoke StdOut, addr y1s1
	invoke StdOut, addr header

  invoke StdOut, addr cs8
  invoke StdOut, addr ge2
  invoke StdOut, addr ge15
  invoke StdOut, addr ge3
  invoke StdOut, addr pahf1
  invoke StdOut, addr cce101
  invoke StdOut, addr cce109
  invoke StdOut, addr nstp1
  jmp SELSUB11

; SELECT SUBJECTS TO ADD
SELSUB11:
  invoke StdOut, addr selSU8
  invoke StdIn, addr subIn, 10
  .if subIn == "1"
  invoke StdOut, addr sel1
    add eax, 3
    sub eax, 1
    add total, eax
    invoke StdOut, addr cs8

    mov esi, offset cs8
    mov edi, offset sel1
    cld
    mov ecx, lengthof cs8
    rep movsb
  .elseif subIn == "2"
    add eax, 3
    sub eax, 1
    add total, eax
    invoke StdOut, addr ge2

    mov esi, offset ge2
    mov edi, offset sel2
    cld
    mov ecx, lengthof ge2
    rep movsb
  .elseif subIn == "3"
    add eax, 3
    sub eax, 1
    add total, eax
    invoke StdOut, addr ge15

    mov esi, offset ge15
    mov edi, offset sel3
    cld
    mov ecx, lengthof ge15
    rep movsb
  .elseif subIn == "4"
    add eax, 3
    sub eax, 1
    add total, eax
    invoke StdOut, addr ge3

    mov esi, offset ge3
    mov edi, offset sel4
    cld
    mov ecx, lengthof ge3
    rep movsb
  .elseif subIn == "5"
    add eax, 2
    sub eax, 1
    add total, eax
    invoke StdOut, addr pahf1

    mov esi, offset pahf1
    mov edi, offset sel5
    cld
    mov ecx, lengthof pahf1
    rep movsb
  .elseif subIn == "6"
    add eax, 3
    sub eax, 1
    add total, eax
    invoke StdOut, addr cce101

    mov esi, offset cce101
    mov edi, offset sel6
    cld
    mov ecx, lengthof cce101
    rep movsb
  .elseif subIn == "7"
    add eax, 3
    sub eax, 1
    add total, eax
    invoke StdOut, addr cce109

    mov esi, offset cce109
    mov edi, offset sel7
    cld
    mov ecx, lengthof cce109
    rep movsb
  .elseif subIn == "8"
    add eax, 3
    sub eax, 1
    add total, eax
    invoke StdOut, addr nstp1

    mov esi, offset nstp1
    mov edi, offset sel8
    cld
    mov ecx, lengthof nstp1
    rep movsb
  .elseif subIn == "D"
    jmp TOTAL11
  .else
    invoke StdOut, addr inv
    jmp SELSUB11
  .endif
  jmp SELSUB11

  

; SUMMARIZES SELECTED SUBJECTS
TOTAL11:
  mov eax, total 
  invoke dwtoa, eax, addr subIn
  invoke ClearScreen
  invoke StdOut, addr uMin
  invoke StdOut, addr major
  invoke StdOut, addr dept
  invoke StdOut, addr studName
  invoke StdOut,  addr studNameIn
  invoke StdOut, addr course
  invoke StdOut,  addr courseIn
	invoke StdOut, addr year
  invoke StdOut,  addr yearIn

  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr sel3
  invoke StdOut, addr sel4
  invoke StdOut, addr sel5
  invoke StdOut, addr sel6
  invoke StdOut, addr sel7
  invoke StdOut, addr sel8
  ;
  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr subIn 

  jmp EXIT



EXIT:

invoke ExitProcess, 0

end start


; SELSUB11:
;   invoke StdOut, addr selSU8
;   invoke StdIn, addr subIn, 10
;   .if subIn == "1"
;   .elseif subIn == "2"
;   .elseif subIn == "3"
;   .elseif subIn == "4"
;   .elseif subIn == "5"
;   .elseif subIn == "6"
;   .elseif subIn == "7"
;   .elseif subIn == "8"
;   .elseif subIn == "9"
;   .elseif subIn == "D"
;   .endif
;
