#!/bin/bash

#$1 = File
#$2 = source
#$3 = target
#$4 = extension
#$5 = element
#$6 = separator

#read xml game template from hyperspin & copy games
#example -> sh copyDataFromFileWithPathSourceAndTargetWithExtension.sh ./Downloads/BMBLUSeD.txt /c/Users/vicboma/ /c/Users/vicboma/Downloads/ .zip name =
#
#Params: ./Downloads/BMBLUSeD.txt /c/Users/vicboma/ /c/Users/vicboma/Downloads/ .zip name =
#Copiado /c/Users/vicboma/005.zip
#Copiado /c/Users/vicboma/10yard.zip
#/c/Users/vicboma/1942.zip  -- not found
#/c/Users/vicboma/ajax.zip  -- not found
#/c/Users/vicboma/alphamis.zip  -- not found
#

echo "Params: $@"

F=$(cat $1 | tr ";" "\n")
SUB=$5
for i in $F
do 
	if [[ "$i" == *"$SUB"* ]]; then
		R=$(echo $i | awk -F'$element' '{print $2}' | tr -d '"' | tr -d '>')
		if [ -f "$2$R$4" ]; then
			cp $2$R$4 $3/ && echo "Copiado $2$R$4"
		else 
			echo "$2$R$4  -- not found"
		fi
	fi
done

exit 0
