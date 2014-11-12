#!/bin/bash

# Test Case 1
# Inout: 
# Expected Output=  
# Actual:

output=$(java trafficfine 49 49)
pass=0
fail=0

if [ $output == "Fail" ]; then
	echo 'Test case 1 Passed'
       	pass=$((pass + 1))
else 
	echo 'Test case 1 Failed'
	fail=$((fail + 1))
fi
	

# Test Case 2 
# Input: 
# Expected 
# Actual:

output1=(java trafficfine 49 49)

if [ $output1 == "Component Fail" ]; then
	echo 'Test case 2 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 2 Failed'
	fail=$(($fail + 1))
fi


#Test Case: 3
#Exam Score: 
#Expected Output:
#Actual: 

output2=(java trafficfine 49 49)

if [ $output2 == "Pass" ]; then
	echo 'Test case 3 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 3 Failed'
	fail=$(($fail + 1))
fi


#Test Case 4
#Exam Score: 
#Expected Output: 
#Actual:

output3=(java trafficfine 50% 50%)
if [ $output3 == "Invalid input" ]; then
	echo 'Test case 4 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 4 Failed'
	fail=$(($fail + 1))
fi

echo '==================='
echo 'Test Suite Summary:'
echo '==================='
echo 'Pass:' $pass
echo 'Fail:'  $fail



