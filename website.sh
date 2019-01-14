#!/bin/bash

## Website Maker 

# This script will transform all my scripts into this website. 
#

# Cleaning up
rm ~/dev/gilbertoamarcon.github.io/content/*.html
rm *.html > /dev/null 2>&1

# Adding raw link
find . -name "*.sh" -type f -exec bash -c 'printf "#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/$(basename {}) target=_blank>Follow this link for the raw script.</a>" >> {}' \;

# Copying sh scripts
find . -name "*.sh" -type f -exec chmod +x {} \;
chmod +x *.sh
find . -name "*.sh" -type f -exec cp {} {}.html \;

# Removing link line
sed -i '/^\#<a href=https/d' *.sh

# Renaming bash to HTML
rename 's/(.*).sh.html/$1.html/' *.sh.html

# Building menu
echo "" > website/_menu
find . -name "*.html" -type f -exec bash -c 'echo "						<li><a href="$(basename {})" class=menu_button>$(cat {} | grep -m 1 '"'"'##'"'"' | sed -e '"'"'s/##\s*//g'"'"')						</a></li>" >> website/_menu' \;
sort -db website/_menu > aux
mv aux website/_menu

# Removing !/bin/bash
find . -name "*.html" -type f -print0 | xargs -0 perl -0 -pi -e 's/\#\!\/bin\/bash\n//g'

# Removing # =====
find . -name "*.html" -type f -print0 | xargs -0 perl -0 -pi -e 's/#\s*=+\n//g'

# Inserting code divs
find . -name "*.html" -type f -print0 | xargs -0  perl -0 -pi -e 's/\n\s*\n/\n/g'
find . -name "*.html" -type f -print0 | xargs -0  perl -0 -pi -e 's/\n([^#].+)((\n[^#].+)*)/\n<div class=\"codebox\">\1\2<\/div>/g'

# Replacing ##
find . -name "*.html" -type f -print0 | xargs -0 sed -i 's/^##\s*\(.\+\)/\n<h2>\1<\/h2>/g'

# Replacing #
find . -name "*.html" -type f -print0 | xargs -0 sed -i 's/^#\s*\(.*\)/\1\n<br\/>/g'

# Concat and moving
find . -name "*.html" -type f -exec bash -c 'cat website/_prefix website/_menu website/_midfix {} website/_suffix > ~/dev/gilbertoamarcon.github.io/content/$(basename {})' \;

# Main page
cat website/_prefix website/_menu website/_midfix website/_main website/_suffix > ~/dev/gilbertoamarcon.github.io/content/index.html

# Cleaning up
find . -name "*.html" -exec rm {} \;

