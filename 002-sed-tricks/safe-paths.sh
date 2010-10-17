#!/bin/bash
SAVEIFS=$IFS
IFS=`echo -en "\n\b"`
P=$1/*
for F in $P
do
	if test "`echo \"$F\"|grep \",\"`" = ""
  then
		echo "$F"
  fi
done
IFS=$SAVEIFS
