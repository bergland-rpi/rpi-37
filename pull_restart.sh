#!/bin/bash

hn=$(hostname)
cd /home/pi/$hn
git pull

if pgrep -x "masterprogram.py" > /dev/null
then
    echo "Running"
else
    echo "Stopped"
    sudo python /home/pi/$hn/masterprogram.py /home/pi/$hn/config.txt
fi
