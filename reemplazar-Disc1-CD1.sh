 #!/bin/bash
for file in $(find . -name "*Disc 1*" -type f | sed 's/ /_/g')
 do   
 ori=$(echo "${file}" | sed 's/_/ /g')
 it=$(echo "${ori}" | sed -re 's/[(]Disc 1[)]/- CD1/g')
 mv "$ori" "$it"
 done
