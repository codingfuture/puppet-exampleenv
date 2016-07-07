
Vagrant.require_version ">= 1.8.0"

Vagrant.configure(2) do |config|
    config.vm.provider "virtualbox" do |v|
        v.linked_clone = true
        v.memory = 256
        v.cpus = 1
        #v.gui = 1
    end
    
    if ENV['USE_UBUNTU'] == 'y'
        config.vm.box = "ubuntu/wily64"
    else
        config.vm.box = "debian/jessie64"
    end


    config.ssh.username = 'vagrant'
    config.ssh.private_key_path = [
        '~/.vagrant.d/insecure_private_key',
        'data/id_rsa_test'
    ]
    config.ssh.insert_key = false
    config.ssh.forward_x11 = false
    config.ssh.forward_agent = false
    config.ssh.pty = false
    
    config.vm.network(
        'public_network',
        nic_type: "virtio",
        bridge: ['wlan0', 'eth0']
    )
    

    config.vm.define 'puppet' do |node|
        node.vm.provider "virtualbox" do |v|
            v.memory = 1024
            v.cpus = 2
        end
        node.vm.hostname = 'puppet.example.com'
    end
    config.vm.define 'db1' do |node|
        node.vm.provider "virtualbox" do |v|
            v.memory = 1024
            v.cpus = 2
        end
        node.vm.hostname = 'db1.example.com'
    end
    config.vm.define 'db2' do |node|
        node.vm.hostname = 'db2.example.com'
    end
    config.vm.define 'db3' do |node|
        node.vm.hostname = 'db3.example.com'
    end
    config.vm.define 'client' do |node|
        node.vm.hostname = 'client.example.com'
    end
end
