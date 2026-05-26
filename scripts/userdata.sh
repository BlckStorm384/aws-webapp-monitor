#!/bin/bash
# User Data Script — runs on EC2 first boot
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>WebApp Monitor Project is Live!</h1>" > /var/www/html/index.html