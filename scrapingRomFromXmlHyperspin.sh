#!/bin/bash

echo "Params: $@"

#$1 = File
#$2 = target
#$3 = extension
#$4 = element
#$5 = separator
#
#  sh scrapingRomFromXmlHyperspin.sh ./Downloads/xml/file.xml /c/Users/vicboma/Downloads/xml/ .zip name =

F=$(cat $1 | tr ";" "\n")
SUB=$4
for i in $F
do 
	if [[ "$i" == *"$SUB"* ]]; then
	R=$(echo $i | awk -F"$5" '{print $2}' | tr -d '"' | tr -d '>')
	curl https://downloads.retrostic.com/roms/$R$3 --output $2$R$3 && echo -e "\n\nCopiado $2$R$3\n\n"
	fi
done

exit 0
