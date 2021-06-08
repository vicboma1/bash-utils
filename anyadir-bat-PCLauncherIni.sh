#!/bin/bash

for file in $(find . -name "*.iso*" -type f | sed 's/ /_/g')
do       
 ori=$(echo "${file}" | sed 's/_/ /g')
 filename="${ori%.*}"
 echo "[${ori#*./}]" >> "E:\Hyperspin-1.5\RocketLauncher\Modules\PCLauncher\PCLauncher.ini"
 echo "FadeTitle=Dolphin" >> "E:\Hyperspin-1.5\RocketLauncher\Modules\PCLauncher\PCLauncher.ini"
 echo "Application=..\..\_Arcade\the-eye.eu\public\rom\Nintendo GameCube\Dolphin-x64\${filename#*./}.bat">> "E:\Hyperspin-1.5\RocketLauncher\Modules\PCLauncher\PCLauncher.ini"
done
