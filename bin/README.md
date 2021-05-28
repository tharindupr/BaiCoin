BaiCoin Running Instructions
===============================

Ubuntu
===================
Recommended versions are Ubuntu 16-18
:warning: Using 20.04 will prevent you from adding the bitcoin/bitcoin repository. Its a known issue.
(You can use a docker if you do not have a recommended OS version. Checkout the [Running on docker](#running-on-docker) section below)



Installing Pre Requisites
-------------------------
```sh
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install -y build-essential gcc make perl dkms git build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev libboost-all-dev software-properties-common
sudo apt-get install -y libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler  libqt4-dev libprotobuf-dev protobuf-compiler openssl1.0 libssl1.0-dev
```

### First command returned an error?
ගොනා වගේ 20.04 එකක දැම්මද? දැන් ඉතින් මෝඩ ගැසට් රිවස් බයියා උඹ 18.04 එකක් install කරපන්. නැත්නම් docker එකේ රන් කරපන්. අර උඩ ලියල තියන එක දැන්වත් බලපන්.. හයියෝ... 
First, make sure that the above required packages are installed on the system unless you run the docker.

### By now, you should have cloned the repo. Go there. 
No you ගොන් බයියා.. not go there on foot! Just ```cd``` to that directory!!


Running on docker
-----------------
:information_source: No need of locally installing the pre requisites if you run the docker

### Pre Requisites
Install docker

```sh
sudo apt install docker.io
```

:warning: Make sure you change the username and password in [docker/baicoin.conf](../docker/baicoin.conf)

### Build and run
From the cloned directory, run...

```sh
docker build -f docker/Dockerfile . -t baicoins
docker run --name baicoin_miner -id baicoins
```

Now you can go into the docker using ```docker exec -it baicoin_miner /bin/bash```. 
In there you can use the commands described in the sections below. To transfer any mined coins, do

```sh
./baicoind sendtoaddress <your_address>
```

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
First create the configurations required to run.
```sh
cd ~
mkdir .baicoin
cd .baicoin
cat << EOF > baicoin.conf
server=1
rpcuser=bainameyoulike
rpcpassword=baipasswordwhichislongliketheharborloan
EOF
```
## Did you just run that? 
හයියෝ you මෝඩ තැරි දාර බයියා... Change that password under ```rpcpassword``` to something you only know!


Then run the BaiCoin binary 

```sh
cd bin
./baicoind &
```
Let the community know the IP of your seed node. You can always send a pull request if you know how to add a seed node in the code. Else you can post in the discussion. 


Running the BaiCoin Daemon (This is not tested. Feedbacks are appriciated)
--------------------------------------------------------------------------
:warning: Make sure you have run the configuration creation part of the **Adding a seed node** section first.
```sh
cd bin
./baicoind --daemon
./baicoind help
```
## Error came up? 
කෝමාරිකා බයියා! අර උඩ config file එක දැම්මද බලපන්! 

This would output all the available commands given below.

```sh
addmultisigaddress <nrequired> <'["key","key"]'> [account]
addnode <node> <add|remove|onetry>
backupwallet <destination>
createmultisig <nrequired> <'["key","key"]'>
createrawtransaction [{"txid":txid,"vout":n},...] {address:amount,...}
decoderawtransaction <hex string>
dumpprivkey <baicoinaddress>
encryptwallet <passphrase>
getaccount <baicoinaddress>
getaccountaddress <account>
getaddednodeinfo <dns> [node]
getaddressesbyaccount <account>
getbalance [account] [minconf=1]
getbestblockhash
getblock <hash> [verbose=true]
getblockcount
getblockhash <index>
getblocktemplate [params]
getconnectioncount
getdifficulty
getgenerate
gethashespersec
getinfo
getmininginfo
getnetworkhashps [blocks] [height]
getnewaddress [account]
getnormalizedtxid <hex string>
getpeerinfo
getrawmempool
getrawtransaction <txid> [verbose=0]
getreceivedbyaccount <account> [minconf=1]
getreceivedbyaddress <baicoinaddress> [minconf=1]
gettransaction <txid>
gettxout <txid> <n> [includemempool=true]
gettxoutsetinfo
getwork [data]
getworkex [data, coinbase]
help [command]
importprivkey <baicoinprivkey> [label] [rescan=true]
keypoolrefill
listaccounts [minconf=1]
listaddressgroupings
listlockunspent
listreceivedbyaccount [minconf=1] [includeempty=false]
listreceivedbyaddress [minconf=1] [includeempty=false]
listsinceblock [blockhash] [target-confirmations]
listtransactions [account] [count=10] [from=0]
listunspent [minconf=1] [maxconf=9999999] ["address",...]
lockunspent unlock? [array-of-Objects]
move <fromaccount> <toaccount> <amount> [minconf=1] [comment]
sendfrom <fromaccount> <tobaicoinaddress> <amount> [minconf=1] [comment] [comment-to]
sendmany <fromaccount> {address:amount,...} [minconf=1] [comment]
sendrawtransaction <hex string> [allowhighfees=false]
sendtoaddress <baicoinaddress> <amount> [comment] [comment-to]
setaccount <baicoinaddress> <account>
setgenerate <generate> [genproclimit]
setmininput <amount>
settxfee <amount BAIYO/KB>
signmessage <baicoinaddress> <message>
signrawtransaction <hex string> [{"txid":txid,"vout":n,"scriptPubKey":hex,"redeemScript":hex},...] [<privatekey1>,...] [sighashtype="ALL"]
stop
submitblock <hex data> [optional-params-obj]
validateaddress <baicoinaddress>
verifychain [check level] [num blocks]
verifymessage <baicoinaddress> <signature> <message>
```

ඔය තියන සේරම ගහන්නෙපා... හයියෝ... ඩොලර් නැවි බයියා..! 

### How do I check my balance?
```sh
cd /bin
./baicoind getinfo
```

### How to mine BaiCoin ?

Start the Baicon daemon using the following command :
```sh
./baicoind --daemon
```
Set the set generate flag to true
```sh
./baicoind setgenerate true 3
```

Here, 3 means the number of CPUs you allocate. Wait until your machine find the next valid block. You can check your balance as stated above. 
