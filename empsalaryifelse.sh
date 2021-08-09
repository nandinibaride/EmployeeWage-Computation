
#! /bin/bash -x
#constant variable
IS_PRESENT=1
EMP_RATE_HR=20
#variable
randomCheck=$((RANDOM%2))

#selection
if [ $randomCheck -eq 1 ]
then
         empHrs=8
      salary=$((empHrs * EMP_RATE_PER_HR ))
else
       salary=0
fi






