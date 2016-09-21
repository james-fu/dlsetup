#The TensorFlow Python API supports Python 2.7 and Python 3.3+.

#The GPU version works best with Cuda Toolkit 7.5 and cuDNN v5. 
#Other versions are supported (Cuda toolkit >= 7.0 and cuDNN >= v3) only when installing from sources. 

# install dependences for python 2.7
#sudo apt-get install python-numpy swig python-dev python-wheel
sudo apt-get install swig python-dev python-wheel
# For Python 3.x:
#sudo apt-get install python3-numpy swig python3-dev python3-wheel

#install java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer


#install bazel
echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list

curl https://storage.googleapis.com/bazel-apt/doc/apt-key.pub.gpg | sudo apt-key add -

sudo apt-get update && sudo apt-get install bazel

sudo apt-get upgrade bazel


# install tensorflow
# download the package 
git clone -b r0.10 https://github.com/tensorflow/tensorflow

cd tensorflow

#Important: fix CROSSTOOL file

#Edit the text file tensorflow/third_party/gpus/crosstool/CROSSTOOL and add cxx_builtin_include_directory: "/usr/local/cuda-8.0/include" as below.

 # cxx_builtin_include_directory: "/usr/lib/gcc/"
  #cxx_builtin_include_directory: "/usr/local/include"
  #cxx_builtin_include_directory: "/usr/include"
  #cxx_builtin_include_directory: "/usr/local/cuda-8.0/include"
  #tool_path { name: "gcov" path: "/usr/bin/gcov" }


./configure


# create the pip package and install
#bazel build -c opt //tensorflow/tools/pip_package:build_pip_package
# To build with GPU support:
bazel build -c opt --config=cuda //tensorflow/tools/pip_package:build_pip_package

bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg

# The name of the .whl file will depend on your platform.
sudo pip install /tmp/tensorflow_pkg/tensorflow-0.10.0-py2-none-any.whl





