#!/bin/bash

for file in $(find . -name "*JP*" -type f | sed 's/ /_/g')
  do    
  ori=$(echo "${file}" | sed 's/_/ /g')
  it=$(echo "${ori}" | sed s/JP/Japan/g)
  mv "$ori" "$it"
done
