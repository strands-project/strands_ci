# UPDATE MORSE
cd /opt/strands/src/morse
git pull
cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/strands -DPYMORSE_SUPPORT=ON -DPYTHON_EXECUTABLE=/opt/strands/bin/python3.3 -DBUILD_ROS_SUPPORT=ON .
make install
