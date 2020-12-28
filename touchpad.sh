#!/bin/bash
echo  'access root'
cd /sys/class/gpio
echo 386 > export
cd gpio386
echo out > direction
echo 'touchpad works!!'
cd $HOME
echo 'Root to HOME'

#####################################
######## Initialized Cronie #########
# sudo pacman -S cronie
# sudo systemctl start cronie
# sudo systemctl enable cronie
#####################################
########### Edit Cronie #############
# Editar Cronie
# crontab -e
#####################################
######## Start Cronie #########
# * *  * * * /home/brando/Escritorio/touchpad.sh
# @reboot /home/brando/Escritorio/touchpad.sh
#####################################
#####################################

