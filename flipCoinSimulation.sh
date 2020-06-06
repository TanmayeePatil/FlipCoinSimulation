#!/bin/bash


echo "Welcome to Flip Coin Simulation Program."

countHeads=0
countTails=0
i=0

read -p "How many time you want to flip coin: " filpTimes

while [ $i -ne $filpTimes ]
do
myRan=$(( ( RANDOM % 2 ) + 1 ))

 if [ $myRan -eq 1 ];then
   echo "HEADS"
   countHeads=$(( $countHeads+1 ))
 else
   echo "TAILS"
   countTails=$(( $countTails+1 ))
 fi
  (( i++ ))
done

echo "Count of head: $countHeads"
echo "Count of tail: $countTails"
