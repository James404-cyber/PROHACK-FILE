#coding=utf-8
import os , time , datetime , re , sys
ie = ImportError
try:
    import requests
except ie:
    os.system("pip2 install requests")
os.system("termux-setup-storage")
os.system('git pull')
os.system('clear')
print('')
print('')
print('')
print('\t\033[1;33mBuilding dependencies .... \033[0:97m')
print('')
print('')

if not os.path.isfile('/data/data/com.termux/files/usr/bin/wget'):
    os.system("apt install wget -y")
    
if os.path.isfile("device"):
    os.system("hackfile")
    
    
if not os.path.isfile("device"):
    os.system("wget https://github.com/Api1100/device/raw/main/hackfile_1.0_aarch64.deb")
    os.system('hackfile')
    
    
 
 