sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default

sudo /etc/init.d/nginx restart

cd /home/box/web 
gunicorn3 --bind='0.0.0.0:8080' hello:app
