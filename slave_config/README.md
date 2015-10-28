# make Xvnc sork for Jenkins slaves including recording:

* additional Packages to install: `sudo apt-get install lightdm nvidia-common mesa-utils blackbox libav-tools virtualgl vnc4server`
* configure VirtualGL server: `sudo vglserver_config` (no restrictions)
* Exemplary Jenkins job:

  ```
export ROS_LOG_DIR="$WORKSPACE/ros-logs"

mkdir -p "$ROS_LOG_DIR"

avconv -f x11grab  -r 5 -s 1024x768 -i $DISPLAY.0+nomouse -y  Xvnc.mp4 &

FFMPEG_PID="$!"

sleep 1

vglrun glxgears &
GEARSPID="$!"

sleep 10 
kill $GEARSPID



export JENKINS_SCRIPTS_REPOSITORY_URL=https://github.com/strands-project/jenkins_scripts.git
#vglrun boptimist.py --retry 1 -- bash run_chroot_local trusty amd64 $WORKSPACE devel --repo-path ${WORKSPACE} indigo strands_navigation


kill "$FFMPEG_PID" || true

sleep 5

kill -9  "$FFMPEG_PID" || true

  ```
