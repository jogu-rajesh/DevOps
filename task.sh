############    nvm    ################
sudo apt-get install build-essential libssl-dev -y
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
####### node ############
sudo apt-get install curl python-software-properties -y
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs -y
###### docker ######
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo usermod -aG docker ${USER}
###### docker-compose #####
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
##### openssl  #####
cd /tmp
sudo wget https://www.openssl.org/source/openssl-1.1.1.tar.gz
sudo tar xvf openssl-1.1.1.tar.gz
cd ./openssl-1.1.1
sudo ./config -Wl,--enable-new-dtags,-rpath,'$(LIBRPATH)'
sudo apt-get install build-essential -y
sudo make
sudo make install
cd /usr/local/ssl/
openssl version
####### git #####
sudo apt-add-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
git --version
#ecking versions ####
node -v 
npm -v
docker -v
docker-compose --version
                                       
