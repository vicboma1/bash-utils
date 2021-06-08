#!/bin/bash
for file in $(find . -name "*.iso*" -type f | sed 's/ /_/g')
do       
 ori=$(echo "${file}" | sed 's/_/ /g')
 filename="${ori%.*}"; echo "${filename#*./}.bat"
 echo "Dolphin.exe -b -e \"D:/GameCube/${ori#*./}\"" > "${filename#*./}.bat"
done
