#!/bin/bash
echo "updating syatem"
sudo apt update && sudo apt upgrade -y
echo "installing python3 and pip3"
sudo apt install python3 python3-pip3 -y

#installing mysql server
# Install MySQL Server
echo "Installing MySQL Server..."
#sudo apt install -y mysql-server

# Secure MySQL installation
echo "Securing MySQL installation..."
#sudo mysql_secure_installation

# Install SQLite
echo "Installing SQLite..."
sudo apt install -y sqlite3

# Check the installed versions
echo "MySQL version:"
mysql --version

echo "SQLite version:"
sqlite3 --version
#running mysql services
sudo systemctl status mysql
echo "mysql services has been started"
#open my sql server
echo "Opening my sql server"
sudo mysql -u root -p
#main packages
echo "installing pyqt6, mysqlconector,pyside for runing application"
sudo apt install python3-PyQt6 python3-mysql-connector-python python3-pyside6
 
#placing file 
sudo mkdir -p ~/myapp/
echo "~/myapp dic was created"
sleep 5s

wget link
sudo mv cpu.sh ~/myapp/sys.sh
cd ~/myapp/
chmod +x sys.sh
echo "giving permission"
./sys.sh
