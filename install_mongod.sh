# install MongoDB
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
# sudo add-apt-repository 'deb [arch=amd64] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse'
sudo add-apt-repository 'deb [arch=amd64] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse'
# sudo apt update && sudo apt install -y mongodb-org node-mongodb
sudo apt update && sudo apt install -y mongodb-org
sudo systemctl enable --now mongod
sudo systemctl status mongod --no-pager
echo "wait 5 seconds"
sleep 5
sudo mongo --eval 'db.runCommand({ connectionStatus: 1 })'
echo ""
echo ""