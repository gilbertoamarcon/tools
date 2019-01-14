#!/bin/bash
## PDF Chop

# This script extracts a subset of a PDF documents pages
#

# Usage:
# ./pdf_chop.sh first-page last-page input output
#

pdfseparate -f $1 -l $2 $3 temp_split%d.pdf
pdfunite $(eval echo temp_split{$1..$2}.pdf) temp_merge.pdf
gs -sDEVICE=pdfwrite -sPAPERSIZE=letter -dFIXEDMEDIA -dPDFFitPage -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$4 temp_merge.pdf
rm $(eval echo temp_split{$1..$2}.pdf) temp_merge.pdf

