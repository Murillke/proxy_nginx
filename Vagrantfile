Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.hostname = "proxy-wireshark-dev"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.synced_folder ".", "/vagrant", type: "rsync"

  config.vm.synced_folder "./", "/vagrant", disabled: false
  config.vm.synced_folder "scripts", "/vagrant/scripts", type: "rsync"
  config.vm.synced_folder "sites-enabled", "/vagrant/sites-enabled", type: "rsync"

  config.vm.network "forwarded_port", guest: 80, host: 8081, id: "Proxy-Ngnix", auto_correct: true
end
