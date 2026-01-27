#!/bin/bash
#this is day-14: enviorment variable in Bash

#this is child script os run it after running the parent secipt .i.e. ./envar.sh 

source ./envar.sh

intro(){
	for things in intro ;do
	echo " Name is "$name""
	echo "Age is "$age""
	echo "Height is "$height""
done
}

intro 
