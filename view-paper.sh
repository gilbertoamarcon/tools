#!/bin/bash
# =========================
## View Overleaf Paper Offline
# =========================

# Provide the link to the Overleaf project as a command line argument:
# ./view-paper.sh https://www.overleaf.com/11526189qqdhvsmwyytc#/43580908/
#

# Parsing input: Project URL to get Project ID
url=$1
IFS='/#' read -ra tokens <<< "$url"
projid=${tokens[3]}

# Local repository directory
lrepo=${HOME}/over/$projid

# Remote BIB URL
rbib='http://www.citeulike.org/bibtex/user/marcondg?do_username_prefix=0&key_type=4&incl_amazon=1&clean_urls=1&smart_wrap=1&q=&fieldmap=abstract:'

# Aux bib
abib=/tmp/bib.bib

# Local bib
lbib=$lrepo/bib.bib

# Remote PDF URL
rpdf=https://v1.overleaf.com/docs/$projid/pdf.pdf

# Aux PDF
apdf=/tmp/pdf_.pdf

# Local PDF
lpdf=/tmp/pdf.pdf

# Getting firefox up
firefox $url > /dev/null 2>&1 &

# Getting Local PDF
echo 'Fetching PDF...'
while true; do
	if wget $rpdf -O $lpdf -nv; then
		break
	fi
done
echo 'PDF fetched.'

# Go to repo, pull
mkdir -p ${HOME}/over > /dev/null 2>&1
rm -Rf $lrepo > /dev/null 2>&1
git clone https://git.overleaf.com/$projid $lrepo/ > /dev/null 2>&1

# Getting sublime up
subl $lrepo/*.tex
subl $lbib

# Getting evince up
evince $lpdf > /dev/null 2>&1 &

#  Infinite loop
while true; do

	# Download bib file
	wget $rbib -O $abib -nv > /dev/null 2>&1

	# If aux bib != local bib, copy over local bib
	cmp -s $lbib $abib || cp $abib $lbib

	# Removing URL and DOI
	sed -i -E '/    url = /d' $lbib
	sed -i -E '/    doi = /d' $lbib

	# Download pdf file
	wget $rpdf -O $apdf -nv > /dev/null 2>&1

	# If aux pdf != local pdf, copy over local pdf
	cmp -s $lpdf $apdf || cp $apdf $lpdf

	# Update table
	# python ${HOME}/dev/tag-analysis/requirements.py $lrepo > /dev/null 2>&1 
	python ${HOME}/dev/tag-analysis/read.py $lrepo > /dev/null 2>&1 

	# Go to repo, commit
	hdir=$(pwd)
	cd $lrepo/
	git add --all
	git commit -m "Changes"
	git push -u origin master
	cd $hdir

	printf  "===========================\n\n"

	# Wait 1 s
	sleep 1

done#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/view-paper.sh target=_blank>Follow this link for the raw script.</a>