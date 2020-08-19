#!/bin/bash

#var=`ls ../projects`
#for value in $var
#do
        value='closure-stylesheets'
	python3 change_pom.py $value
	echo $value
	mvn install; mvn package; mvn exec:java;
	cp test-smells.csv ../final-results/test-smells/$value.csv;
	cp code-smells.csv ../final-results/code-smells/$value.csv;
	cp ck-metrics.csv ../final-results/ck-metrics/$value.csv 
#done

