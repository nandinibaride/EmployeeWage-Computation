#! /bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAY=20
randomcheck=$((RANDOM%3))
for ((day=1;day<=$MAX_WORKING_DAY;day++))
do 
   case $randomcheck in
   $IS_PRESENT_FULL_TIME)
     empHrs=8 ;;
   $IS_PRESENT_HALF_TIME)

   empHrs=4 ;;
*)
  empHrs=0 ;;
esac

salary=$(( empHrs * EMP_PER_HOUR ))
total_salary=$(( empHrs * EMP_PER_HOUR + WORKING_DAY ))
done
