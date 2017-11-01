#!/bin/bash -e
# IMPORTANT. My phpstom installation exists on /opt/phpstorm.
# IMPORTANT. Run with sudo!
# Early Access program: https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program

#colors

GREEN='\033[01;32m'
BLUE='\033[01;34m'

clear
echo -e -n "Please enter the PhpStorm direct download link:\n"
read url
 
# Download file from url
echo -e "Downloading PhpStorm to ~/Desktop\n"
mkdir ~/pstorm-files
cd ~/pstorm-files
wget ${url} --no-check-certificate

tar -xzf ~/pstorm-files/PhpStorm*
rm ~/pstorm-files/PhpStorm*.tar.gz

# Remove old Phpstorm
echo -e "${BLUE}Removing old PhpStorm"
rm -rf /opt/phpstorm

# Copy new Phpstorm
printf "${BLUE}Copying new PhpStorm"
mv ~/pstorm-files/PhpStorm* /opt/phpstorm

# Finish
rm -rf ~/pstorm-files
clear
echo -e "${GREEN}New PhpStorm has been installed successfuly!\n"
