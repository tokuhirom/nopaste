#!/usr/bin/zsh
if [ ! -f /etc/init/nopaste.64p.org.conf ]; then
    sudo ln -s `pwd`/etc/init/nopaste.64p.org.conf /etc/init/nopaste.64p.org.conf
fi

if [ ! -f /etc/nginx/sites-enabled/nopaste.64p.org.conf ]; then
    sudo ln -s `pwd`/etc/httpd/nopaste.64p.org.conf /etc/nginx/sites-enabled/nopaste.64p.org.conf
fi

sudo /etc/init.d/nginx reload
sudo initctl reload-configuration
sudo stop nopaste.64p.org
sudo start nopaste.64p.org

sudo chmod 777 db/
chown www-data:www-data db/deployment.db

echo "--------------------------"
echo "Deployment finished"
sudo tail /var/log/upstart/nopaste.64p.org.log

