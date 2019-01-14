#!/bin/bash

## Relaxed Plan Structures

# Relaxed Plan Structures for CFP
#

# A temporal relaxed plan from colin2 looks like this:
1
(move r2 p_01_16 p_02_16)
2.001
(move r2 p_02_16 p_02_15)
(move r2 p_02_16 p_02_17)
(push r2 c p_02_16 p_03_16 p_04_16)
3.002
(move r2 p_02_15 p_02_14)
(move r2 p_02_15 p_03_15)
(move r2 p_02_17 p_03_17)
4.003
(move r2 p_02_14 p_02_13)
(move r2 p_02_14 p_03_14)
(push r2 c p_03_17 p_03_16 p_03_15)

# CoalitionStructure.cpp was expanded to read relaxed plans using two structures.
# The first structure is called rplan.
# rplan is just a list of each line from the plan file, numbered on reading order:
0: 1
1: (move r2 p_01_16 p_02_16)
2: 2.001
3: (move r2 p_02_16 p_02_15)
4: (move r2 p_02_16 p_02_17)
...

# The second structure is called rplan_timed.
# rplan_timed maps double time stamps to sets of strings: sets of actions at each time stamp:
[1]:
	(move r2 p_01_16 p_02_16)
[2.001]:
	(move r2 p_02_16 p_02_15)
	(move r2 p_02_16 p_02_17)
	(push r2 c p_02_16 p_03_16 p_04_16)
[3.002]:
	(move r2 p_02_15 p_02_14)
	(move r2 p_02_15 p_03_15)
	(move r2 p_02_17 p_03_17)
[4.003]:
	(move r2 p_02_14 p_02_13)
	(move r2 p_02_14 p_03_14)
	(push r2 c p_03_17 p_03_16 p_03_15)

