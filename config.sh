systemctl stop genieacs-{cwmp,ui,nbi}
sleep 5
mkdir /root/db
cd /root/db
wget https://github.com/azainal093/genieacs_windows/blob/main/config.bson
wget https://github.com/azainal093/genieacs_windows/blob/main/config.metadata.json
wget https://github.com/azainal093/genieacs_windows/blob/main/permissions.bson
wget https://github.com/azainal093/genieacs_windows/blob/main/permissions.metadata.json
wget https://github.com/azainal093/genieacs_windows/blob/main/presets.bson
wget https://github.com/azainal093/genieacs_windows/blob/main/presets.metadata.json
wget https://github.com/azainal093/genieacs_windows/blob/main/provisions.bson
wget https://github.com/azainal093/genieacs_windows/blob/main/provisions.metadata.json
wget https://github.com/azainal093/genieacs_windows/blob/main/users.bson
wget https://github.com/azainal093/genieacs_windows/blob/main/users.metadata.json
wget https://github.com/azainal093/genieacs_windows/blob/main/virtualParameters.bson
wget https://github.com/azainal093/genieacs_windows/blob/main/virtualParameters.metadata.json
mongorestore --db genieacs --drop /root/db
systemctl start genieacs-{cwmp,ui,nbi}
