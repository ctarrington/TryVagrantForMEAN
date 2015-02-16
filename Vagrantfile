Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp/precise32"

  # accessing "localhost:33000" will access port 3000 on the guest machine. and so on.
  config.vm.network "forwarded_port", guest: 3000, host: 33000
  config.vm.network "forwarded_port", guest: 5858, host: 5858
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    apt-get install -y dos2unix
    dos2unix /vagrant/ProvisionScripts/*.sh
    dos2unix /vagrant/upstarts/*.conf

    /vagrant/ProvisionScripts/01_Utilities.sh
    /vagrant/ProvisionScripts/02_mongodb.sh
    /vagrant/ProvisionScripts/03_node.sh
    
    cp /vagrant/upstarts/*.conf /etc/init/
    start app
    start node_inspector
  SHELL
end
