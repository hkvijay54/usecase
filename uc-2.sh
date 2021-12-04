#!/bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))

if [ $ispresent -eq $randomcheck ]
then
	wageperhr=20;
	workinghr=8;
	salary=$(($wageperhr*$workinghr));
	echo 'Employee is present salary is ='$salary
else
	salary=0
	echo 'Employee is Absent salary is ='$salary
fi
