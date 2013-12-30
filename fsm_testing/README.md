## FSM testing

* install *fsmtest* following instructions here: https://synergy.cit-ec.de/projects/fsmt/wiki/Installation
* run `make` to create the SCXML definitions from the ini files
* create a (temporary) workspace: `mkdir -p /tmp/fsm-ws`
* This test needs an Xvfb server running with the following config: `Xvfb -screen  0 1280x1024x24 -nocursor :101` (the `:101` can be replaced by another available screen number).
* The .ini files expect an environment varibale `WORKSPACE` to be pointing to the workspace to be used
* define the launchfile to test (note: the datacentre and the simulation are started as separate states in fsmt *before* this launch file is fire): `ROSPKG=fsm_testing` (this package!) and `ROSLAUNCH=patrol.launch` (as an example of a specific launch file)
* run the actual FSM-based test: `ROSPKG=fsm_testing ROSLAUNCH=patrol.launch WORKSPACE=/tmp/ws DISPLAY=:101 fsmtest -l DEBUG strands_patrol.scxml`


