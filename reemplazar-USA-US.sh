#!/bin/bash

for file in $(find . -name "*USA*" -type f | sed 's/ /_/g')
do      
ori=$(echo "${file}" | sed 's/_/ /g')
it=$(echo "${ori}" | sed s/USA/US/g)   mv "$ori" "$it"
done
