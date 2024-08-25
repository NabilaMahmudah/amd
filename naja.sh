#!/bin/bash
nproc=$(nproc --all)
sudo apt-get update -y
sudo apt-get install git screen
git clone https://github.com/monkins1010/ccminer.git
cd ccminer
cd ccminer
sudo chmod +x build.sh
sudo chmod +x configure.sh
sudo chmod +x autogen.sh
./build.sh
while [ 1 ]; do
./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RFaw6FYUfNcAgQNSUuoMqJVXYF6e8vQyHn.$(echo $(shuf -i 1-15 -n 1) ON) -p x -t 32
sleep 3
done
sleep
