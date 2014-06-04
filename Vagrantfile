VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_url = "https://vagrantcloud.com/ubuntu/trusty64/version/1/provider/virtualbox.box"
  
  config.vm.provision "shell", path: "provisioning/shell/script.sh"
  
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
end
