#!/bin/bash
# write a loop to replace spaces to underscores in all file names in the current directory
   
for file in *; do
       if [[ -f "$file" ]]; then
           new_file="${file// /!}"
	   if [[ $file != $new_file ]]; then
           	mv "$file" "$new_file"
	   fi
       fi
done
