#!/bin/bash

echo "Installing dependencies for BiCoin..."
sudo apt-get update
sudo apt-get -y install build-essential gcc make perl dkms
sudo apt-get -y install git
sudo apt-get -y install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
sudo apt-get -y install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
sudo apt-get -y install libboost-all-dev
sudo apt-get -y install software-properties-common
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get -y install libdb4.8-dev libdb4.8++-dev
sudo apt-get -y install libminiupnpc-dev
sudo apt-get -y install libzmq3-dev
sudo apt-get -y install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
sudo apt-get -y install libqt4-dev libprotobuf-dev protobuf-compiler
sudo apt-get -y install openssl1.0
sudo apt-get -y install libssl1.0-dev

echo "Installation has completed!"
cd bin
./baicoin-qt -testnet
