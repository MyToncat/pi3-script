#https://github.com/home-assistant/home-assistant
#https://home-assistant.cc/installation/general/

#Home Assistant å®˜æ–¹æŽ¨èä½¿ç”¨ Python è™šæ‹ŸçŽ¯å¢ƒå®‰è£… Home Assistant ä»¥é¿å…å½±å“ç”Ÿäº§çŽ¯å¢ƒã€‚
basepath=$(cd `dirname $0`; pwd)
ln -s $basepath/.homeassistant ~/.homeassistant #å¤åé…çæ–‡ä

cd ~/
sudo apt-get install python3 python3-venv python3-pip
python3 -m venv homeassistant
cd homeassistant
source bin/activate
python3 -m pip install homeassistant==0.83.3
hass --open-ui

sudo apt-get install vlc-nox
sudo usermod -a -G audio pi


# ä»¥ä¸‹ä»£ç å¯ä»¥æ”¾åˆ°å¼€æœºè‡ªå¯åŠ¨shellè„šæœ¬ä¸­
#killall hass
nohup /home/pi/homeassistant/bin/hass -c "/home/pi/.homeassistant" >> /dev/null &
