#!/bin/bash

## VAL PDF

# Generate plan PDF report.
#

# Usage:
# ./val-report.sh problem-dir objects-to-track
# Ex: ./val-report.sh ~/dev/domains/pddl/box rover
#

# Parameters
FONT_SIZE=10

# Input Argument Renaming
pdir=$1
obj=$2

# Backing up present working directory
hdir=$(pwd)

# Go the the problem directory
cd $pdir

if [ -e domain.pddl ] && [ -e problem.pddl ] && [ -e solution ] && [ $(cat solution | wc -l) -gt 0 ]; then

	# Cleanup
	rm report* > /dev/null 2>&1
	rm empty_prob.pddl > /dev/null 2>&1

	# Generate the report
	${HOME}/dev/val/validate -o $obj -o -f report -l domain.pddl problem.pddl solution
	sed -i '/\\\documentclass/a \\\usepackage[maxfloats=100]{morefloats}' report.tex
	sed -i 's/\\documentclass\[a4paper,[0-9]*pt\]/\\documentclass[a4paper,'$FONT_SIZE'pt]/g' report.tex
	sed -i 's/[0-9]\+\.*[0-9]*e-[0-9]\+/0/g' report.tex

	# PDF Generation
	pdflatex report.tex > /dev/null 2>&1

	# Opening PDF
	# evince report.pdf > /dev/null 2>&1 &

	# Cleanup
	rm report.aux
	rm report.log
	rm report.tex

fi

# Back to original working directory
cd $hdir

