export DEBIAN_FRONTEND=noninteractive

sudo apt-get update -y
sudo apt-get install -y git wget build-essential


#install GPU gtx1070 driver 367.44
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-367
sudo apt-get install mesa-common-dev
sudo apt-get install freeglut3-dev
sudo reboot

