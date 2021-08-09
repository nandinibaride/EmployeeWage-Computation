#! /bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAY=20
MAX_WORKING_HR=70
totalworkhour=0
day=1

while [ $day -le $MAX_WORKING_DAYS ] && [ $totalworkhour -le $MAX_WORK_HR ]
randomcheck=$((RANDOM%3))
do 
   case $randomcheck in
   $IS_PRESENT_FULL_TIME)
     empHrs=8 ;;
   $IS_PRESENT_HALF_TIME)

   empHrs=4 ;;
*)
  empHrs=0 ;;
esac

totalworkhour=$(( totalworkhour + empHrs ))
salary=$(( empHrs * EMP_RATE_PER_HR ))
((day++))
done
#totalsalary=$(( totalworkhour * EMP_RATE_PER_HR ))
