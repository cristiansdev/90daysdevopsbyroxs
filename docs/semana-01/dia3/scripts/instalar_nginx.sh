#!/bin/bash
apt update
apt install -y nginx

# Limpiar contenido anterior
rm -rf /var/www/html/*

# Copiar la plantilla desde la carpeta compartida (proyecto → VM)
cp -r /vagrant/site/* /var/www/html/

# Ajusta permisos por si acaso
chmod 644 /var/www/html/index.html