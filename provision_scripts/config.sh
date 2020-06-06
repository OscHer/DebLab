#!/usr/bin/env bash

# Configuración de metapaquetes a instalar
METAPAQUETE_BASE=0
METAPAQUETE_GIT=0
METAPAQUETE_LAMP=0
METAPAQUETE_PYTHON=1
METAPAQUETE_DOCKER=0
METAPAQUETE_C=0

# Cadenas de instalación de metapaquetes
CADENA_METAPAQUETE_BASE="vim"
CADENA_METAPAQUETE_LAMP="apache2 mariadb-server mariadb-common php php-cli libapache2-mod-php php-mysql php-gd php-xml curl lynx"
CADENA_METAPAQUETE_PYTHON="python3 python3-pip python3-dev virtualenv"
CADENA_METAPAQUETE_DOCKER=""
CADENA_METAPAQUETE_C="build-essential"
