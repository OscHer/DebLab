# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Elegimos la imagen base
  config.vm.box = "debian/contrib-buster64"
  
  config.vm.hostname = "deblab"
  config.vm.define "deblab"
  config.vm.provider "virtualbox"

  # Aprovisionamiento
  # Aprovisionamos con nuestro directorio de desarrollo. 
  config.vm.provision "Aprovisionando directorio de desarrollo", type: "file", source: "./develop", destination: "develop"  

  # Aprovisionamiento mediante shell script
  config.vm.provision "Instalando metapaquetes", type: "shell", path: "provision_scripts/shell_provision.sh"
end
