# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # ベースのイメージを指定
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "isucon-dev"
  config.vm.define "isucon-dev"
  config.vm.provider :virtualbox do |vb|
    vb.name = "isucon-dev"
  end
  
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # プロビジョニングシェル
  config.vm.provision "shell", inline: <<-SHELL
    apt update
    debconf-set-selections <<< 'mysql-server mysql-server/root_password password pass'
    debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password pass'
    apt install -y git mysql-server nginx
    useradd -m isucon
    gpasswd -a isucon sudo
    echo "isucon:password" | chpasswd
    echo "isucon ALL=NOPASSWD: ALL" | EDITOR='tee -a' visudo >/dev/null
    su - isucon
    sh /vagrant/script/install-go.sh
    sh /vagrant/script/install-profiler.sh
    sh /vagrant/script/create_dbuser.sh
    sh /vagrant/script/create_my_cnf.sh
    echo "export PATH=$HOME/local/go/bin:$HOME/go/bin:$PATH" > ~/.bash_profile
  SHELL
end