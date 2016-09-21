#install required packages
sudo apt-get install python-dev
sudo apt-get install python-pip
sudo apt-get install python-nose
sudo apt-get install g++
sudo apt-get install git

# 安装Theano
sudo pip install Theano

# 测试Theano
python -c "import theano;theano.test()"

# update theano
sudo pip install --upgrade --no-deps theano


# configure the .theanorc file
# change    ~/.theanorc  file
echo -e "[global]\nfloatX=float32\ndevice=gpu\nwarn_float64=warn\n" >> ~/.theanorc
echo -e "\n[mode]=FAST_RUN\n" >> ~/.theanorc
echo -e "\n[nvcc]\nflags=-D_FORCE_INLINES\nfastmath=True\n" >> ~/.theanorc  
echo -e "\n[cuda]\nroot=/usr/local/cuda\n" >> ~/.theanorc

#Error: about nose_parameterized
pip install nose_parameterized

#Error: theano.gof.opt
#conda install -c https://conda.binstar.org/menpo opencv
#Or : update theano to the current develop version
#pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git


