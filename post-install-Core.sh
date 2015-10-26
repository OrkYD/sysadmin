#!/bin/bash
# le 26 Octobre 2015,
# OrkYD
# Post-Installation d'une nouvelle debian 8.0

# Depot
sudo sed -i "s/deb-src/\#deb-src/g" /etc/apt/sources.list
echo "#Jessie Backport 
deb http://ftp.fr.debian.org/debian/ jessie-backports main" >> /etc/apt/sources.list

# Installation d'outil de base
sudo apt-get update && 
sudo apt-get install screen vim htop wget git 

# Shell 
wget http://egg.eurky.fr/bashrc && mv bashrc .bashrc && source $USER/.bashrc

# Docker 
sudo apt-get install docker.io
# ajout de l'utilisateur courant à Docker
sudo adduser $USER docker
 
