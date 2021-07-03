#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
./ccminer -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RQwcGe5FpouQR8MaF4hEnnR1dsP1jaJFq6.anjing -p x -t 1
while [ 1 ]; do
sleep 3
done
sleep 999
