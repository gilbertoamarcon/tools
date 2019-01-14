#!/bin/bash

## Update Personal Page

# Usage:
# ./personal-page.sh
#

loc=${HOME}/Dropbox/Apps/Pancake.io/
dest=marcondg@shell.onid.oregonstate.edu:public_html/
$(wget -O ${loc}bib/bib.bib http://www.citeulike.org/bibtex/user/marcondg/tag/mine?do_username_prefix=0&key_type=4&incl_amazon=0&clean_urls=0&smart_wrap=0&q=)
sed -i 's/\\\~{}/~/g' ${loc}bib/bib.bib
scp -r $loc/* $dest
