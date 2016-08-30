rm scipy-0.18.0.tar.gz
wget https://pypi.python.org/packages/01/a1/dce70d47377d662aa4b0895df8431aee92cea6faefaab9dae21b0f901ded/scipy-0.18.0.tar.gz

rm -r scipy-0.18.0
tar -zxvf scipy-0.18.0.tar.gz


cd scipy-0.18.0

export BLAS=/opt/OpenBLAS/lib/libopenblas.so
export LAPACK=/opt/OpenBLAS/lib/libopenblas.so

export LIBRARY_PATH=$LIBRARY_PATH:/opt/OpenBLAS/lib

python setup.py install

cd ..

rm -r  scipy-0.18.0
rm scipy-0.18.0.tar.gz
