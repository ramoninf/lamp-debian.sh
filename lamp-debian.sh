sudo apt update && sudo apt upgrade -y
echo
sudo apt install apache2 apache2-utils -y
echo
sudo systemctl start apache2
sudo systemctl enable apache2
echo
sudo apt install mariadb-server mariadb-client -y
sudo apt install mysql-server mysql-client -y
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation -y
echo
sudo apt install php7.0 libapache2-mod-php7.0 php7.0-mysql php-common php7.0-cli php7.0-common php7.0-json php7.0-opcache php7.0-readline -y
echo
sudo systemctl restart apache2
exit 0
