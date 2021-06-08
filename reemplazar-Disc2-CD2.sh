 #!/bin/bash
for file in $(find . -name "*Disc 2*" -type f | sed 's/ /_/g')
 do   
 ori=$(echo "${file}" | sed 's/_/ /g')
 it=$(echo "${ori}" | sed -re 's/[(]Disc2[)]/- CD2/g')
 mv "$ori" "$it"
 done
