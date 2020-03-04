sudo apt-get update

# Install apache
sudo apt-get install apache2 -y

# Add PPA for PHP 7.4
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update

# Install PHP 7.4
sudo apt install php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl -y

# Install mysql-server
sudo apt install mysql-server -y

# Install phpmyadmin
sudo apt install phpmyadmin php-mbstring php-gettext -y
sudo phpenmod mbstring
cd /etc/apache2/
sudo bash -c 'echo "Include /etc/phpmyadmin/apache.conf" >> apache2.conf'
sudo systemctl restart apache2
