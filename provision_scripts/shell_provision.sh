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
  # Instalamos la versión edge mediante script de docker
  curl -fsSL https://get.docker.com -o get-docker.sh
  sh get-docker.sh
  usermod -aG docker vagrant
}

function install_lamp
{
  echo "Instalando metapaquete LAMP: $1"
  apt-get -y install $1
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
[[ METAPAQUETE_PYTHON -eq 1 ]] && install_docker "$CADENA_METAPAQUETE_PYTHON"
[[ METAPAQUETE_LAMP -eq 1 ]] && install_lamp "$CADENA_METAPAQUETE_LAMP"
[[ METAPAQUETE_PYTHON -eq 1 ]] && install_python "$CADENA_METAPAQUETE_PYTHON"
