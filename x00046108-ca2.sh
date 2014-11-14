#!/bin/bash

pass=0
fail=0

# Test Case 1
# Input: Speed: 101, Speed Limit: 30
# Expected Output=  "SUSPEND"
# Actual: "100"

testCase1=$(java trafficfine 101 30)

if [[ $testCase1 == 'SUSPEND' ]]; then
	echo 'Test case 1 Passed'
       	pass=$((pass + 1))
else 
	echo 'Test case 1 Failed'
	fail=$((fail + 1))
fi
	

# Test Case 2 
# Input: Speed: 29, Speed Limit: 30
# Expected: "EUR 0"
# Actual: "EUR 0"

testCase2=$(java trafficfine 29 30)

if [[ $testCase2 == 'EUR 0' ]]; then
	echo 'Test case 2 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 2 Failed'
	fail=$(($fail + 1))
fi


#Test Case: 3
#Input: Speed 35, Speed Limit: 30
#Expected Output: "EUR 80"
#Actual: Notting

testCase3=$(java trafficfine 35 30)

if [[ $testCase3 == 'EUR 80' ]]; then
	echo 'Test case 3 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 3 Failed'
	fail=$(($fail + 1))
fi


#Test Case 4
#Input: Speed: 50, Speed Limit: 30
#Expected Output: "EUR 100"
#Actual: Notting

testCase4=$(java trafficfine 50 30)
if [[ $testCase4 == 'EUR 100' ]]; then
	echo 'Test case 4 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 4 Failed'
	fail=$(($fail + 1))
fi

#Test Case 5
#Input: Speed: 79, Speed Limit: 80
#Expected Output: “EUR 100"
#Actual: "EUR 150"

testCase5=$(java trafficfine 79 50)
if [[ $testCase5 == 'EUR 100' ]]; then
	echo 'Test case 5 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 5 Failed'
	fail=$(($fail + 1))
fi

#Test Case 6
#Input: Speed: 119, Speed Limit: 50
#Expected Output: "EUR 150"
#Actual: 

testCase6=$(java trafficfine 119 50)
if [[ $testCase6 == 'EUR 150' ]]; then
	echo 'Test case 6 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 6 Failed'
	fail=$(($fail + 1))
fi

#Test Case 7
#Input: Speed 121, Speed Limit: 50
#Expected Output: "SUSPEND"
#Actual: "SUSPEND"

testCase7=$(java trafficfine 121 50)
if [[ $testCase7 == 'SUSPEND' ]]; then
	echo 'Test case 7 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 7 Failed'
	fail=$(($fail + 1))
fi

#Test Case 8
#Input: Speed: 120, Speed Limit: 120
#Expected Output: "EUR 0"
#Actual: "EUR 250"

testCase8=$(java trafficfine 120 120)
if [[ $testCase8 == 'EUR 0' ]]; then
	echo 'Test case 8 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 8 Failed'
	fail=$(($fail + 1))
fi

#Test Case 9
#Input: Speed: 201, Speed Limit: 120
#Expected Output: "SUSPEND"
#Actual: "SUSPEND"

testCase9=$(java trafficfine 201 120)
if [[ $testCase9 == '' ]]; then
	echo 'Test case 9 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 9 Failed'
	fail=$(($fail + 1))
fi

#Test Case 10
#Input: Speed: 119, Speed Limit: 120
#Expected Output: "EUR 0"
#Actual: "EUR 0"

testCase10=$(java trafficfine 119 120)

if [[ $testCase10 == 'EUR 0' ]]; then
	echo 'Test case 10 Passed'
	pass=$(($pass + 1))
else
	echo 'Test case 10 Failed'
	fail=$(($fail + 1))
fi



echo '==================='
echo 'Test Suite Summary:'
echo '==================='
echo 'Pass:' $pass
echo 'Fail:'  $fail

