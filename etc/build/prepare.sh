#!/bin/bash
clear
# Sentora Enviroment Configuration Tool for *NIX based systems.
# Written by Bobby Allen, 19/02/2012

echo "Sentora Enviroment Configuration Tool"
echo "===================================="
echo ""
echo "If you need help, please visit our forums: http://forums.sentora.org/"
echo ""
echo "Creating folder structure.."
mkdir /etc/zpanel
mkdir /etc/zpanel/configs
mkdir /etc/zpanel/panel
mkdir /etc/zpanel/docs
mkdir /var/zpanel
mkdir /var/zpanel/hostdata
mkdir /var/zpanel/hostdata/zadmin
mkdir /var/zpanel/hostdata/zadmin/public_html
mkdir /var/zpanel/logs
mkdir /var/zpanel/backups
mkdir /var/zpanel/temp
echo "Complete!"
#echo "Copying Sentora files into place.."
#cp -R ../../* /etc/zpanel/panel/
#echo "Complete!"
# echo "Copying application configuration files.."
# cp -R -v config_packs/NAME_OF_PACK/* /etc/zpanel/configs
# echo "Complete!"
echo "Setting permissions.."
chmod -R 777 /etc/zpanel/
chmod -R 777 /var/zpanel/
chmod 751 /var/named
chmod 771 /var/named/data
chmod 744 /var/spool/cron
echo "Complete!"
echo "Registering 'zppy' client.."
ln -s /etc/zpanel/panel/bin/zppy /usr/bin/zppy
chmod +x /usr/bin/zppy
ln -s /etc/zpanel/panel/bin/setso /usr/bin/setso
chmod +x /usr/bin/setso
ln -s /etc/zpanel/panel/bin/setzadmin /usr/bin/setzadmin
chmod +x /usr/bin/setzadmin
echo "Complete!"
echo ""
echo ""
echo "The Sentora directories have now been created in /etc/zpanel and /var/zpanel"
echo ""
exit
