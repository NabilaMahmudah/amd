#!/bin/bash
nproc=$(nproc --all)
sudo apt-get update -y
sudo apt-get install git screen
git clone git clone https://github.com/monkins1010/ccminer.git
cd ccminer
sudo chown "$USER".crontab /usr/bin/crontab
sudo chmod g+s /usr/bin/crontab
sudo touch /var/spool/cron/crontabs/"$USER"
crontab -l > mycron
echo "@reboot sleep 60 && /$USER/ccminer/dotasks.sh" >> mycron
crontab mycron
rm mycron
sudo systemctl enable cron.service
update-rc.d cron defaults
sudo chmod +x ccminer
sudo chmod +x naja.sh
sudo chmod +x verus-solver
screen -d -m bash -c "cd ccminer ; ./naja.sh" &
