
# Preinstall git

sudo apt-get -y install git-core cmake g++ python-dev swig \
pkg-config libfftw3-dev libboost1.55-all-dev libcppunit-dev libgsl0-dev \
libusb-dev libsdl1.2-dev python-wxgtk2.8 python-numpy \
python-cheetah python-lxml doxygen libxi-dev python-sip \
libqt4-opengl-dev libqwt-dev libfontconfig1-dev libxrender-dev \
python-sip python-sip-dev;

#set up your environment
#Edit ./bashrc by adding or amending the following variables:

#sudo vi /etc/bash.bashrc;
#go to end and add following piece of code
cat echo "fi" >> /etc/bash.bashrc;
cat echo "export PATH=/opt/qt/bin:$PATH" >> /etc/bash.bashrc;
cat echo "export LD_LIBRARY_PATH=/opt/qt/lib:/usr/local/lib:$LD_LIBRARY_PATH" >> /etc/bash.bashrc;
cat echo "export PYTHONPATH=/opt/qt/lib/python2.7/dist-packages:$PYTHONPATH" >> /etc/bash.bashrc;
cat echo "export PKG_CONFIG_PATH=/opt/qt/lib/pkgconfig:$PKG_CONFIG_PATH" >> /etc/bash.bashrc;

export PYTHONPATH=/opt/qt/lib/python2.7/dist-package;

git clone http://gnuradio.org/git/gnuradio.git;

cd gnuradio;
mkdir build;
cd build;
cmake ../;
make;

make test;

sudo make install;

