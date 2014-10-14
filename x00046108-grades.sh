java grades 49 49  #Exam Score: 49 & Practical Score: 49 |  Expected Output= fail as combined scores are less than 50
java grades 39 100 #Exam Score: 39 (Fail) & Practical Score: 100 (Pass) | Expected Output: Component Fail as exam scores are less than 40.
java grades 100 39 #Exam Score: 100 (Pass) & Practical Score: 39 (Fail) | Expected Output: Component as practical scores are less than 40,
java grades 51 51 #Exam Score: 51 (Pass) & Practical Score: 51 (Pass) | Expected Output: Pass - combined scores between 50 and 80 inclusive are pass
java grades 81 81 #Exam Score: 81 (Pass) & Practical Score: 81 (Pass) | Expected Output: Pass with distinction - combined scores between 80 and 100 inclusive, the grade is ”Pass with distinction”.
java grades 101 89 #Exam Score: 101 (Out of bounds as it is greater the 100) & Practical Score: 89 (Pass) | Expected Output: invaild input - exam grade is out of bounds of program. 
java grades 89 101 #Exam Score: 89 (Pass) & Practical Score: 101 (Out of bounds as it is greater the 100) | Expected Output: invaild input - practical grade is out of bounds of program. 
java grades 70% 70% #Exam Score: 70% (Out of bounds as it is greater the 100) & Practical Score: 70% (Out of bounds as it is greater the 100) | Expected Output: invaild input - both grades are out of bounds of program. 
java grades 99.5 99.5 #Exam Score: 99.5 (Out of bounds as 99.5 is a double) & Practical Score: 99.5 (Out of bounds as 99.5 is a double) | Expected Output: invaild input  - Only intagers are accepted.
java grades NP 80  #Exam Score: NP (Out of bounds as NP is a string) & Practical Score: 80 (Pass) | Expected Output: invaild input  - Only intagers are accepted.
java grades 80 NP #Exam Score: 80 (Pass) & Practical Score: NP (Out of bounds as NP is a string) | Expected Output: invaild input  - Only intagers are accepted.
