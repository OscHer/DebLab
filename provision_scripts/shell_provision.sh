#!/usr/bin/env bash

CONFIG_FILE='/tmp/provision_config.sh'

# Incluimos variables de configuracion
[[ ! -f $CONFIG_FILE ]] && echo "Fichero de configuración NO encontrado. Abortando."
source $CONFIG_FILE

# Rutinas instalación
function install_lamp
{
  echo "Instalando metapaquete LAMP"
  apt-get -y install $1
}

function install_python
{
  echo "Instalando metapaquete python"
  apt-get -y install $1
}

function install_docker
{
  echo "Instalando metapaquete docker"
  #TODO
}

function install_c
{
  echo "Instalando metapaquete C"
  apt-get -y install $1
}

# Actualizar repositorios
echo "Actualizando lista de paquetes"
apt-get update

[[ METAPAQUETE_LAMP -eq 1 ]] && install_lamp $CADENA_METAPAQUETE_LAMP
[[ METAPAQUETE_PYTHON -eq 1 ]] && install_lamp $CADENA_METAPAQUETE_PYTHON
[[ METAPAQUETE_C -eq 1 ]] && install_lamp $CADENA_METAPAQUETE_C
