#!/bin/bash

## SSH Login

# Here are some basic SSH commands that save me up a lot of time.
#

# SSH login to remote server
local_path="${HOME}/Dropbox/Apps/Pancake.io"
remote_path="marcondg@shell.onid.oregonstate.edu:public_html/"
bib_file=$local_path/bib/bib.bib

wget -O $bib_file 'http://www.citeulike.org/bibtex/user/marcondg/tag/mine?do_username_prefix=0&key_type=4&incl_amazon=1&clean_urls=0&smart_wrap=1&q='
# sed -i 's/url = /url_Paper = /g' $bib_file

scp -r $local_path/* $remote_path


