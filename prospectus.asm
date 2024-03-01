.386
.model flat, stdcall
option casemap :none
    
    include C:\masm32\include\windows.inc
    include C:\masm32\include\kernel32.inc
    include C:\masm32\include\masm32.inc
    includelib C:\masm32\lib\kernel32.lib
    includelib C:\masm32\lib\masm32.lib

.data 

    uMin db 10,10,9,9,9,9,8,32, "UNIVERSITY OF MINDANAO",0
    major db 10,9,9,8,32,       "Bachelor of Science in Computer Science",0
    dept db 10,9,9,9,8,32,      "COLLEGE OF COMPUTING EDUCATION EDUCATION",0
    studName db  10,10,8,32,    "Name: ",0
    course db 10,8,32,          "Course: ",0
    year db 10,8,32,            "Year: ",0
    
    year1sem1 db 10,10,8,32,"1st Year/1st Sem",0 
    header db 10,8,32,"Subj Code",9,9,"Unit",9,9,"Subj Title",0    
    cs8 db 10,8,32,   "[1]CS 8            3.0             Social Issues and Professional Practice",0,51
    ge2 db 10,8,32,   "[2]GE 2            3.0             Purposive Communication w/ Interactive Learning",0,51
    ge15 db 10,8,32,  "[3]GE 15           3.0             Environmental Science",0,51
    ge3 db 10,8,32,   "[4]GE 3            3.0             The Contemporary World",0,51
    pahf1 db 10,8,32, "[5]PAHF 1          2.0             Movement Competency Training",0,51
    cce101 db 10,8,32,"[6]CCE 101/L       3.0             Introduction to Computing (1st T)",0,51
    cce109 db 10,8,32,"[7]CCE 109/L       3.0             Fundamentals of Programming",0,51  
    nstp1 db 10,8,32, "[7]NSTP 1          3.0             National Service Training Program 1",0,51  

    year1sem2 db 10,10,8,32,"1st Year/2nd Sem",0 
    ; header here    
    uge1 db 10,8,32,  "[1]UGE 1           6.0             Reading Comprehension",0,51
    ge1 db 10,8,32,   "[2]GE 1            3.0             Understanding the Self",0,51
    ge4 db 10,8,32,   "[3]GE 4            3.0             Mathematics in the Modern World",0,51
    cce107 db 10,8,32,"[4]CCE 107/L       3.0             Intermediate Programming",0,51
    cs25 db 10,8,32,  "[5]CS 25           3.0             Discrete Structures 1",0,51
    mth101 db 10,8,32,"[6]MTH 101         3.0             Differential Calculus",0,51
    pahf2 db 10,8,32, "[7]PAHF 2          2.0             Exercise-based Fitness Activity",0,51  
    nstp2 db 10,8,32, "[7]NSTP 2          3.0             National Service Training Program 2",0,51 

    year2sem1 db 10,10,8,32,"2nd Year/1st Sem",0 
    ; header here    
    hci101 db 10,8,32,"[1]HCI 101         3.0             Human Computer Interaction",0,51
    cce104 db 10,8,32,"[2]CCE 104/L       3.0             Information Management",0,51
    cs26 db 10,8,32,  "[3]CS 26/L         3.0             Software Development Fundamentals",0,51
    cs3 db 10,8,32,   "[4]CS 3/L          3.0             Discrete Structures 2",0,51
    cce105 db 10,8,32,"[5]CCE 105/L       3.0             Data Structures and Algorithms",0,51
    cst4 db 10,8,32,  "[6]CST 4/L         3.0             CS Professional Track 1",0,51
    mth103 db 10,8,32,"[7]MTH 103/L       3.0             Probabilities and Statistics",0,51  
    mth105 db 10,8,32,"[7]MTH 105         3.0             Integral Calculus",0,51 
    pahf3 db 10,8,32, "[7]PAHF 3          2.0             Dance and Sports 1",0,51 

    ; year2sem2 db 10,10,8,32,"2nd Year/2nd Sem",0 
    ; ; header here    
    ; ge6 db 10,8,32,   "[1]GE 6            3.0             Rizal's Life and Works",9,"hihi",0,51
    ; ge8 db 10,8,32,   "[2]GE 8            3.0             Readings in Philippine History",9,"hi",0,51
    ; cst5 db 10,8,32,  "[3]CST 5/L         3.0             CS Professional Track 2",0,51
    ; ge11 db 10,8,32,  "[4]GE 11           3.0             The Entrepreneurial Mind",0,51
    ; bsm222 db 10,8,32,"[5]BSM 222         3.0             Linear Algebra",0,51
    ; cs6 db 10,8,32,   "[6]CS 6/L          3.0             Algorithms and Complexity",0,51
    ; bsm312 db 10,8,32,"[7]BSM 312         3.0             Differential Equations",0,51  
    ; cse7 db 10,8,32,  "[7]CSE 7/L         3.0             CS Professional Elective 1",0,51 
    ; pahf4 db 10,8,32, "[7]PAHF 4          2.0             Dance and Sports 2",0,51 

    year2sem2 db 10,10,8,32,"2nd Year/2nd Sem",0 
    ; header here    
    ge6 db 10,8,32,   "[1]GE 6",9,9,"3.0",9,9,"Rizal's Life and Works",0
    ge8 db 10,8,32,   "[1]BSM 222",9,9,"3.0",9,9,"Linear Algebra",0,51
    ; ge8 db 10,8,32,   "[2]GE 8            3.0             Readings in Philippine History",9,"hi",0,51
    cst5 db 10,8,32,  "[3]CST 5/L         3.0             CS Professional Track 2",0,51
    ge11 db 10,8,32,  "[4]GE 11           3.0             The Entrepreneurial Mind",0,51
    bsm222 db 10,8,32,"[5]BSM 222         3.0             Linear Algebra",0,51
    cs6 db 10,8,32,   "[6]CS 6/L          3.0             Algorithms and Complexity",0,51
    bsm312 db 10,8,32,"[7]BSM 312         3.0             Differential Equations",0,51  
    cse7 db 10,8,32,  "[7]CSE 7/L         3.0             CS Professional Elective 1",0,51 
    pahf4 db 10,8,32, "[7]PAHF 4          2.0             Dance and Sports 2",0,51 
    

.data? 
	studNameIn db 100 dup(?) 
	courseIn db 100 dup(?) 
	yearIn db 100 dup(?) 
	year1sem1In db 10 dup(?) ;1st Year/1st Sem
    year1sem2In db 10 dup(?) ;1st Year/2nd Sem 
    year2sem1In db 10 dup(?) ;2nd Year/1st Sem
    year2sem2In db 10 dup(?) ;2nd Year/2nd Sem 

.code
start: 
    invoke ClearScreen
    invoke StdOut, addr uMin
    invoke StdOut, addr major
    invoke StdOut, addr dept
    invoke StdOut, addr studName
    invoke StdIn, addr studNameIn, 100
    invoke StdOut, addr course 
    invoke StdIn, addr courseIn, 100
	invoke StdOut, addr year 
    invoke StdIn, addr yearIn, 100
    JMP display

display:
;1st Year/1st Sem
    invoke StdOut, addr year1sem1  
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
    invoke StdOut, addr year1sem2  
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
    invoke StdOut, addr year2sem1  
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
    invoke StdOut, addr year2sem2  
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



