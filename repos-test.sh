#!/bin/bash

## Repos Test

# This script will test all repos and all their dependencies.

# ===========================================================================
## i-CiFHaR
# ===========================================================================

~/dev/icifhar/bin/icifhar -p ~/dev/icifhar/resources/testInstances/problemR10T1.xml
~/dev/icifhar/bin/icifhar -p ~/dev/icifhar/resources/testInstances/problemR20T2.xml
~/dev/icifhar/bin/icifhar -p ~/dev/icifhar/resources/testInstances/problemR20T2.xml -o /home/gil/Downloads suf

# ===========================================================================
## i-MAPC
# ===========================================================================

cd ~/dev/imapc/
./scripts/rp_cf_plan.sh resources/testing/blocksworld_p10_c1

# ===========================================================================
## APPL
# ===========================================================================

# Try solving an example problem. Type the command:
./pomdpsol ../examples/POMDPX/Tiger.pomdpx

# The generated policy is written to "out.policy" by default.

# Try simulating a policy. Type the command:
./pomdpsim --simLen 100 --simNum 1000 --policy-file out.policy ../examples/POMDPX/Tiger.pomdpx

# The simulation results are written to the console.

# Try evaluating a policy. Type the command:
./pomdpeval --simLen 100 --simNum 1000 --policy-file out.policy ../examples/POMDPX/Tiger.pomdpx

# The evaluation results are written to the console.

# Try generating a graphical representation of a policy . Type the command:
./polgraph --policy-file out.policy --policy-graph tiger.dot ../examples/POMDPX/Tiger.pomdpx

# The generated graph is written to "tiger.dot". You can view the output "tiger.dot" using Graphviz (http://www.graphviz.org/).  A pdf file generated from "tiger.dot" is in "../examples/POMDPX/tiger.pdf".

# Try converting a POMDP file to POMDPX file format:
./pomdpconvert ../examples/POMDP/Tiger.pomdp

# The generated POMDPX file is in the same directory as the POMDP model file.

# ===========================================================================
## RDDL
# ===========================================================================

cd ~/dev/rddlsim/
cat ~/dev/domains/rddl/rddl/simple.rddl ~/dev/domains/rddl/rddl/simple_ins.rddl > ~/dev/domains/rddl/simple.rddl
./run rddl.viz.RDDL2Graph ~/dev/domains/rddl/simple.rddl simple_ins

# ===========================================================================
## PROST
# ===========================================================================

# Testing 1
cd ~/dev/prost/testbed/
./run-server benchmarks/ippc2011
cd ~/dev/prost/testbed/
./plan.py benchmarks/ippc-all/rddl/elevators_mdp.rddl benchmarks/ippc-all/rddl/elevators_inst_mdp__1.rddl "IPPC2014"

# Testing 2
cd ~/dev/prost/testbed/
./run-server ~/dev/domains/rddl
cd ~/dev/prost/testbed/
./plan.py ~/dev/domains/rddl/rddl/simple.rddl ~/dev/domains/rddl/rddl/simple_ins.rddl "IPPC2014"

# ===========================================================================
## APPL
# ===========================================================================

./pomdpsol ~/dev/domains/pomdpx/simple_xdp.pomdpx
./pomdpsol ~/dev/domains/pomdpx/simple_mdp.pomdpx
./pomdpsol ~/dev/domains/pomdpx/simple_pomdp.pomdpx

