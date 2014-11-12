#!/bin/bash

# Test Case 1
# Input: Speed Limit: 30, Speed: 101 
# Expected Output=  "SUSPEND"
# Actual: Noting

pass=0
fail=0

output=$(java trafficfine 30 101)

if [[ $output == "SUSPEND" ]]; then
	echo "Test case 1 Passed"
       	pass=$((pass + 1))
else 
	echo 'Test case 1 Failed'
	fail=$((fail + 1))
fi
	

# Test Case 2 
# Input: Speed Limit: 30, Speed: 29
# Expected: "EUR 0"
# Actual: "EUR 0"

output1=$(java trafficfine 30 30)

if [[ $output1 == "EUR 0" ]]; then
	echo 'Test case 2 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 2 Failed'
	fail=$(($fail + 1))
fi


#Test Case: 3
#Input: Speed Limit: 30, Speed 35.
#Expected Output: "EUR 80"
#Actual: Notting

output2=$(java trafficfine 30 35)

if [[ $output2 == "EUR 80" ]]; then
	echo 'Test case 3 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 3 Failed'
	fail=$(($fail + 1))
fi


#Test Case 4
#Input: Speed Limit: 30, Speed: 50
#Expected Output: "EUR 100"
#Actual: Notting

output3=$(java trafficfine 30 50)
if [[ $output3 == "EUR 100" ]]; then
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



