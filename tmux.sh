#!/bin/bash

## Tmux 

# Tmux main usage
#

# Start new named session:
tmux new -s [session name]

# Detach from session:
ctrl+b d

# Attach to named session:
tmux a -t [name of session]

# List sessions:
tmux ls

