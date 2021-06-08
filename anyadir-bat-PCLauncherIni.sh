#!/bin/bash

for file in $(find . -name "*.iso*" -type f | sed 's/ /_/g')
do       
 ori=$(echo "${file}" | sed 's/_/ /g')
 filename="${ori%.*}"
 name=${filename#*./}
 _bat=$(echo "${name}.bat")
 echo "[${name}]"   >> "E:\Hyperspin-1.5\RocketLauncher\Modules\PCLauncher\PCLauncher.ini"
 echo "FadeTitle=Dolphin"   >> "E:\Hyperspin-1.5\RocketLauncher\Modules\PCLauncher\PCLauncher.ini"
 echo "Application=..\..\_Arcade\the-eye.eu\public\rom\Nintendo GameCube\Dolphin-x64\\${_bat}"  >> "E:\Hyperspin-1.5\RocketLauncher\Modules\PCLauncher\PCLauncher.ini"
done
