#!/bin/bash
echo "updating syatem"
sudo apt update && sudo apt upgrade -y
echo "installing python3 and pip3"
sudo apt install python3 python3-pip3 -y
apt install python3 python3-pip3 -y

#installing mysql server
# Install MySQL Server
echo "Installing MySQL Server..."
#sudo apt install -y mysql-server

# Secure MySQL installation
echo "Securing MySQL installation..."
#sudo mysql_secure_installation

# Install SQLite
echo "Installing SQLite..."
#sudo apt install -y sqlite3
apt install -y sqlite3

# Check the installed versions
echo "MySQL version:"
mysql --version

echo "SQLite version:"
sqlite3 --version
#running mysql services
#sudo systemctl status mysql
echo "mysql services has been started"
#open my sql server
echo "Opening my sql server"
#sudo mysql -u root -p
#main packages
echo "installing pyqt6, mysqlconector,pyside for runing application"
apt install python3-PyQt6 python3-mysql-connector-python python3-pyside6
#apt install python3-PyQt6 python3-mysql-connector-python python3-pyside6
 
#placing file 
#sudo mkdir -p ~/myapp/
mkdir -p ~/myapp/
echo "~/myapp dic was created"
sleep 5s

wget https://github.com/RAAVANUNKNOWN10/software/blob/main/myapp.py
mv myapp.py ~/myapp/login.py
#sudo mv myapp.py ~/myapp/login.py
cd ~/myapp/
chmod +x login.py
echo "giving permission of exicution"

# creating desk top file

sleep 2s

wget  https://github.com/RAAVANUNKNOWN10/software/blob/main/logo.png

sleep 1s
#can use root also
bash -c 'cat > login_desktop.sh << EOF

#!/bin/bash
sudo python3 ~/myapp/login.py

EOF'

chmod +x login_desktop.sh

cd ~/Desktop
touch myapp.desktop

bash -c 'cat > ./myapp.desktop <<EOF

[Desktop Entry]
Name=Raavan
Comment= pythonqt
Exce=~/myapp/login_desktop.sh
Icon=~/myapp/logo.png
Terminal=false
Type=Application
EOF'

chmod +x ./myapp.desktop

echo "application stared"