#!/bin/bash

dev=${HOME}/dev/ChatScript
dest=$dev/RAWDATA/
bots=${HOME}/Dropbox/OSU/Classes/ROB599/chatbot

rm -Rf $dev
git clone https://github.com/bwilcox-1234/ChatScript.git $dev/
chmod a+x $dev/BINARIES/LinuxChatScript64

# Copying bots
ln -s $bots/WALDO $dest
ln -s $bots/THERAPIST $dest
ln -s $bots/FRIDGE $dest
ln -s $bots/CARE $dest
ln -s $bots/filesWaldo.txt $dest
ln -s $bots/filesTherapist.txt $dest
ln -s $bots/filesFridge.txt $dest
ln -s $bots/filesCare.txt $dest

cd $dev/BINARIES
./LinuxChatScript64

# :build Waldo
# 
# :build Therapist
# :build Fridge
# :build Care
# : > Had to do some preseentation and I have social anxiety.
# Therapist:  I am sorry, I dont know the answer to this.
# : > Hi I am trying to buy a fridge.
# FRIDGE:  Hello, how can I help you?
# : > How are you doing today?
# CARE:  Hello. I am so glad to talk to you!
