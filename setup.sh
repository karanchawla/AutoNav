sudo apt-get update
sudo apt-get upgrade

sudo apt-get install build-essential git cmake pkg-config

sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev

sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev

sudo apt-get install libxvidcore-dev libx264-dev

sudo apt-get install libgtk2.0-dev

sudo apt-get install libatlas-base-dev gfortran

sudo apt-get install python2.7-dev python3-dev

cd ~

wget -O opencv.zip https://github.com/Itseez/opencv/archive/2.4.13.zip

unzip opencv.zip

cd opencv

wget https://bootstrap.pypa.io/get-pip.py

sudo python get-pip.py

pip install numpy

mkdir build

cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_NEW_PYTHON_SUPPORT=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON  -D BUILD_EXAMPLES=ON ..

make

sudo make install
sudo ldconfig
