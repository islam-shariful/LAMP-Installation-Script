#!/bin/bash

# Update package lists and install LAMP components
echo ">>>>> Updating package lists and installing LAMP components..."
apt update
apt install -y apache2 mysql-server php libapache2-mod-php php-mysql

# Secure MySQL installation
echo ">>>>> Securing MySQL installation..."
mysql_secure_installation

# Enable Apache modules and restart Apache
echo ">>>>> Enabling Apache modules..."
a2enmod rewrite
systemctl restart apache2

echo ">>>>> LAMP stack installation complete!"

exit 0