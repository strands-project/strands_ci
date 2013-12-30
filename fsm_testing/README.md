## FSM testing

* install *fsmtest* following instructions here: https://synergy.cit-ec.de/projects/fsmt/wiki/Installation
* run `make` to create the SCXML definitions from the ini files
* run the actual FSM-based test: `DISPLAY=:101 fsmtest -l DEBUG strands_patrol.scxml`
  * This test needs an Xvfb server running with the following config: `Xvfb -screen  0 1280x1024x24 -nocursor :101` (the `:101` can be replaced by another available screen number).
