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
  uMin     db  10,10,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,32, "UNIVERSITY OF MINDANAO"                  ,0
  major    db  10,9,9,9,9,9,9,9,9,9,9,9,9,9,9,32, "Bachelor of Science in Computer Science" ,0
  dept     db  10,9,9,9,9,9,9,9,9,9,9,9,9,9,9,32, "COLLEGE OF COMPUTING EDUCATION EDUCATION",0
  studName db  10,10, "Name: ",0
  course   db  10,"Course: ",0
  year     db  10,"Year: ",0

; BORDERS AND HEADER
  plainBor db  10,32,            "___________________________________________________________________________________________",0
  ;YEAR AND SEM HERE
  border   db  10,32,            "|-------------|--|----|--|-------------------------------------------------|--|-----------|",0,51
  header   db  10,32,            "|Subject Code |  |Unit|  |Subject Title                                    |  |Prereq.    |",0,51

; 1ST YEAR 1ST SEM START
  y1s1     db  10,32,            "|                                   1st Year/1st Sem                                      |",0
  cs8      db  10,32,            "|[1]CS 8      |  |3.0 |  |SOCIAL ISSUES AND PROFESSIONAL PRACTICE          |  |None       |",0,51
  ge2      db  10,32,            "|[2]GE 2      |  |6.0 |  |PURPOSIVE COMMUNICATION W/ INTERACTIVE LEARNING  |  |None       |",0,51
  ge15     db  10,32,            "|[3]GE 15     |  |3.0 |  |ENVIRONMENTAL SCIENCE                            |  |None       |",0,51
  ge3      db  10,32,            "|[4]GE 3      |  |3.0 |  |THE CONTEMPORARY WORLD                           |  |None       |",0,51
  pahf1    db  10,32,            "|[5]PAHF 1    |  |2.0 |  |MOVEMENT COMPETENCY TRAINING                     |  |None       |",0,51
  cce101   db  10,32,            "|[6]CCE 101/L |  |3.0 |  |INTRODUCTION TO COMPUTING (1ST T)                |  |None       |",0,51
  cce109   db  10,32,            "|[7]CCE 109/L |  |3.0 |  |FUNDAMENTALS OF PROGRAMMING                      |  |None       |",0,51
  nstp1    db  10,32,            "|[8]NSTP 1    |  |3.0 |  |NATIONAL SERVICE TRAINING PROGRAM 1              |  |None       |",0,51
; 1ST YEAR 1ST SEM END

; 1ST YEAR 2ND SEM START
  y1s2     db  10,32,            "|                                   1st Year/2nd Sem                                      |",0
  uge1     db  10,32,            "|[1]UGE 1     |  |6.0 |  |READING COMPREHENSION                            |  |GE 2       |",0,51
  ge1      db  10,32,            "|[2]GE 1      |  |3.0 |  |UNDERSTANDING THE SELF                           |  |None       |",0,51
  ge4      db  10,32,            "|[3]GE 4      |  |3.0 |  |MATHEMATICS IN THE MODERN WORLD                  |  |None       |",0,51
  cce107   db  10,32,            "|[4]CCE 107/l |  |3.0 |  |INTERMEDIATE PROGRAMMING                         |  |CCE 109/L  |",0,51
  cs25     db  10,32,            "|[5]CS 25     |  |3.0 |  |DISCRETE STRUCTURES 1                            |  |None       |",0,51
  mth101   db  10,32,            "|[6]MTH 101   |  |3.0 |  |DIFFERENTIAL CALCULUS                            |  |None       |",0,51
  pahf2    db  10,32,            "|[7]PAHF 2    |  |2.0 |  |EXERCISE-BASED FITNESS ACTIVITY                  |  |PAHF 1     |",0,51
  nstp2    db  10,32,            "|[8]NSTP 2    |  |3.0 |  |NATIONAL SERVICE TRAINING PROGRAM 2              |  |NSTP 1     |",0,51
; 1ST YEAR 2ND SEM END

; 2ND YEAR 1ST SEM START
  y2s1     db  10,32,            "|                                   2nd Year/1st Sem                                      |",0
  hci101   db  10,32,            "|[1]HCI 101   |  |3.0 |  |HUMAN COMPUTER INTERACTION                       |  |CCE 107/L  |",0,51
  cce104   db  10,32,            "|[2]CCE 104/L |  |3.0 |  |INFORMATION MANAGEMENT                           |  |CCE 107/L  |",0,51
  cs26     db  10,32,            "|[3]CS 26/L   |  |3.0 |  |SOFTWARE DEVELOPMENT FUNDAMENTALS                |  |CCE 107/L  |",0,51
  cs3      db  10,32,            "|[4]CS 3/L    |  |3.0 |  |DISCRETE STRUCTURES 2                            |  |CS 25      |",0,51
  cce105   db  10,32,            "|[5]CCE 105/L |  |3.0 |  |DATA STRUCTURES AND ALGORITHMS                   |  |CCE 107/L  |",0,51
  cst4     db  10,32,            "|[6]CST 4/L   |  |3.0 |  |CS PROFESSIONAL TRACK 1                          |  |CCE 107/L  |",0,51
  mth103   db  10,32,            "|[7]MTH103/L  |  |3.0 |  |PROBABILITIES AND STATISTICS                     |  |GE 4       |",0,51
  mth105   db  10,32,            "|[8]MTH 105   |  |3.0 |  |INTEGRAL CALCULUS                                |  |MTH 101    |",0,51
  pahf3    db  10,32,            "|[9]PAHF 3    |  |2.0 |  |DANCE AND SPORTS 1                               |  |PAHF 2     |",0,51
; 2ND YEAR 1ST SEM END

; 2ND YEAR 2ND SEM START
  y2s2     db  10,32,            "|                                   2nd Year/2nd Sem                                      |",0
  ge6      db  10,32,            "|[1]GE6       |  |3.0 |  |RIZAL'S LIFE AND WORKS                           |  |None       |",0,51
  ge8      db  10,32,            "|[2]GE8       |  |3.0 |  |READINGS IN PHILIPPINE HISTORY                   |  |None       |",0,51
  cst5     db  10,32,            "|[3]CST 5/L   |  |2.0 |  |CS PROFESSIONAL TRACK 2                          |  |CST 4/L    |",0,51
  ge11     db  10,32,            "|[4]GE 11     |  |3.0 |  |THE ENTREPRENEURIAL MIND                         |  |None       |",0,51
  bsm222   db  10,32,            "|[5]BSM 222   |  |3.0 |  |LINEAR ALGEBRA                                   |  |MTH 101    |",0,51
  cs6      db  10,32,            "|[6]CS 6/L    |  |2.0 |  |ALGORITHMS AND COMPLEXITY                        |  |CCE 105/L  |",0,51
  bsm312   db  10,32,            "|[7]BSM 312   |  |3.0 |  |DIFFERENTIAL EQUATIONS                           |  |MTH 105    |",0,51
  cse7     db  10,32,            "|[8]CSE 7/L   |  |2.0 |  |CS PROFESSIONAL ELECTIVE 1                       |  |CCE 104/L  |",0,51
  pahf4    db  10,32,            "|[9]PAHF 4    |  |2.0 |  |DANCE AND SPORTS 2                               |  |PAHF 3     |",0,51
; 2ND YEAR 2ND SEM END

; 3RD YEAR 1ST SEM START
  y3s1     db  10,32,            "|                                   3rd Year/1st Sem                                      |",0
  ge5      db  10,32,            "|[1]GE 5      |  |3.0 |  |SCIENCE, TECHNOLOGY AND SOCIETY                  |  |None       |",0,51
  cs12     db  10,32,            "|[2]CS 12/L   |  |3.0 |  |SOFTWARE ENGINEERING 1                           |  |CS 26/L    |",0,51
  cst9     db  10,32,            "|[3]CST 9/L   |  |3.0 |  |CS PROFESSIONAL TRACK 3                          |  |CST 5/L    |",0,51
  cs15     db  10,32,            "|[4]CST 15/L  |  |3.0 |  |PROGRAMMING LANGUAGES                            |  |CS 26/L    |",0,51
  bsm325   db  10,32,            "|[5]BSM 325   |  |3.0 |  |NUMERICAL ANALYSIS                               |  |BSM 222,   |",10,32,
                                 "|             |  |    |  |                                                 |  |BSM 312    |",0,51
  phys101  db  10,32,            "|[6]PHYS 101/L|  |4.0 |  |COLLEGE PHYSICS 1                                |  |GE 4       |",0,51
  ge7      db  10,32,            "|[7]GE 7      |  |3.0 |  |ART APPRECIATION                                 |  |None       |",0,51
  cs11     db  10,32,            "|[8]CS 11/L   |  |3.0 |  |ARCHITECTURE AND ORGANIZATION                    |  |CS 3/L     |",0,51
; 3RD YEAR 1ST SEM END

; 3RD YEAR 2ND SEM START
  y3s2     db  10,32,            "|                                   3rd Year/2nd Sem                                      |",0
  cs20     db  10,32,            "|[1]CS 20/L   |  |3.0 |  |CS PROFESSIONAL TRACK 5                          |  |CS 15/L    |",0,51
  ge20     db  10,32,            "|[2]GE 20     |  |3.0 |  |READING VISUAL ARTS                              |  |None       |",0,51
  cs17     db  10,32,            "|[3]CS 17/L   |  |3.0 |  |SOFTWARE ENGINEERING 2                           |  |CS 12/L    |",0,51
  cse13    db  10,32,            "|[4]CSE 13/L  |  |3.0 |  |CS PROFESSIONAL ELECTIVE 3                       |  |CSE 7/L    |",0,51
  phys102  db  10,32,            "|[5]PHYS 102/L|  |4.0 |  |COLLEGE PHYSICS 2                                |  |PHYS 101/L |",0,51
  cst14    db  10,32,            "|[6]CST 14/L  |  |3.0 |  |CS PROFESSIONAL TRACK 4                          |  |CST 9/L    |",0,51
  cse10    db  10,32,            "|[7]CSE 10/L  |  |3.0 |  |CS PROFESSIONAL ELECTIVE 2                       |  |CS 6/L     |",0,51
  uge2     db  10,32,            "|[8]UGE 2     |  |3.0 |  |TECHNICAL WRITING IN THE DISCIPLINE              |  |UGE 1      |",0,51
; 3RD YEAR 2ND SEM END

; 3RD YEAR SUMMER SEM START
  y3ss     db  10,32,            "|                                   3rd Year/Summer                                       |",0
  ge9      db  10,32,            "|[1]GE 9      |  |3.0 |  |ETHICS (DISCIPLINAL)                             |  |None       |",0,51
  cs16     db  10,32,            "|[2]CS 16     |  |6.0 |  |PRACTICUM                                        |  |CS 17,     |",10,32,
                                 "|             |  |    |  |                                                 |  |CS 11/L    |",0,51
; 3RD YEAR SUMMER SEM END

; 4TH YEAR 1ST SEM START
  y4s1     db  10,32,            "|                                   4th Year/1st Sem                                      |",0
  cce106   db  10,32,            "|[1]CS 106/L  |  |3.0 |  |APPLICATION DEVELOPMENT AND EMERGING TECHNOLOGIES|  |CST 9/L    |",0,51
  cs18     db  10,32,            "|[2]CS 18/L   |  |3.0 |  |CS THESIS WRITING 1                              |  |CS 17/L,   |",10,32,
                                 "|             |  |    |  |                                                 |  |CSE 13/L   |",0,51
  cs19     db  10,32,            "|[3]CS 19/L   |  |4.0 |  |OPERATING SYSTEMS                                |  |CS 11/L    |",0,51
  cs24     db  10,32,            "|[4]CS 24/L   |  |3.0 |  |CS PROFESSIONAL TRACK 6                          |  |CS 20/L    |",0,51
  cs21     db  10,32,            "|[5]CS 21/L   |  |3.0 |  |NETWORKS AND COMMUNICATIONS                      |  |CS 11/L    |",0,51
; 4TH YEAR 1ST SEM END

; 4TH YEAR 2ND SEM START
  y4s2     db  10,32,            "|                                   4th Year/2nd Sem                                      |",0
  caed500  db  10,32,            "|[1]CAED 500c |  |3.0 |  |CAREER AND PERSONALITY DEVELOPMENT               |  |4th year   |",10,32,
                                 "|             |  |    |  |                                                 |  |standing   |",0,51
  cs22     db  10,32,            "|[2]CS 22/L   |  |3.0 |  |INFORMATION ASSURANCE AND SECURITY               |  |CS 21/L    |",0,51
  cs23     db  10,32,            "|[3]CS 23/L   |  |6.0 |  |CS THESIS WRITING 2                              |  |CS 18/L    |",0,51
; 4TH YEAR 2ND SEM END

; ENROLLED PROMPTS
  enrolled db  10,32,            "|                                      SUBJECTS ENROLLED                                  |",0

; MENU
  yearPrompt db 10,10,10,10,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,"Select Which YEAR You'll BE Enrolling In",0
  selYL db 10,10,"1: 1st Year",10,"2: 2nd Year",10,"3: 3rd Year",10,"4: 4th Year",10,"Select Year Level: ",0
  errYL db 10,32,"Select only from 1-4",0

  selSEM db 10,10,"1: 1st Sem",10,"2: 2nd Sem",10,"Select Semester: ",0
  selSEMsum db 10,10,"1: 1st Sem",10,"2: 2nd Sem",10,"S: Summer",10,"Select Semester: ",0
  errSEM db 10,32,"Select only from [1-2]",0

  comp   db 10,10,"Type [C] to Complete",0
  inv    db 10,10,"Invalid input, select the appropriate option",0
  selSU9 db 10,10,"Select Subject [1-9]: ",0
  selSU8 db 10,10,"Select Subject [1-8]: ",0
  selSU5 db 10,10,"Select Subject [1-5]: ",0
  selSU3 db 10,10,"Select Subject [1-3]: ",0
  selSU2 db 10,10,"Select Subject [1-2]: ",0

  totalU db 10,10,"Total Enrolled Units: ", 0

  viewPros db 10,10,"[V] View Prospectus", 0
  exitEnroll db 10,"[E] Exit", 0
  lastSelection db 10,"Type desired action: ", 0  

  total  DWORD ?


.data?
; INPUTS
	studNameIn  db 100 dup(?)
	courseIn    db 100 dup(?)
  currYear    db 100 dup(?) ;Current Year

	yearIn      db 100 dup(?) ;Year Enrolled
	semIn       db 100 dup(?) ;Sem Enrolled

	subIn       db 100 dup(?)
  totalUnits  db 30 dup(?)

  sel1 db 500 dup(?)
  sel2 db 500 dup(?)
  sel3 db 500 dup(?)
  sel4 db 500 dup(?)
  sel5 db 500 dup(?)
  sel6 db 500 dup(?)
  sel7 db 500 dup(?)
  sel8 db 500 dup(?)
  sel9 db 500 dup(?)

  lastInput db 10 dup(?)

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
  invoke StdIn,  addr currYear, 100

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
  invoke StdOut, addr yearPrompt
  invoke StdOut, addr selYL
  invoke StdIn,  addr yearIn, 10
  .if yearIn == "1"
    jmp YEAR1
  .elseif yearIn == "2"
    jmp YEAR2
  .elseif yearIn == "3"
    jmp YEAR3
  .elseif yearIn == "4"
    jmp YEAR4
  .else
    invoke StdOut, addr errYL
    jmp LEVEL
  .endif

; START YEAR CHOICE
YEAR1:
  invoke StdOut, addr selSEM
  invoke StdIn,  addr semIn, 10
  .if semIn == "1"
    jmp SEM11
  .elseif semIn == "2"
    jmp SEM12
  .else
    invoke StdOut, addr errSEM
    jmp LEVEL
  .endif

YEAR2:
  invoke StdOut, addr selSEM
  invoke StdIn,  addr semIn, 10
    .if semIn == "1"
      jmp SEM21
    .elseif semIn == "2"
      jmp SEM22
   .else
      invoke StdOut, addr errSEM
      jmp LEVEL
   .endif

YEAR3:
  invoke StdOut, addr selSEMsum
  invoke StdIn,  addr semIn, 10
    .if semIn == "1"
      jmp SEM31
    .elseif semIn == "2"
      jmp SEM32
    .elseif semIn == "S"
      jmp SEM3S
    .else
      invoke StdOut, addr errSEM
      jmp LEVEL
   .endif

YEAR4:
  invoke StdOut, addr selSEM
  invoke StdIn,  addr semIn, 10
    .if semIn == "1"
      jmp SEM41
    .elseif semIn == "2"
      jmp SEM42
    .else
      invoke StdOut, addr errSEM
      jmp LEVEL
    .endif
; END YEAR CHOICE

; START 1st Year 1st Sem CHOICE
SEM11:
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

  jmp SELSUB11

; START 1st Year 2nd Sem CHOICE
SEM12:
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

  jmp SELSUB12

; START 2nd Year 1st Sem CHOICE
SEM21:
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

  jmp SELSUB21

; START 2nd Year 1st Sem CHOICE
SEM22:
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

  jmp SELSUB22

; START 3rd Year 1st Sem CHOICE
SEM31:
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

  jmp SELSUB31

; START 3rd Year 2nd Sem CHOICE
SEM32:
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

  jmp SELSUB32

; START 3rd Year Summer CHOICE
SEM3S:
  invoke StdOut, addr plainBor
  invoke StdOut, addr y3ss
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr ge9
  invoke StdOut, addr cs16
  invoke StdOut, addr border

  jmp SELSUB3S

; START 4th Year 1st Sem CHOICE
SEM41:
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

  jmp SELSUB41

; START 4th Year 2nd Sem CHOICE
SEM42:
  invoke StdOut, addr plainBor
  invoke StdOut, addr y4s2
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr caed500
  invoke StdOut, addr cs22
  invoke StdOut, addr cs23
  invoke StdOut, addr border

  jmp SELSUB42

; SELECT SUBJECTS TO ADD
;1st Year 1st Sem
SELSUB11:
  invoke StdOut, addr selSU8
  invoke StdIn, addr subIn, 10

  .if subIn == "1"
    add total, 3
    invoke StdOut, addr cs8

    mov esi, offset cs8
    mov edi, offset sel1
    cld
    mov ecx, lengthof cs8
    rep movsb
    
  .elseif subIn == "2"
    add total, 6
    invoke StdOut, addr ge2

    mov esi, offset ge2
    mov edi, offset sel2
    cld
    mov ecx, lengthof ge2
    rep movsb

  .elseif subIn == "3"
    add total, 3
    invoke StdOut, addr ge15

    mov esi, offset ge15
    mov edi, offset sel3
    cld
    mov ecx, lengthof ge15
    rep movsb

  .elseif subIn == "4"
    add total, 3
    invoke StdOut, addr ge3

    mov esi, offset ge3
    mov edi, offset sel4
    cld
    mov ecx, lengthof ge3
    rep movsb

  .elseif subIn == "5"
    add total, 2
    invoke StdOut, addr pahf1

    mov esi, offset pahf1
    mov edi, offset sel5
    cld
    mov ecx, lengthof pahf1
    rep movsb

  .elseif subIn == "6"
    add total, 3
    invoke StdOut, addr cce101

    mov esi, offset cce101
    mov edi, offset sel6
    cld
    mov ecx, lengthof cce101
    rep movsb

  .elseif subIn == "7"
    add total, 3
    invoke StdOut, addr cce109

    mov esi, offset cce109
    mov edi, offset sel7
    cld
    mov ecx, lengthof cce109
    rep movsb

  .elseif subIn == "8"
    add total, 3
    invoke StdOut, addr nstp1

    mov esi, offset nstp1
    mov edi, offset sel8
    cld
    mov ecx, lengthof nstp1
    rep movsb

  .elseif subIn == "C"
    jmp TOTAL11

  .else
    invoke StdOut, addr inv
    jmp SELSUB11

  .endif
    jmp SELSUB11

;1st Year 2nd Sem
SELSUB12:
  invoke StdOut, addr selSU8
  invoke StdIn, addr subIn, 10

  .if subIn == "1"
    add total, 6
    invoke StdOut, addr uge1

    mov esi, offset uge1
    mov edi, offset sel1
    cld
    mov ecx, lengthof uge1
    rep movsb
    
  .elseif subIn == "2"
    add total, 3
    invoke StdOut, addr ge1

    mov esi, offset ge1
    mov edi, offset sel2
    cld
    mov ecx, lengthof ge1
    rep movsb

  .elseif subIn == "3"
    add total, 3
    invoke StdOut, addr ge4

    mov esi, offset ge4
    mov edi, offset sel3
    cld
    mov ecx, lengthof ge4
    rep movsb

  .elseif subIn == "4"
    add total, 3
    invoke StdOut, addr cce107

    mov esi, offset cce107
    mov edi, offset sel4
    cld
    mov ecx, lengthof cce107
    rep movsb

  .elseif subIn == "5"
    add total, 3
    invoke StdOut, addr cs25

    mov esi, offset cs25
    mov edi, offset sel5
    cld
    mov ecx, lengthof cs25
    rep movsb

  .elseif subIn == "6"
    add total, 3
    invoke StdOut, addr mth101

    mov esi, offset mth101
    mov edi, offset sel6
    cld
    mov ecx, lengthof mth101
    rep movsb

  .elseif subIn == "7"
    add total, 2
    invoke StdOut, addr pahf2

    mov esi, offset pahf2
    mov edi, offset sel7
    cld
    mov ecx, lengthof pahf2
    rep movsb

  .elseif subIn == "8"
    add total, 3
    invoke StdOut, addr nstp2

    mov esi, offset nstp2
    mov edi, offset sel8
    cld
    mov ecx, lengthof nstp2
    rep movsb

  .elseif subIn == "C"
    jmp TOTAL12

  .else
    invoke StdOut, addr inv
    jmp SELSUB12

  .endif
    jmp SELSUB12

;2nd Year 1st Sem
SELSUB21:
  invoke StdOut, addr selSU9
  invoke StdIn, addr subIn, 10

  .if subIn == "1"
    add total, 3
    invoke StdOut, addr hci101

    mov esi, offset hci101
    mov edi, offset sel1
    cld
    mov ecx, lengthof hci101
    rep movsb
    
  .elseif subIn == "2"
    add total, 3
    invoke StdOut, addr cce104

    mov esi, offset cce104
    mov edi, offset sel2
    cld
    mov ecx, lengthof cce104
    rep movsb

  .elseif subIn == "3"
    add total, 3
    invoke StdOut, addr cs26

    mov esi, offset cs26
    mov edi, offset sel3
    cld
    mov ecx, lengthof cs26
    rep movsb

  .elseif subIn == "4"
    add total, 3
    invoke StdOut, addr cs3

    mov esi, offset cs3
    mov edi, offset sel4
    cld
    mov ecx, lengthof cs3
    rep movsb

  .elseif subIn == "5"
    add total, 3
    invoke StdOut, addr cce105

    mov esi, offset cce105
    mov edi, offset sel5
    cld
    mov ecx, lengthof cce105
    rep movsb

  .elseif subIn == "6"
    add total, 3
    invoke StdOut, addr cst4

    mov esi, offset cst4
    mov edi, offset sel6
    cld
    mov ecx, lengthof cst4
    rep movsb

  .elseif subIn == "7"
    add total, 3
    invoke StdOut, addr mth103

    mov esi, offset mth103
    mov edi, offset sel7
    cld
    mov ecx, lengthof mth103
    rep movsb

  .elseif subIn == "8"
    add total, 3
    invoke StdOut, addr mth105

    mov esi, offset mth105
    mov edi, offset sel8
    cld
    mov ecx, lengthof mth105
    rep movsb

  .elseif subIn == "9"
    add total, 2
    invoke StdOut, addr pahf3

    mov esi, offset pahf3
    mov edi, offset sel9
    cld
    mov ecx, lengthof pahf3
    rep movsb

  .elseif subIn == "C"
    jmp TOTAL21

  .else
    invoke StdOut, addr inv
    jmp SELSUB21

  .endif
    jmp SELSUB21

;2nd Year 2nd Sem
SELSUB22:
  invoke StdOut, addr selSU9
  invoke StdIn, addr subIn, 10

  .if subIn == "1"
    add total, 3
    invoke StdOut, addr ge6

    mov esi, offset ge6
    mov edi, offset sel1
    cld
    mov ecx, lengthof ge6
    rep movsb
    
  .elseif subIn == "2"
    add total, 3
    invoke StdOut, addr ge8

    mov esi, offset ge8
    mov edi, offset sel2
    cld
    mov ecx, lengthof ge8
    rep movsb

  .elseif subIn == "3"
    add total, 3
    invoke StdOut, addr cst5

    mov esi, offset cst5
    mov edi, offset sel3
    cld
    mov ecx, lengthof cst5
    rep movsb

  .elseif subIn == "4"
    add total, 3
    invoke StdOut, addr ge11

    mov esi, offset ge11
    mov edi, offset sel4
    cld
    mov ecx, lengthof ge11
    rep movsb

  .elseif subIn == "5"
    add total, 3
    invoke StdOut, addr bsm222

    mov esi, offset bsm222
    mov edi, offset sel5
    cld
    mov ecx, lengthof bsm222
    rep movsb

  .elseif subIn == "6"
    add total, 3
    invoke StdOut, addr cs6

    mov esi, offset cs6
    mov edi, offset sel6
    cld
    mov ecx, lengthof cs6
    rep movsb

  .elseif subIn == "7"
    add total, 3
    invoke StdOut, addr bsm312

    mov esi, offset bsm312
    mov edi, offset sel7
    cld
    mov ecx, lengthof bsm312
    rep movsb

  .elseif subIn == "8"
    add total, 3
    invoke StdOut, addr cse7

    mov esi, offset cse7
    mov edi, offset sel8
    cld
    mov ecx, lengthof cse7
    rep movsb

  .elseif subIn == "9"
    add total, 2
    invoke StdOut, addr pahf4

    mov esi, offset pahf4
    mov edi, offset sel9
    cld
    mov ecx, lengthof pahf4
    rep movsb

  .elseif subIn == "C"
    jmp TOTAL22

  .else
    invoke StdOut, addr inv
    jmp SELSUB22

  .endif
    jmp SELSUB22

;3rd Year 1st Sem
SELSUB31:
  invoke StdOut, addr selSU8
  invoke StdIn, addr subIn, 10

  .if subIn == "1"
    add total, 3
    invoke StdOut, addr ge5

    mov esi, offset ge5
    mov edi, offset sel1
    cld
    mov ecx, lengthof ge5
    rep movsb
    
  .elseif subIn == "2"
    add total, 3
    invoke StdOut, addr cs12

    mov esi, offset cs12
    mov edi, offset sel2
    cld
    mov ecx, lengthof cs12
    rep movsb

  .elseif subIn == "3"
    add total, 3
    invoke StdOut, addr cst9

    mov esi, offset cst9
    mov edi, offset sel3
    cld
    mov ecx, lengthof cst9
    rep movsb

  .elseif subIn == "4"
    add total, 3
    invoke StdOut, addr cs15

    mov esi, offset cs15
    mov edi, offset sel4
    cld
    mov ecx, lengthof cs15
    rep movsb

  .elseif subIn == "5"
    add total, 3
    invoke StdOut, addr bsm325

    mov esi, offset bsm325
    mov edi, offset sel5
    cld
    mov ecx, lengthof bsm325
    rep movsb

  .elseif subIn == "6"
    add total, 4
    invoke StdOut, addr phys101

    mov esi, offset phys101
    mov edi, offset sel6
    cld
    mov ecx, lengthof phys101
    rep movsb

  .elseif subIn == "7"
    add total, 3
    invoke StdOut, addr ge7

    mov esi, offset ge7
    mov edi, offset sel7
    cld
    mov ecx, lengthof ge7
    rep movsb

  .elseif subIn == "8"
    add total, 3
    invoke StdOut, addr cs11

    mov esi, offset cs11
    mov edi, offset sel8
    cld
    mov ecx, lengthof cs11
    rep movsb

  .elseif subIn == "C"
    jmp TOTAL31

  .else
    invoke StdOut, addr inv
    jmp SELSUB31

  .endif
    jmp SELSUB31

;3rd Year 2nd Sem
SELSUB32:
  invoke StdOut, addr selSU8
  invoke StdIn, addr subIn, 10

  .if subIn == "1"
    add total, 3
    invoke StdOut, addr cs20

    mov esi, offset cs20
    mov edi, offset sel1
    cld
    mov ecx, lengthof cs20
    rep movsb
    
  .elseif subIn == "2"
    add total, 3
    invoke StdOut, addr ge20

    mov esi, offset ge20
    mov edi, offset sel2
    cld
    mov ecx, lengthof ge20
    rep movsb

  .elseif subIn == "3"
    add total, 3
    invoke StdOut, addr cs17

    mov esi, offset cs17
    mov edi, offset sel3
    cld
    mov ecx, lengthof cs17
    rep movsb

  .elseif subIn == "4"
    add total, 3
    invoke StdOut, addr cse13

    mov esi, offset cse13
    mov edi, offset sel4
    cld
    mov ecx, lengthof cse13
    rep movsb

  .elseif subIn == "5"
    add total, 4
    invoke StdOut, addr phys102

    mov esi, offset phys102
    mov edi, offset sel5
    cld
    mov ecx, lengthof phys102
    rep movsb

  .elseif subIn == "6"
    add total, 3
    invoke StdOut, addr cst14

    mov esi, offset cst14
    mov edi, offset sel6
    cld
    mov ecx, lengthof cst14
    rep movsb

  .elseif subIn == "7"
    add total, 3
    invoke StdOut, addr cse10

    mov esi, offset cse10
    mov edi, offset sel7
    cld
    mov ecx, lengthof cse10
    rep movsb

  .elseif subIn == "8"
    add total, 3
    invoke StdOut, addr uge2

    mov esi, offset uge2
    mov edi, offset sel8
    cld
    mov ecx, lengthof uge2
    rep movsb

  .elseif subIn == "C"
    jmp TOTAL32

  .else
    invoke StdOut, addr inv
    jmp SELSUB32

  .endif
    jmp SELSUB32

;3rd Year Summer
SELSUB3S:
  invoke StdOut, addr selSU2
  invoke StdIn, addr subIn, 10

  .if subIn == "1"
    add total, 3
    invoke StdOut, addr ge9

    mov esi, offset ge9
    mov edi, offset sel1
    cld
    mov ecx, lengthof ge9
    rep movsb
    
  .elseif subIn == "2"
    add total, 6
    invoke StdOut, addr cs16

    mov esi, offset cs16
    mov edi, offset sel2
    cld
    mov ecx, lengthof cs16
    rep movsb

  .elseif subIn == "C"
    jmp TOTAL3S

  .else
    invoke StdOut, addr inv
    jmp SELSUB3S

  .endif
    jmp SELSUB3S

;4th Year 1st Sem
SELSUB41:
  invoke StdOut, addr selSU5
  invoke StdIn, addr subIn, 10

  .if subIn == "1"
    add total, 3
    invoke StdOut, addr cce106

    mov esi, offset cce106
    mov edi, offset sel1
    cld
    mov ecx, lengthof cce106
    rep movsb
    
  .elseif subIn == "2"
    add total, 3
    invoke StdOut, addr cs18

    mov esi, offset cs18
    mov edi, offset sel2
    cld
    mov ecx, lengthof cs18
    rep movsb

  .elseif subIn == "3"
    add total, 4
    invoke StdOut, addr cs19

    mov esi, offset cs19
    mov edi, offset sel3
    cld
    mov ecx, lengthof cs19
    rep movsb

  .elseif subIn == "4"
    add total, 3
    invoke StdOut, addr cs24

    mov esi, offset cs24
    mov edi, offset sel4
    cld
    mov ecx, lengthof cs24
    rep movsb

  .elseif subIn == "5"
    add total, 3
    invoke StdOut, addr cs21

    mov esi, offset cs21
    mov edi, offset sel5
    cld
    mov ecx, lengthof cs21
    rep movsb

  .elseif subIn == "C"
    jmp TOTAL41

  .else
    invoke StdOut, addr inv
    jmp SELSUB41

  .endif
    jmp SELSUB41

;4th Year 2nd Sem
SELSUB42:
  invoke StdOut, addr selSU3
  invoke StdIn, addr subIn, 10

  .if subIn == "1"
    add total, 3
    invoke StdOut, addr caed500

    mov esi, offset caed500
    mov edi, offset sel1
    cld
    mov ecx, lengthof caed500
    rep movsb
    
  .elseif subIn == "2"
    add total, 3
    invoke StdOut, addr cs22

    mov esi, offset cs22
    mov edi, offset sel2
    cld
    mov ecx, lengthof cs22
    rep movsb

  .elseif subIn == "3"
    add total, 6
    invoke StdOut, addr cs23

    mov esi, offset cs23
    mov edi, offset sel3
    cld
    mov ecx, lengthof cs23
    rep movsb

  .elseif subIn == "C"
    jmp TOTAL42

  .else
    invoke StdOut, addr inv
    jmp SELSUB42

  .endif
    jmp SELSUB42

; SUMMARIZES SELECTED SUBJECTS

TOTAL11:
  mov ebx, total 
  invoke dwtoa, ebx, addr totalUnits

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

  invoke StdOut, addr plainBor
  invoke StdOut, addr enrolled
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr sel3
  invoke StdOut, addr sel4
  invoke StdOut, addr sel5
  invoke StdOut, addr sel6
  invoke StdOut, addr sel7
  invoke StdOut, addr sel8
  invoke StdOut, addr border
  
  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr totalUnits

  jmp lastAction

TOTAL12:
  mov ebx, total 
  invoke dwtoa, ebx, addr totalUnits

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

  invoke StdOut, addr plainBor
  invoke StdOut, addr enrolled
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr sel3
  invoke StdOut, addr sel4
  invoke StdOut, addr sel5
  invoke StdOut, addr sel6
  invoke StdOut, addr sel7
  invoke StdOut, addr sel8
  invoke StdOut, addr border
  
  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr totalUnits

  jmp lastAction

TOTAL21:
  mov ebx, total 
  invoke dwtoa, ebx, addr totalUnits

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

  invoke StdOut, addr plainBor
  invoke StdOut, addr enrolled
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr sel3
  invoke StdOut, addr sel4
  invoke StdOut, addr sel5
  invoke StdOut, addr sel6
  invoke StdOut, addr sel7
  invoke StdOut, addr sel8
  invoke StdOut, addr sel9
  invoke StdOut, addr border
  
  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr totalUnits

  jmp lastAction

TOTAL22:
  mov ebx, total 
  invoke dwtoa, ebx, addr totalUnits

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

  invoke StdOut, addr plainBor
  invoke StdOut, addr enrolled
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr sel3
  invoke StdOut, addr sel4
  invoke StdOut, addr sel5
  invoke StdOut, addr sel6
  invoke StdOut, addr sel7
  invoke StdOut, addr sel8
  invoke StdOut, addr sel9
  invoke StdOut, addr border
  
  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr totalUnits

  jmp lastAction

TOTAL31:
  mov ebx, total 
  invoke dwtoa, ebx, addr totalUnits

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

  invoke StdOut, addr plainBor
  invoke StdOut, addr enrolled
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr sel3
  invoke StdOut, addr sel4
  invoke StdOut, addr sel5
  invoke StdOut, addr sel6
  invoke StdOut, addr sel7
  invoke StdOut, addr sel8
  invoke StdOut, addr border
  
  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr totalUnits

  jmp lastAction

TOTAL32:
  mov ebx, total 
  invoke dwtoa, ebx, addr totalUnits

  invoke ClearScreen
  invoke StdOut, addr uMin
  invoke StdOut, addr major
  invoke StdOut, addr dept
  invoke StdOut, addr studName
  invoke StdOut, addr studNameIn
  invoke StdOut, addr course
  invoke StdOut, addr courseIn
	invoke StdOut, addr year
  invoke StdOut, addr yearIn

  invoke StdOut, addr plainBor
  invoke StdOut, addr enrolled
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr sel3
  invoke StdOut, addr sel4
  invoke StdOut, addr sel5
  invoke StdOut, addr sel6
  invoke StdOut, addr sel7
  invoke StdOut, addr sel8
  invoke StdOut, addr border
  
  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr totalUnits

  jmp lastAction

TOTAL3S:
  mov ebx, total 
  invoke dwtoa, ebx, addr totalUnits

  invoke ClearScreen
  invoke StdOut, addr uMin
  invoke StdOut, addr major
  invoke StdOut, addr dept
  invoke StdOut, addr studName
  invoke StdOut, addr studNameIn
  invoke StdOut, addr course
  invoke StdOut, addr courseIn
	invoke StdOut, addr year
  invoke StdOut, addr yearIn

  invoke StdOut, addr plainBor
  invoke StdOut, addr enrolled
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr border
  
  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr totalUnits

  jmp lastAction

TOTAL41:
  mov ebx, total 
  invoke dwtoa, ebx, addr totalUnits

  invoke ClearScreen
  invoke StdOut, addr uMin
  invoke StdOut, addr major
  invoke StdOut, addr dept
  invoke StdOut, addr studName
  invoke StdOut, addr studNameIn
  invoke StdOut, addr course
  invoke StdOut, addr courseIn
	invoke StdOut, addr year
  invoke StdOut, addr yearIn

  invoke StdOut, addr plainBor
  invoke StdOut, addr enrolled
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr sel3
  invoke StdOut, addr sel4
  invoke StdOut, addr sel5
  invoke StdOut, addr border

  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr totalUnits

  jmp lastAction

TOTAL42:
  mov ebx, total 
  invoke dwtoa, ebx, addr totalUnits

  invoke ClearScreen
  invoke StdOut, addr uMin
  invoke StdOut, addr major
  invoke StdOut, addr dept
  invoke StdOut, addr studName
  invoke StdOut, addr studNameIn
  invoke StdOut, addr course
  invoke StdOut, addr courseIn
	invoke StdOut, addr year
  invoke StdOut, addr yearIn

  invoke StdOut, addr plainBor
  invoke StdOut, addr enrolled
  invoke StdOut, addr border
	invoke StdOut, addr header
  invoke StdOut, addr border
  invoke StdOut, addr sel1
  invoke StdOut, addr sel2
  invoke StdOut, addr sel3
  invoke StdOut, addr border

  ;TOTAL DISPLAY
  invoke StdOut, addr totalU
  invoke StdOut, addr totalUnits

  jmp lastAction

lastAction:
  invoke StdOut, addr viewPros
  invoke StdOut, addr exitEnroll
  invoke StdOut, addr lastSelection
  invoke StdIn, addr lastInput, 10

  .if lastInput == "V"
    jmp display
  .elseif lastInput == "E"
    jmp EXIT
  .endif
    jmp EXIT

EXIT:

invoke ExitProcess, 0

end start