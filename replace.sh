#!/bin/bash

## Search and Replace
# Here are some basic terminal commands that save me up a lot of time. 
#

# Search and replace in file (single file)
sed -i 's/old/new/g' filename

# Search and replace in file (multiple files)
sed -i 's/old/new/g' filename*

# Recursively search and replace in multiple files
find . -type f -print0 | xargs -0 sed -i 's/old/new/g'

## Regex Search and Replace

# Search and replace using regex
printf "Not here. Over there though.\n" | perl -pe 's/(here)/ BEGIN \1 END/g'

# Search and replace using regex with \n
printf "Not here.\n\n\nOver there though.\n\n" | perl -0 -pe 's/(\n+)/\n/g'

