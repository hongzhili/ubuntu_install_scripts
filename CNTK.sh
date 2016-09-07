sudo apt-get install g++

sudo mkdir /usr/local/CNTKCustomMKL
wget https://www.cntk.ai/mkl/CNTKCustomMKL-Linux-1.tgz
sudo tar -xzf CNTKCustomMKL-Linux-1.tgz -C /usr/local/CNTKCustomMKL

wget https://www.open-mpi.org/software/ompi/v1.10/downloads/openmpi-1.10.3.tar.gz
tar -xzvf ./openmpi-1.10.3.tar.gz
cd openmpi-1.10.3
./configure --prefix=/usr/local/mpi
make -j all
sudo make install
cd ..
export PATH=/usr/local/mpi/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/mpi/lib:$LD_LIBRARY_PATH

wget https://github.com/NVlabs/cub/archive/1.4.1.zip
unzip ./1.4.1.zip
sudo cp -r cub-1.4.1 /usr/local


wget http://developer.download.nvidia.com/compute/redist/cudnn/v5.1/cudnn-7.5-linux-x64-v5.1.tgz
tar -xzvf ./cudnn-7.5-linux-x64-v5.1.tgz
sudo mkdir /usr/local/cudnn-5.1
sudo cp -r cuda /usr/local/cudnn-5.1
export LD_LIBRARY_PATH=/usr/local/cudnn-5.1/cuda/lib64:$LD_LIBRARY_PATH


wget -q -O - https://sourceforge.net/projects/boost/files/boost/1.60.0/boost_1_60_0.tar.gz/download | tar -xzf - 
cd boost_1_60_0 
./bootstrap.sh --prefix=/usr/local/boost-1.60.0
sudo ./b2 -d0 -j"$(nproc)" install  
cd ..


sudo apt-get install cmake libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
wget https://github.com/Itseez/opencv/archive/3.1.0.zip
unzip 3.1.0.zip
cd opencv-3.1.0
mkdir release
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local/opencv-3.1.0 ..
make all
sudo make install
cd ../..


sudo apt-get install zlib1g-dev

wget http://nih.at/libzip/libzip-1.1.2.tar.gz
tar -xzvf ./libzip-1.1.2.tar.gz
cd libzip-1.1.2
./configure
make -j all
sudo make install
cd ..

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH



git clone https://github.com/Microsoft/cntk
cd cntk
mkdir build/release -p
cd build/release
../../configure
make -j all

