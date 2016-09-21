# Downgrade GCC to 4.9 from 5.4
sudo apt-get install g++-4.9  
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 20  
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 10  
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 20  
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 10  
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30  
sudo update-alternatives --set cc /usr/bin/gcc  
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30  
sudo update-alternatives --set c++ /usr/bin/g++

# install the dowloaded cuda  
# https://developer.nvidia.com/cuda-toolkit
sudo sh cuda_8.0.27_linux.run --override

# configure the path 
echo "export CUDA_HOME=/usr/local/cuda-8.0" >> ~/.bashrc
echo "export PATH=/usr/local/cuda-8.0/bin:${PATH:+:${PATH}}" >> ~/.bashrc

echo "export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> ~/.bashrc

# test the path 
nvcc -V


# 安装cuDNN
# https://developer.nvidia.com/cudnn
cd ~/Downloads
tar -xf cudnn-8.0-linux-x64-v5.0-ga.tgz
sudo cp -f cuda/lib64/*.* /usr/local/cuda-8.0/lib64/
sudo cp -f cuda/include/*.* /usr/local/cuda-8.0/include/

cd ~

source ~/.bashrc

