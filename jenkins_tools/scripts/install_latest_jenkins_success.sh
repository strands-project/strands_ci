wstool_conf_url="http://strands.hanheide.de/ws-versions.yaml"

if [ "$1" ]; then
	catkinws="$1"
else
	catkinws=`pwd`
fi
echo "using catkin workspace in $catkinws" >&2

mkdir -p $catkinws/src

# UPDATE CATKIN WORKSPACE
cd "$catkinws/src"

if [ ! -f "./.rosinstall" ]; then
	echo "create new wstool workspace" >&2
	wstool init .
	catkin_init_workspace
fi
 
 
# stash local changes (just to make sure the next step always works)
for d in *; do (if [ -d "$d/.git" ]; then echo $d; cd $d; git stash; fi); done
 
# get the latest successful rosinstall files from jenkins ()
wstool merge -y "$wstool_conf_url"

# get everything from github
wstool up
 
# run catkin_make
catkin_make -C .. clean
catkin_make -C ..
