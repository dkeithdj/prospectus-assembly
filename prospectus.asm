.386
.model flat, stdcall
option casemap :none

  include C:\masm32\include\windows.inc
  include C:\masm32\include\kernel32.inc
  include C:\masm32\include\masm32.inc
  includelib C:\masm32\lib\kernel32.lib
  includelib C:\masm32\lib\masm32.lib

.data
; HEADER START
  uMin     db  10,10,9,9,9,9,9,9,9,8,32, "UNIVERSITY OF MINDANAO"                  ,0
  major    db  10,9,9,9,9,9,9,8,32,        "Bachelor of Science in Computer Science" ,0
  dept     db  10,9,9,9,9,9,9,8,32,      "COLLEGE OF COMPUTING EDUCATION EDUCATION",0
  studName db  10,10,8,32,         "Name: "                                  ,0
  course   db  10,8,32,            "Course: "                                ,0
  year     db  10,8,32,            "Year: "                                  ,0

; BORDERS AND HEADER
  plainBor db  10,8,32,            "___________________________________________________________________________________________",0
  ;YEAR AND SEM HERE
  border   db  10,8,32,            "|-------------|--|----|--|-------------------------------------------------|--|-----------|",0,51
  header   db  10,8,32,            "|Subject Code |  |Unit|  |Subject Title                                    |  |Prereq.    |",0,51

; 1ST YEAR 1ST SEM START
  y1s1     db  10,8,32,            "|                                   1st Year/1st Sem                                      |",0
  cs8      db  10,8,32,            "|[1]CS 8      |  |3.0 |  |SOCIAL ISSUES AND PROFESSIONAL PRACTICE          |  |None       |",0,51
  ge2      db  10,8,32,            "|[2]GE 2      |  |6.0 |  |PURPOSIVE COMMUNICATION W/ INTERACTIVE LEARNING  |  |None       |",0,51
  ge15     db  10,8,32,            "|[3]GE 15     |  |3.0 |  |ENVIRONMENTAL SCIENCE                            |  |None       |",0,51
  ge3      db  10,8,32,            "|[4]GE 3      |  |3.0 |  |THE CONTEMPORARY WORLD                           |  |None       |",0,51
  pahf1    db  10,8,32,            "|[5]PAHF 1    |  |2.0 |  |MOVEMENT COMPETENCY TRAINING                     |  |None       |",0,51
  cce101   db  10,8,32,            "|[6]CCE 101/L |  |3.0 |  |INTRODUCTION TO COMPUTING (1ST T)                |  |None       |",0,51
  cce109   db  10,8,32,            "|[7]CCE 109/L |  |3.0 |  |FUNDAMENTALS OF PROGRAMMING                      |  |None       |",0,51
  nstp1    db  10,8,32,            "|[8]NSTP 1    |  |3.0 |  |NATIONAL SERVICE TRAINING PROGRAM 1              |  |None       |",0,51
; 1ST YEAR 1ST SEM END

; 1ST YEAR 2ND SEM START
  y1s2     db  10,8,32,            "|                                   1st Year/2nd Sem                                      |",0
  uge1     db  10,8,32,            "|[1]UGE 1     |  |6.0 |  |READING COMPREHENSION                            |  |GE 2       |",0,51
  ge1      db  10,8,32,            "|[2]GE 1      |  |3.0 |  |UNDERSTANDING THE SELF                           |  |None       |",0,51
  ge4      db  10,8,32,            "|[3]GE 4      |  |3.0 |  |MATHEMATICS IN THE MODERN WORLD                  |  |None       |",0,51
  cce107   db  10,8,32,            "|[4]CCE 107/l |  |3.0 |  |INTERMEDIATE PROGRAMMING                         |  |CCE 109/L  |",0,51
  cs25     db  10,8,32,            "|[5]CS 25     |  |3.0 |  |DISCRETE STRUCTURES 1                            |  |None       |",0,51
  mth101   db  10,8,32,            "|[6]MTH 101   |  |3.0 |  |DIFFERENTIAL CALCULUS                            |  |None       |",0,51
  pahf2    db  10,8,32,            "|[7]PAHF 2    |  |2.0 |  |EXERCISE-BASED FITNESS ACTIVITY                  |  |PAHF 1     |",0,51
  nstp2    db  10,8,32,            "|[8]NSTP 2    |  |3.0 |  |NATIONAL SERVICE TRAINING PROGRAM 2              |  |NSTP 1     |",0,51
; 1ST YEAR 2ND SEM END

; 2ND YEAR 1ST SEM START
  y2s1     db  10,8,32,            "|                                   2nd Year/1st Sem                                      |",0
  hci101   db  10,8,32,            "|[1]HCI 101   |  |3.0 |  |HUMAN COMPUTER INTERACTION                       |  |CCE 107/L  |",0,51
  cce104   db  10,8,32,            "|[2]CCE 104/L |  |3.0 |  |INFORMATION MANAGEMENT                           |  |CCE 107/L  |",0,51
  cs26     db  10,8,32,            "|[3]CS 26/L   |  |3.0 |  |SOFTWARE DEVELOPMENT FUNDAMENTALS                |  |CCE 107/L  |",0,51
  cs3      db  10,8,32,            "|[4]CS 3/L    |  |3.0 |  |DISCRETE STRUCTURES 2                            |  |CS 25      |",0,51
  cce105   db  10,8,32,            "|[5]CCE 105/L |  |3.0 |  |DATA STRUCTURES AND ALGORITHMS                   |  |CCE 107/L  |",0,51
  cst4     db  10,8,32,            "|[6]CST 4/L   |  |3.0 |  |CS PROFESSIONAL TRACK 1                          |  |CCE 107/L  |",0,51
  mth103   db  10,8,32,            "|[7]MTH103/L  |  |3.0 |  |PROBABILITIES AND STATISTICS                     |  |GE 4       |",0,51
  mth105   db  10,8,32,            "|[8]MTH 105   |  |3.0 |  |INTEGRAL CALCULUS                                |  |MTH 101    |",0,51
  pahf3    db  10,8,32,            "|[9]PAHF 3    |  |2.0 |  |DANCE AND SPORTS 1                               |  |PAHF 2     |",0,51
; 2ND YEAR 1ST SEM END

; 2ND YEAR 2ND SEM START
  y2s2     db  10,8,32,            "|                                   2nd Year/2nd Sem                                      |",0
  ge6      db  10,8,32,            "|[1]GE6       |  |3.0 |  |RIZAL'S LIFE AND WORKS                           |  |None       |",0,51
  ge8      db  10,8,32,            "|[2]GE8       |  |3.0 |  |READINGS IN PHILIPPINE HISTORY                   |  |None       |",0,51
  cst5     db  10,8,32,            "|[3]CST 5/L   |  |2.0 |  |CS PROFESSIONAL TRACK 2                          |  |CST 4/L    |",0,51
  ge11     db  10,8,32,            "|[4]GE 11     |  |3.0 |  |THE ENTREPRENEURIAL MIND                         |  |None       |",0,51
  bsm222   db  10,8,32,            "|[5]BSM 222   |  |3.0 |  |LINEAR ALGEBRA                                   |  |MTH 101    |",0,51
  cs6      db  10,8,32,            "|[6]CS 6/L    |  |2.0 |  |ALGORITHMS AND COMPLEXITY                        |  |CCE 105/L  |",0,51
  bsm312   db  10,8,32,            "|[7]BSM 312   |  |3.0 |  |DIFFERENTIAL EQUATIONS                           |  |MTH 105    |",0,51
  cse7     db  10,8,32,            "|[8]CSE 7/L   |  |2.0 |  |CS PROFESSIONAL ELECTIVE 1                       |  |CCE 104/L  |",0,51
  pahf4    db  10,8,32,            "|[9]PAHF 4    |  |2.0 |  |DANCE AND SPORTS 2                               |  |PAHF 3     |",0,51
; 2ND YEAR 2ND SEM END

; 3RD YEAR 1ST SEM START
  y3s1     db  10,8,32,            "|                                   3rd Year/1st Sem                                      |",0
  ge5      db  10,8,32,            "|[1]GE 5      |  |3.0 |  |SCIENCE, TECHNOLOGY AND SOCIETY                  |  |None       |",0,51
  cs12     db  10,8,32,            "|[2]CS 12/L   |  |3.0 |  |SOFTWARE ENGINEERING 1                           |  |CS 26/L    |",0,51
  cst9     db  10,8,32,            "|[3]CST 9/L   |  |3.0 |  |CS PROFESSIONAL TRACK 3                          |  |CST 5/L    |",0,51
  cs15     db  10,8,32,            "|[4]CST 15/L  |  |3.0 |  |PROGRAMMING LANGUAGES                            |  |CS 26/L    |",0,51
  bsm325   db  10,8,32,            "|[5]BSM 325   |  |3.0 |  |NUMERICAL ANALYSIS                               |  |BSM 222,   |",10,8,32,
                                   "|             |  |    |  |                                                 |  |BSM 312    |",0,51
  phys101  db  10,8,32,            "|[6]PHYS 101/L|  |4.0 |  |COLLEGE PHYSICS 1                                |  |GE 4       |",0,51
  ge7      db  10,8,32,            "|[7]GE 7      |  |3.0 |  |ART APPRECIATION                                 |  |None       |",0,51
  cs11     db  10,8,32,            "|[8]CS 11/L   |  |3.0 |  |ARCHITECTURE AND ORGANIZATION                    |  |CS 3/L     |",0,51
; 3RD YEAR 1ST SEM END

; 3RD YEAR 2ND SEM START
  y3s2     db  10,8,32,            "|                                   3rd Year/2nd Sem                                      |",0
  cs20     db  10,8,32,            "|[1]CS 20/L   |  |3.0 |  |CS PROFESSIONAL TRACK 5                          |  |CS 15/L    |",0,51
  ge20     db  10,8,32,            "|[2]GE 20     |  |3.0 |  |READING VISUAL ARTS                              |  |None       |",0,51
  cs17     db  10,8,32,            "|[3]CS 17/L   |  |3.0 |  |SOFTWARE ENGINEERING 2                           |  |CS 12/L    |",0,51
  cse13    db  10,8,32,            "|[4]CSE 13/L  |  |3.0 |  |CS PROFESSIONAL ELECTIVE 3                       |  |CSE 7/L    |",0,51
  phys102  db  10,8,32,            "|[5]PHYS 102/L|  |4.0 |  |COLLEGE PHYSICS 2                                |  |PHYS 101/L |",0,51
  cst14    db  10,8,32,            "|[6]CST 14/L  |  |3.0 |  |CS PROFESSIONAL TRACK 4                          |  |CST 9/L    |",0,51
  cse10    db  10,8,32,            "|[7]CSE 10/L  |  |3.0 |  |CS PROFESSIONAL ELECTIVE 2                       |  |CS 6/L     |",0,51
  uge2     db  10,8,32,            "|[8]UGE 2     |  |3.0 |  |TECHNICAL WRITING IN THE DISCIPLINE              |  |UGE 1      |",0,51
; 3RD YEAR 2ND SEM END

; 3RD YEAR SUMMER SEM START
  y3ss     db  10,8,32,            "|                                   3rd Year/Summer                                       |",0
  ge9      db  10,8,32,            "|[1]GE 9      |  |3.0 |  |ETHICS (DISCIPLINAL)                             |  |None       |",0,51
  cs16     db  10,8,32,            "|[2]CS 16     |  |6.0 |  |PRACTICUM                                        |  |CS 17,     |",10,8,32,
                                   "|             |  |    |  |                                                 |  |CS 11/L    |",0,51
; 3RD YEAR SUMMER SEM END

; 4TH YEAR 1ST SEM START
  y4s1     db  10,8,32,            "|                                   4th Year/1st Sem                                      |",0
  cce106   db  10,8,32,            "|[1]CS 106/L  |  |3.0 |  |APPLICATION DEVELOPMENT AND EMERGING TECHNOLOGIES|  |CST 9/L    |",0,51
  cs18     db  10,8,32,            "|[2]CS 18/L   |  |3.0 |  |CS THESIS WRITING 1                              |  |CS 17/L,   |",10,8,32,
                                   "|             |  |    |  |                                                 |  |CSE 13/L   |",0,51
  cs19     db  10,8,32,            "|[3]CS 19/L   |  |4.0 |  |OPERATING SYSTEMS                                |  |CS 11/L    |",0,51
  cs24     db  10,8,32,            "|[4]CS 24/L   |  |3.0 |  |CS PROFESSIONAL TRACK 6                          |  |CS 20/L    |",0,51
  cs21     db  10,8,32,            "|[5]CS 21/L   |  |3.0 |  |NETWORKS AND COMMUNICATIONS                      |  |CS 11/L    |",0,51
; 4TH YEAR 1ST SEM END

; 4TH YEAR 2ND SEM START
  y4s2     db  10,8,32,            "|                                   4th Year/2nd Sem                                      |",0
  caed500  db  10,8,32,            "|[1]CAED 500c |  |3.0 |  |CAREER AND PERSONALITY DEVELOPMENT               |  |4th year   |",10,8,32,
                                   "|             |  |    |  |                                                 |  |standing   |",0,51
  cs22     db  10,8,32,            "|[2]CS 22/L   |  |3.0 |  |INFORMATION ASSURANCE AND SECURITY               |  |CS 21/L    |",0,51
  cs23     db  10,8,32,            "|[3]CS 23/L   |  |6.0 |  |CS THESIS WRITING 2                              |  |CS 18/L    |",0,51
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
  invoke StdOut, addr plainBor
  invoke StdOut, addr y1s1
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr cs8
  invoke StdOut, addr ge2
  invoke StdOut, addr ge15
  invoke StdOut, addr ge3
  invoke StdOut, addr pahf1
  invoke StdOut, addr cce101
  invoke StdOut, addr cce109
  invoke StdOut, addr nstp1
  invoke StdOut, addr border

;1st Year/2nd Sem
  invoke StdOut, addr plainBor
  invoke StdOut, addr y1s2
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr uge1
  invoke StdOut, addr ge1
  invoke StdOut, addr ge4
  invoke StdOut, addr cce107
  invoke StdOut, addr cs25
  invoke StdOut, addr mth101   
  invoke StdOut, addr pahf2
  invoke StdOut, addr nstp2    
  invoke StdOut, addr border

;2nd year/1st sem
  invoke StdOut, addr plainBor
  invoke StdOut, addr y2s1
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr hci101
  invoke StdOut, addr cce104
  invoke StdOut, addr cs26
  invoke StdOut, addr cs3
  invoke StdOut, addr cce105
  invoke StdOut, addr cst4   
  invoke StdOut, addr mth103
  invoke StdOut, addr mth105
  invoke StdOut, addr pahf3   
  invoke StdOut, addr border

;2nd year/2nd sem
  invoke StdOut, addr plainBor
  invoke StdOut, addr y2s2
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr ge6
  invoke StdOut, addr ge8
  invoke StdOut, addr cst5
  invoke StdOut, addr ge11
  invoke StdOut, addr bsm222
  invoke StdOut, addr cs6   
  invoke StdOut, addr bsm312
  invoke StdOut, addr cse7
  invoke StdOut, addr pahf4
  invoke StdOut, addr border

;3rd year/1st sem
  invoke StdOut, addr plainBor
  invoke StdOut, addr y3s1
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr ge5
  invoke StdOut, addr cs12
  invoke StdOut, addr cst9
  invoke StdOut, addr cs15
  invoke StdOut, addr bsm325
  invoke StdOut, addr phys101  
  invoke StdOut, addr ge7
  invoke StdOut, addr cs11
  invoke StdOut, addr border

;3rd year/2nd sem
  invoke StdOut, addr plainBor
  invoke StdOut, addr y3s2
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr cs20
  invoke StdOut, addr ge20
  invoke StdOut, addr cs17
  invoke StdOut, addr cse13
  invoke StdOut, addr phys102
  invoke StdOut, addr cst14  
  invoke StdOut, addr cse10
  invoke StdOut, addr uge2
  invoke StdOut, addr border

;3rd year/summer
  invoke StdOut, addr plainBor
  invoke StdOut, addr y3ss
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr ge9
  invoke StdOut, addr cs16
  invoke StdOut, addr border

;4th year/1st sem
  invoke StdOut, addr plainBor
  invoke StdOut, addr y4s1
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr cce106
  invoke StdOut, addr cs18
  invoke StdOut, addr cs19
  invoke StdOut, addr cs24
  invoke StdOut, addr cs21
  invoke StdOut, addr border

;4th year/2nd sem
  invoke StdOut, addr plainBor
  invoke StdOut, addr y4s2
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr caed500
  invoke StdOut, addr cs22
  invoke StdOut, addr cs23
  invoke StdOut, addr border
  
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
