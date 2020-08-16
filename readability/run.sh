#!/bin/bash

var=`ls ../projects`


for value in $var
do
    echo "--------------------${value}-----------------"
    for file in `find /home/dorma10/mutation-analysis/projects/$value/ -type f -name "*.java"`
    do
        read_output=`java -jar rsm.jar $file`
        read_metric="$(cut -d':' -f2 <<< $read_output)"
        echo $read_metric
        echo $file,$read_metric >> /home/dorma10/mutation-analysis/final-results/readability/$value.csv
    done
done



#find ../projects/commons-cli/ -type f -name "*.java"
