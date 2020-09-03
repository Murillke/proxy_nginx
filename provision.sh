echo "################################ Update apt-get ##################################"

sudo apt-get -y update
wait $!
echo "################################ Update apt-get End ##################################"

echo "################################# NGINX #################################"

sudo apt-get -y install nginx
wait $!
#to remove default configuration file.
rm -rf /etc/nginx/sites-enabled
#to copy the configuration file from the vagrant repository to nginx configuration directory.
cp -r /vagrant/sites-enabled /etc/nginx

service nginx start
wait $!
echo "################################## Test website ################################"

wget -qO- localhost

#echo "############################### Delete default site ###################################"
#sudo rm -rf /usr/share/nginx/www
#echo "################################# Creating new simbolic link to website #################################"
#to create a link for the default site routed to another directory.
#sudo ln -s /vagrant/www /usr/share/nginx/www

echo "################################# NGINX END #################################"
