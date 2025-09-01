systemctl stop genieacs-{cwmp,ui,nbi}
sleep 5
mkdir /root/db
cd /root/db
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/config.bson
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/config.metadata.json
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/permissions.bson
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/permissions.metadata.json
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/presets.bson
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/presets.metadata.json
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/provisions.bson
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/provisions.metadata.json
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/users.bson
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/users.metadata.json
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/virtualParameters.bson
wget https://raw.githubusercontent.com/azainal093/genieacs_windows/refs/heads/main/virtualParameters.metadata.json
mongorestore --db genieacs --drop /root/db
systemctl start genieacs-{cwmp,ui,nbi}
