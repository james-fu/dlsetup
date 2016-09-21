#test numpy and scipy and make sure there is no error
python -c "import numpy;numpy.test()"
python -c "import scipy;scipy.test()"


# if there is error in the above test
# uninstall and reinstall numpy and scipy
# 卸载numpy
sudo apt-get remove python-numpy

# 卸载scipy
sudo apt-get remove python-scipy

# 安装gfortran,后面编译过程中会用到
sudo apt-get install gfortran

# 安装blas,Ubuntu下对应的是libopenblas，其它操作系统可能需要安装其它版本的blas——这是个OS相关的。
sudo apt-get install libopenblas-dev

# 安装lapack，Ubuntu下对应的是liblapack-dev，和OS相关。
sudo apt-get install liblapack-dev

# 安装atlas，Ubuntu下对应的是libatlas-base-dev，和OS相关。
sudo apt-get install libatlas-base-dev

# install pip
sudo apt-get install python-pip

# 安装numpy
sudo pip install numpy
# 测试numpy
# 测试通过才能进行下一步～～
python -c "import numpy;numpy.test()"

# 安装scipy
sudo pip install scipy
# 测试scipy
# 测试通过才能进行下一步～～
python -c "import scipy;scipy.test()"

