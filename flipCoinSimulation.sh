#!/bin/bash


echo "Welcome to Flip Coin Simulation Program."
echo "RULE:"
echo "- If its tie then the game will be continued till we get winner"


countHeads=0
countTails=0
i=0

read -p "How many time you want to flip coin: " filpTimes

while [ "$countHeads" -eq "$countTails" ]
do
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

  if [ "$countHeads" -eq "$countTails" ];then
    ((i--))
      echo -e "\n\nIT's A TIE... ONE MORE ROUND OF GAME ..."
  fi
done

echo "Count of head: $countHeads"
echo "Count of tail: $countTails"

echo ""

if [ $countHeads -gt $countTails ];then
 echo -e "\nWINNER IS HEAD"
 echo "Count of head: $countHeads"
elif [ $countTails -gt $countHeads ];then
 echo -e "\nWINNER IS TAIL"
 echo "Count of tail: $countTails"
fi
