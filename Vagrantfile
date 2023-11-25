# ####################################################################
# ################### CONFIGURATION VARIABLES ########################
# ####################################################################
IMAGE_NAME = "bento/ubuntu-18.04"   # Image to use
MEM = 1024                          # Amount of RAM
CPU = 1                             # Number of processors
NETWORK_ADAPTER="eth0"            # Bridge network adapter

Vagrant.configure("2") do |config|
    config.vm.synced_folder '.', '/vagrant', disabled: true
    # RAM and CPU config
    config.vm.provider "virtualbox" do |v|
        v.memory = MEM
        v.cpus = CPU
    end

    # Web node config
    config.ssh.insert_key = false
    config.vm.define "web" do |web|
            # OS and Hostname
            web.vm.box = IMAGE_NAME
            web.vm.hostname = "web01"
            web.vm.network "public_network", ip:"192.168.1.30"
            web.vm.provision "shell", path: "host-setup.sh"
    end

    # db node config
    config.vm.define "db" do |db|
        # OS and Hostname
        db.vm.box = IMAGE_NAME
        db.vm.hostname = "db01"
        db.vm.network "public_network", ip:"192.168.1.31"
        db.vm.provision "shell", path: "host-setup.sh"
    end
end
