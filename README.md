# Deblab

Laboratorio portatil de desarrollo basado en Debian GNU/Linux.

## Objetivos
El objetivo de este proyecto es tener un laboratorio configurable para distintas tareas de desarrollo y administración de sistema controlado por Vagrant.

## Especificaciones técnicas
### Imagen base
La imagen base para la versión v0.1 será Debian Testing (Bullseye en el momento de la creación de este proyecto) con los repositorios contrib oficiales añadidos.
<https://app.vagrantup.com/debian/boxes/contrib-testing64>
### Hipervisor
Virtualbox 6.1

* https://es.wikipedia.org/wiki/Hipervisor#Hipervisor_tipo_2
* https://es.wikipedia.org/wiki/VirtualBox
* https://www.virtualbox.org/

### Valores por defecto
Usuario: vagrant
Password: vagrant

### Aprovisionamiento
El aprovisionamiento se ejecuta mediante inline script definido en el Vagranfile.


# Instrucciones de instalación
 
 1. Descargar el Vagrantfile al directorio de trabajo: `$ wget`
 2. Creamos el directorio donde meteremos el código fuente inicial de nuestro proyecto: `$ mkdir develop`.
 
 El nombre del directorio no es opcional a menos que cambiemos la ruta en el Vagrantfile (Ver sección de aprovisionamiento) y **NO SE SINCRONIZA** con el sistema de archivos del anfitrión.

 3. Descargamos el box y levantamos la máquina virtual
 
 ```
    $ vagrant up && vagrant ssh
 ```

## TODO: 
 - Personalizar las opciones de aprovisionamiento.
 - Considerar la opción de aprovsionar el servidor mediante Ansible.


