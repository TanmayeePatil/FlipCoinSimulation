#!/bin/bash

echo "Welcome to Flip Coin Simulation Program."

myRan=$(( ( RANDOM % 2 ) + 1 ))

 if [ $myRan -eq 1 ];then
   echo "HEADS"
 else
   echo "TAILS"
 fi
