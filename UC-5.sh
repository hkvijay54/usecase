#!/bin/bash -x

isPatTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
numberOfWorkingDays=20

for((day=1; day<=$numberOfWorkingDays; day++))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
			$isPartime)
				empHrs=4
			;;
			$isFullTime)
				empHrs=8
			;;
			*)
				empHrs=0
			;;
	esac
	salary=$(($empRatePerHr*$empHrs))
	totalSalary=$(($totalSalary+$salary))
done
