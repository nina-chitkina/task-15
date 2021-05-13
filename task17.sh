#!/bin/bash

./assignment.sh -random-text | ./second.sh -u;

./assignment.sh -random-text | ./second.sh -l;

i=1; 
while [[ $i -le 5 ]]; 
do 
    MyPATH="RES"
    RANDTEXT=$(./assignment.sh -random-text | tr ' ' '-' );
    ./second.sh --mkdir $MyPATH/$RANDTEXT
    i=$((i+1)); 
done

i=1; 
while [[ $i -le 5 ]]; 
do 
    MyPATH="RES"
    RandNum=$( ./assignment.sh -random-number );
    ./second.sh --mkdir $MyPATH/$RandNum; 
    i=$((i+1)); 
done

i=1; 
while [[ $i -le 5 ]]; 
do 
    MyPATH="RES"
    RanTx=$(./assignment.sh -random-text | tr ' ' '-' );
    RanNum=$( ./assignment.sh -random-number );
    ./second.sh --mkdir $MyPATH/$RanTx-$RanNum; 
    i=$((i+1)); 
done

i=1; 
while [[ $i -le 5 ]]; 
do 
    MyPATH="RES"
    RanTx=$(./assignment.sh -random-text | tr ' ' '-' );
    RanNum=$( ./assignment.sh -random-number );
    DirName=$MyPATH/$RanTx-$RanNum-Keep
    ./second.sh --mkdir $DirName; 
    touch $DirName/.gitkeep;
    i=$((i+1)); 
done



