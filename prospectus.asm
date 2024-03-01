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
  header   db  10,8,32,            "Subject Code",9,9,"Unit",9,9,"Subj Title",0
; 1ST YEAR 1ST SEM START
  y1s1     db  10,10,8,32,         "1st Year/1st Sem"                                                             ,0
  cs8      db  10,8,32,            "[1]CS 8     ",9,9,"3.0",9,9, "SOCIAL ISSUES AND PROFESSIONAL PRACTICE"        ,0,51
  ge2      db  10,8,32,            "[2]GE 2     ",9,9,"3.0",9,9, "PURPOSIVE COMMUNICATION W/ INTERACTIVE LEARNING",0,51
  ge15     db  10,8,32,            "[3]GE 15    ",9,9,"3.0",9,9, "ENVIRONMENTAL SCIENCE"                          ,0,51
  ge3      db  10,8,32,            "[4]GE 3     ",9,9,"3.0",9,9, "THE CONTEMPORARY WORLD"                         ,0,51
  pahf1    db  10,8,32,            "[5]PAHF 1   ",9,9,"2.0",9,9, "MOVEMENT COMPETENCY TRAINING"                   ,0,51
  cce101   db  10,8,32,            "[6]CCE 101/L",9,9,"3.0",9,9, "INTRODUCTION TO COMPUTING (1ST T)"              ,0,51
  cce109   db  10,8,32,            "[7]CCE 109/L",9,9,"3.0",9,9, "FUNDAMENTALS OF PROGRAMMING"                    ,0,51
  nstp1    db  10,8,32,            "[8]NSTP 1   ",9,9,"3.0",9,9, "NATIONAL SERVICE TRAINING PROGRAM 1"            ,0,51
; 1ST YEAR 1ST SEM END
; 1ST YEAR 2ND SEM START
  y1s2     db 10,10,8,32,          "1st Year/2nd Sem"                                                             ,0
  uge1     db 10,8,32,             "[1]UGE 1    ",9,9,"6.0",9,9, "READING COMPREHENSION",                          0,51
  ge1      db 10,8,32,             "[2]GE 1     ",9,9,"3.0",9,9, "UNDERSTANDING THE SELF",                         0,51
  ge4      db 10,8,32,             "[3]GE 4     ",9,9,"3.0",9,9, "MATHEMATICS IN THE MODERN WORLD",                0,51
  cce107   db 10,8,32,             "[4]CCE 107/L",9,9,"3.0",9,9, "INTERMEDIATE PROGRAMMING",                       0,51
  cs25     db 10,8,32,             "[5]CS 25    ",9,9,"3.0",9,9, "DISCRETE STRUCTURES 1",                          0,51
  mth101   db 10,8,32,             "[6]MTH 101  ",9,9,"3.0",9,9, "DIFFERENTIAL CALCULUS",                          0,51
  pahf2    db 10,8,32,             "[7]PAHF 2   ",9,9,"2.0",9,9, "EXERCISE-BASED FITNESS ACTIVITY",                0,51
  nstp2    db 10,8,32,             "[8]NSTP 2   ",9,9,"3.0",9,9, "NATIONAL SERVICE TRAINING PROGRAM 2",            0,51
; 1ST YEAR 2ND SEM END
; 2ND YEAR 1ST SEM START
  y2s1     db 10,10,8,32,          "2nd Year/1st Sem"                                                             ,0 
  hci101   db 10,8,32,             "[1]HCI 101   ",9,9,"3.0",9,9, "HUMAN COMPUTER INTERACTION",                    0,51
  cce104   db 10,8,32,             "[2]CCE 104/L ",9,9,"3.0",9,9, "INFORMATION MANAGEMENT",                        0,51
  cs26     db 10,8,32,             "[3]CS 26/L   ",9,9,"3.0",9,9, "SOFTWARE DEVELOPMENT FUNDAMENTALS",             0,51
  cs3      db 10,8,32,             "[4]CS 3/L    ",9,9,"3.0",9,9, "DISCRETE STRUCTURES 2",                         0,51
  cce105   db 10,8,32,             "[5]CCE 105/L ",9,9,"3.0",9,9, "DATA STRUCTURES AND ALGORITHMS",                0,51
  cst4     db 10,8,32,             "[6]CST 4/L   ",9,9,"3.0",9,9, "CS PROFESSIONAL TRACK 1",                       0,51
  mth103   db 10,8,32,             "[7]MTH 103/L ",9,9,"3.0",9,9, "PROBABILITIES AND STATISTICS",                  0,51
  mth105   db 10,8,32,             "[8]MTH 105   ",9,9,"3.0",9,9, "INTEGRAL CALCULUS",                             0,51
  pahf3    db 10,8,32,             "[9]PAHF 3    ",9,9,"2.0",9,9, "DANCE AND SPORTS 1",                            0,51
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
  ge11     db 10,8,32,             "[3]GE 11       ",9,9,"3.0",9,9,"THE ENTREPRENEURIAL MIND",                     0,51
  cse10    db 10,8,32,             "[4]CSE 10/L    ",9,9,"3.0",9,9,"CS PROFESSIONAL ELECTIVE 2",                   0,51
  cs12     db 10,8,32,             "[5]CS 12/L     ",9,9,"3.0",9,9,"SOFTWARE ENGINEERING 1",                       0,51
  ge15     db 10,8,32,             "[6]GE 15       ",9,9,"3.0",9,9,"ENVIRONMENTAL SCIENCE",                        0,51
  phys101  db 10,8,32,             "[7]PHYS 101/L  ",9,9,"4.0",9,9,"COLLEGE PHYSICS 1",                            0,51
  cse7     db 10,8,32,             "[8]CSE 7/L     ",9,9,"3.0",9,9,"CS PROFESSIONAL ELECTIVE 1",                   0,51
; 3RD YEAR 1ST SEM END
; 3RD YEAR 2ND SEM START
  y3s2     db 10,10,8,32,          "3rd Year/2nd Sem"                                                             ,0
  PHYS102  db 10,8,32,             "[1]PHYS 102    ",9,9,"4.0",9,9,"COLLEGE PHYSICS 2",                            0,51
  CSE13    db 10,8,32,             "[2]CSE 13      ",9,9,"3.0",9,9,"CS PROFESSIONAL ELECTIVE 3",                   0,51
  CS15     db 10,8,32,             "[3]CS 15       ",9,9,"3.0",9,9,"PROGRAMMING LANGUAGES",                        0,51
  GE20     db 10,8,32,             "[4]GE 20       ",9,9,"3.0",9,9,"READING VISUAL ARTS",                          0,51
  CST14    db 10,8,32,             "[5]CST 14      ",9,9,"3.0",9,9,"CS PROFESSIONAL TRACK 4",                      0,51
  CS11     db 10,8,32,             "[6]CS 11       ",9,9,"3.0",9,9,"ARCHITECTURE AND ORGANIZATION",                0,51
  CS17     db 10,8,32,             "[7]CS 17       ",9,9,"3.0",9,9,"SOFTWARE ENGINEERING 2",                       0,51
  UGE2     db 10,8,32,             "[8]UGE 2       ",9,9,"3.0",9,9,"TECHNICAL WRITING IN THE DISCIPLINE",          0,51
; 3RD YEAR 2ND SEM END
; 3RD YEAR SUMMER SEM START
  y3ss     db 10,10,8,32,          "3rd Year/Summer"                                                             ,0
  CS16     db 10,8,32,             "[1]CS 16       ",9,9,"6.0",9,9,"PRACTICUM",                                    0,51
  CS20     db 10,8,32,             "[2]CS 20       ",9,9,"3.0",9,9,"CS PROFESSIONAL TRACK 5",                      0,51
; 3RD YEAR SUMMER SEM END
; 4TH YEAR 1ST SEM START
  y4s1     db 10,10,8,32,          "4th Year/2nd Sem"                                                             ,0
  CS19     db 10,8,32,             "[1]CS 19       ",9,9,"4.0",9,9,"OPERATING SYSTEMS",                            0,51
  CAED     db 10,8,32,             "[2]CAED        ",9,9,"3.0",9,9,"CAREER AND PERSONALITY DEVELOPMENT",           0,51
  CS24     db 10,8,32,             "[3]CS 24       ",9,9,"3.0",9,9,"CS PROFESSIONAL TRACK 6",                      0,51
  CCE106   db 10,8,32,             "[4]CCE 106     ",9,9,"3.0",9,9,"APPLICATIONS DEV'T AND EMERGING TECHNOLOGIES", 0,51
  CS21     db 10,8,32,             "[5]CS 21       ",9,9,"3.0",9,9,"NETWORKS AND COMMUNICATIONS",                  0,51
  CS18     db 10,8,32,             "[6]CS 18       ",9,9,"3.0",9,9,"CS THESIS WRITING 1",                          0,51
; 4TH YEAR 1ST SEM END
; 4TH YEAR 2ND SEM START
  y4s2     db 10,10,8,32,          "4th Year/2nd Sem"                                                             ,0
  CS23     db 10,8,32,             "[1]CS 23       ",9,9,"6.0",9,9,"CS THESIS WRITING 2",                          0,51
  CS22     db 10,8,32,             "[2]CS 22       ",9,9,"3.0",9,9,"INFORMATION ASSURANCE AND SECURITY",           0,51
; 4TH YEAR 2ND SEM END

.data?
	studNameIn  db 100 dup(?)
	courseIn    db 100 dup(?)
	yearIn      db 100 dup(?)
	year1sem1In db 10  dup(?) ;1st Year/1st Sem
  year1sem2In db 10  dup(?) ;1st Year/2nd Sem
  year2sem1In db 10  dup(?) ;2nd Year/1st Sem
  year2sem2In db 10  dup(?) ;2nd Year/2nd Sem

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

EXIT:

invoke ExitProcess, 0

end start



