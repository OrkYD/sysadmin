#!/bin/bash
# upgrade de force
sudo apt-get dist-upgrade -y && sudo apt-get autoclean -y && sudo apt-get autoremove -y && sudo apt-get clean -y
