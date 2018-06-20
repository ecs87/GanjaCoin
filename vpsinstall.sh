#!bin/bash
apt-get update && apt-get -y upgrade && apt-get -y install libwww-perl build-essential libtool automake autotools-dev autoconf pkg-config libssl-dev libgmp3-dev libevent-dev bsdmainutils libdb++-dev libminiupnpc-dev libboost-all-dev libqrencode-dev unzip && fallocate -l 4G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo "vm.swappiness=10" >> /etc/sysctl.conf && echo "/swapfile none swap sw 0 0" >> /etc/fstab
mkdir -p ~/coins && cd ~/coins && git clone https://github.com/legends420/GanjaCoin.git && cd ~/coins/GanjaCoin/src && make -f makefile.unix
./ganjacoind
sudo cp ~/coins/GanjaCoin/MNSampleGanjaProject.conf ~/.Ganjaproject2/Ganjaproject.conf
echo " Edit username , rpcpassword and put in your privkey,txindex and your VPS IP address"
nano ~/.Ganjaproject2/Ganjaproject.conf
echo "start node"
./ganjacoind
echo "Enjoy GanjaProject"
