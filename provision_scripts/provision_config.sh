#!/usr/bin/env bash

# Configuración de metapaquetes a instalar
METAPAQUETE_GIT=1
METAPAQUETE_LAMP=1
METAPAQUETE_PYTHON=0
METAPAQUETE_DOCKER=0
METAPAQUETE_C=0

# Cadenas de instalación de metapaquetes
CADENA_METAPAQUETE_LAMP="apache2 mariadb-server mariadb-common php php-cli libapache2-mod-php php-mysql php-gd php-xml curl lynx"
CADENA_METAPAQUETE_PYTHON="python3-pip python-dev"
CADENA_METAPAQUETE_DOCKER=""
CADENA_METAPAQUETE_C="build-essential"