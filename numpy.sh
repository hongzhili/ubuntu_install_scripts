sudo apt-get -y install python-pip
sudo pip install setuptools
rm numpy-1.11.1.tar.gz
wget https://pypi.python.org/packages/e0/4c/515d7c4ac424ff38cc919f7099bf293dd064ba9a600e1e3835b3edefdb18/numpy-1.11.1.tar.gz
rm -r numpy-1.11.1
tar -zxvf numpy-1.11.1.tar.gz
cd numpy-1.11.1

sudo python setup.py install

sudo apt-get -y install python-nose

cd ..
#python -c "import numpy as np; np.test()"
sudo rm numpy-1.11.1.tar.gz
sudo rm -r numpy-1.11.1

