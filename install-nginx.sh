#!/bin/bash
sudo apt -y install nginx 
sudo tee /etc/nginx/sites-available/default<<EOF
server {
        listen 80 default_server;
        listen [::]:80 default_server;
        root /var/www/html;
        index index.html index.htm index.nginx-debian.html;
        server_name _;
        add_header Access-Control-Allow-Origin *;
        add_header Access-Control-Allow-Headers *;
        location / {
                try_files $uri $uri/ =404;
        }
}
EOF

sudo rm -rf /etc/nginx/nginx.conf

sudo systemctl daemon-reload
sudo systemctl start nginx.service

