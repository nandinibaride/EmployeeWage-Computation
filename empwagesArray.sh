#! /bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE=20
MAX_WORKING_DAYS=20
MAX_WORK_HOUR=70
declare -a payment
count=0
totalworkhour=0
day=1

while [ $day -le $MAX_WORKING_DAYS ] && [ $totalworkhour -le $MAX_WORK_HOUR ]
do
 empcheck=$((RANDOM%3))

 case $empcheck in
           $IS_PRESENT_FULL_TIME)
                 empHrs=8 ;;
           $IS_PRESENT_HALF_TIME)
                 empHrs=4 ;;
       *)
                 empHrs=0
esac

totalworkhour=$(( totalworkhour + empHrs ))
salary=$(( empHrs * EMP_RATE ))
  ((day++))
payment[((count++))]=$salary
done



totalsalary=$(( totalworkhour * EMP_RATE ))
echo indexes:${!payment[*]}
echo values:${payment[*]}

