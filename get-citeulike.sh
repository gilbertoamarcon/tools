#!/bin/bash


## Get Citeulike

# Getting a bib-references file from the Citeulike reference managing website.
#

# Remote BIB URL
rbib='http://www.citeulike.org/bibtex/user/marcondg?do_username_prefix=0&key_type=4&incl_amazon=1&clean_urls=1&smart_wrap=1&q=&fieldmap=abstract:'


# Download bib file
wget $rbib -O bib.bib -nv 
