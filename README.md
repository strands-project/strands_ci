strands_ci
==========

Everything related to running the continuous integration server Jenkins. The server run at http://lcas.lincoln.ac.uk/jenkins/

Log in with your github credentials (you have to give permission for jenkins to access your github credentials). Also, you must not conceal your [strands_project membership](https://github.com/strands-project?tab=members) for it to work. But why would you, you're proud to be in the team, aren't you?

Please read the [WIKI](https://github.com/strands-project/strands_ci/wiki).


The master (and derived branches) contain some catkin_packages to work with jenkins:
* fsm_testing is our configuration for the [fsmtest](https://synergy.cit-ec.de/projects/fsmt/) framework
* jenkins_tools contains useful scripts, e.g. to install a system based on the latest successful jenkins build.
