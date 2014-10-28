#!/bin/bash



# Test Case 1
# Inout: Exam Score: 49 & Practical Score: 49
# Expected Output= 'Fail' - as combined scores are less than 50
# Actual: 'Fail'

output=$(java grades_v2 49 49)
if [ $output == "Fail" ] 
then
	echo 'Test case 1 Passed'
else
	echo 'Test case 1 Failed'
fi
	

# Test Case 2 
# Input: Exam Score: 39 (Fail) & Practical Score: 100 (Pass) 
# Expected Output: 'Component Fail' - as exam scores are less than 40.
# Actual: 'Component Fail'

output1=(java grades_v2 39 100)

if [ $output1 == "Component Fail" ] 
then
	echo 'Test case 2 Passed'
else
	echo 'Test case 2 Failed'
fi


#Test Case: 4
#Exam Score: 51 (Pass) & Practical Score: 51 (Pass) 
#Expected Output: 'Pass' - combined scores between 50 and 80 inclusive are pass
#Actual: 'Pass'


output2=(java grades_v2 51 51)

if [ $output2 == "Pass" ] 
then
	echo 'Test case 3 Passed'
else
	echo 'Test case 3 Failed'
fi


#Test Case 5
#Exam Score: 50% (Pass) & Practical Score: 50% (Pass) 
#Expected Output: Invalid input
#Actual: Invalid input
output3=(java grades_v2 50% 50%)
if [ $output3 == "Invalid input" ] 
then
	echo 'Test case 4 Passed'
else
	echo 'Test case 4 Failed'
fi


