# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Elegimos la imagen base
  config.vm.box = "debian/contrib-buster64"

  # Aprovisionamiento
  # Aprovisionamos con nuestro directorio de desarrollo. 
  config.vm.provision "Aprovisionando directorio de desarrollo", type: "file", source: "./develop", destination: "develop"  
end
