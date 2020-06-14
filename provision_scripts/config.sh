#!/usr/bin/env bash

# Configuración de metapaquetes a instalar
METAPAQUETE_BASE=1
METAPAQUETE_GIT=1
METAPAQUETE_LAMP=1
METAPAQUETE_PYTHON=0
METAPAQUETE_DOCKER=0
METAPAQUETE_C=0

# Cadenas de instalación de metapaquetes
CADENA_METAPAQUETE_BASE="vim git curl"
CADENA_METAPAQUETE_LAMP="apache2 mariadb-server mariadb-common php php-cli libapache2-mod-php php-mysql php-gd php-xml curl lynx php-dev libmcrypt-dev php-curl php-soap php-zip php-mbstring"
CADENA_METAPAQUETE_PYTHON="python3 python3-pip python3-dev virtualenv"
CADENA_METAPAQUETE_DOCKER=""
CADENA_METAPAQUETE_C="build-essential"
