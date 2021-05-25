BaiCoin Running Instructions
===============================

Ubunutu
===================
Recommended versions are Ubunutu 16-18

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
cd Home
mkdir .baicoin
cd .baicoin
vim baicoin.conf
```

Add following content to file and save it
```sh
server=1
rpcuser=user
rpcpassword=a_password
```
Then run the BaiCoin binary 

```sh
cd bin
./baicoind &
```
Let the community know the IP of your seed node. You can always send a pull request if you know how to add a seed node in the code. Else you can post in the discussion. 


Running the BaiCoin Daemon (This is not tested. Feedbacks are appriciated)
--------------------------------------------------------------------------
```sh
cd bin
./baicoind --daemon
./baicoind help
```

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
