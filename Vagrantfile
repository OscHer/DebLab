# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Elegimos la imagen base
  config.vm.box = "debian/contrib-buster64"
  
  config.vbguest.auto_update = false # Desactivamos temporalmente la actualización de las Guest Additions
  config.vm.hostname = "deblab"
  config.vm.provider "virtualbox"

  # Aprovisionamiento
  # Aprovisionamos con nuestro directorio de desarrollo. 
  config.vm.synced_folder "develop/", "/home/vagrant/develop" # Sincronizamos el directorio del código fuente entre anfitrión  e invitado

  # Aprovisionamiento mediante shell script
  config.vm.provision "Configurando variables de aprovisionamiento", type: "shell", path: "provision_scripts/config.sh", upload_path: "/tmp/config.sh" # Subimos fichero de variables
  config.vm.provision "Instalando metapaquetes", type: "shell", path: "provision_scripts/shell_provision.sh", upload_path: "/tmp/shell_provision.sh" # Aprovisionamos
end
