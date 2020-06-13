#!/usr/bin/env bash

CONFIG_FILE='/tmp/config.sh'

# Incluimos variables de configuracion
[[ ! -f $CONFIG_FILE ]] && echo "Fichero de configuración NO encontrado. Abortando."
source $CONFIG_FILE

# Rutinas instalación
function install_base
{
  echo "Instalando metapaquete base: $1"
  apt-get -y install $1
}


function install_c
{
  echo "Instalando metapaquete C: $1"
  apt-get -y install $1
}

function install_docker
{
  echo "Instalando metapaquete docker"
  # Instalamos la versión stablee mediante script de docker
  curl -fsSL https://get.docker.com -o get-docker.sh
  sh get-docker.sh
  usermod -aG docker vagrant

  # Latest stable release of docker compose
  sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
}

function install_lamp
{
  echo "Instalando metapaquete LAMP: $1"
  apt-get -y install $1

  echo "PECL additional packages:"
  pecl channel-update pecl.php.net # Subscribe to main PECL channel
  pecl install mcrypt
  echo "extension=mcrypt.so" | sudo tee /etc/php/$(php -r "echo PHP_MAJOR_VERSION.'.'.PHP_MINOR_VERSION;")/mods-available/mcrypt.ini # List mcrypt as avilable module
  [[ $(phpenmod mcrypt) -eq 0 && $(systemctl restart apache2) -eq 0 ]] && echo "mcrypt enabled" # Enable mcrypt module
}

function install_python
{
  echo "Instalando metapaquete python: $1"
  apt-get -y install $1
}


# Actualizar repositorios
echo "Actualizando lista de paquetes"
apt-get update

[[ METAPAQUETE_BASE -eq 1 ]] && install_base "$CADENA_METAPAQUETE_BASE"
[[ METAPAQUETE_C -eq 1 ]] && install_c "$CADENA_METAPAQUETE_C"
[[ METAPAQUETE_DOCKER -eq 1 ]] && install_docker "$CADENA_METAPAQUETE_PYTHON"
[[ METAPAQUETE_LAMP -eq 1 ]] && install_lamp "$CADENA_METAPAQUETE_LAMP"
[[ METAPAQUETE_PYTHON -eq 1 ]] && install_python "$CADENA_METAPAQUETE_PYTHON"
