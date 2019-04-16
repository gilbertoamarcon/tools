#!/bin/bash

## Printer Graf 

# Setup for the printer in Graf. 
#

# Open the "System Settings" dialog.
#
# Open the "Printing" dialog.
#
# Click the "Add" button.
#
# In the "New Printer" dialog:
#
# Expand the "Network Printer" option and select "Windows Printer via SAMBA".
#
# On the right, in the "SMB Printer" section, type
winprn.engr.oregonstate.edu/graf204
winprn.engr.oregonstate.edu/graf200-prn1
winprn.engr.oregonstate.edu/graf302-clr # HP CLJ Enterprise M651DN
winprn.engr.oregonstate.edu/graf302-prn # HP LJ Enterprise M525DN

# Under "Authentication", provide username with ONID/ prefix and ONID password:
ONID/marcondg

# Press "Forward".
#
# You will now be prompted to select a driver:
#
# In the "Choose Driver" section, select the option "Select printer from database".
# From the list of "Makes", select "HP".
HP

# Press "Forward".
# On the left, from the list of "Models", select
LaserJet 9050dn

# On the right, from the list of "Drivers", select the recommended driver
HP LaserJet 9050 Foomatic/Postscript [en]

# Press "Forward".
# Name the printer and press "Apply"
#
