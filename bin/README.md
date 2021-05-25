BaiCoin Running Instructions
===============================

Ubunutu
===================

Installing Pre Requisites
-------------------------
```sh
sudo apt-get update
sudo apt-get install build-essential gcc make perl dkms
sudo apt-get install git
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
sudo apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
sudo apt-get install libboost-all-dev
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev
sudo apt-get install libminiupnpc-dev
sudo apt-get install libzmq3-dev
sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler 
sudo apt-get install libqt4-dev libprotobuf-dev protobuf-compiler
sudo apt-get install openssl1.0
sudo apt-get install libssl1.0-dev
```
First, make sure that the above required packages are installed on the system. 

Running the Wallet App
----------------------

Running on the test net
```sh
cd bin
./baicoin-qt -testnet
```

Running on the main net
```sh
cd bin
./baicoin-qt
```


Adding a seed node
------------------
```sh
cd bin
./baicoind &
```
Let the community know the IP of your seed node. You can always send a pull request if you know how to add a seed node in the code. Else you can post in the discussion. 

