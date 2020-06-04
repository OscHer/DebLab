# Deblab

Laboratorio portatil de desarrollo basado en Debian GNU/Linux.

## Objetivos
El objetivo de este proyecto es tener un laboratorio configurable para distintas tareas de desarrollo y administración de sistema controlado por Vagrant.
## Instrucciones de instalación
 
 1. Descargar el Vagrantfile al directorio de trabajo: `$ wget`https://github.com/OscHer/DebLab/blob/master/Vagrantfile
 2. Creamos el directorio donde meteremos el código fuente inicial de nuestro proyecto: `$ mkdir develop`.
 
 El nombre del directorio no es opcional a menos que cambiemos la ruta en el Vagrantfile (Ver sección de aprovisionamiento) y **NO SE SINCRONIZA** con el sistema de archivos del anfitrión.

 3. Descargamos el box y levantamos la máquina virtual
 
 ```
    $ vagrant up && vagrant ssh
 ```

## Especificaciones técnicas
### Imagen base
La imagen base para la versión v0.1 será Debian Testing (Bullseye en el momento de la creación de este proyecto) con los repositorios contrib oficiales añadidos.
<https://app.vagrantup.com/debian/boxes/contrib-testing64>
### Hipervisor
Virtualbox 6.1 o superior

* https://es.wikipedia.org/wiki/Hipervisor#Hipervisor_tipo_2
* https://es.wikipedia.org/wiki/VirtualBox
* https://www.virtualbox.org/

### Valores por defecto
Usuario: vagrant
Password: vagrant

### Aprovisionamiento
El aprovisionamiento se ejecuta mediante inline script definido en el Vagranfile.

#### Paquetes
* Contenerización
* LAMP
* Programación en Python
* Programación en C/C++


## Más Info
* <https://www.vagrantup.com/>


## TODO: 
 - Personalizar las opciones de aprovisionamiento.
 - Considerar la opción de aprovsionar el servidor mediante Ansible.
 - Añadir pre-requisitos y enlaces a instrucciones de instalación de Vagrant y Virtualbox
 - Añadir auto git pull en las variables de inicialización del laboratorio: El usuario podrá añadir su github y que durante el aprovisionamiento se descargue y sincronice su repositorio.
