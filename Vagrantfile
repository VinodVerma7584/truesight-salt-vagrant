#This Vagrant file provision Ubuntu-14.04 and then install saltmaster on same.

Vagrant.configure("2") do |config|
  config.vm.define :Ubuntu12 do |master_config|
    master_config.vm.box = "hashicorp/precise64"
    master_config.vm.host_name = 'Ubuntu-12.04.local'
    master_config.vm.network "private_network", ip: "192.168.50.50"
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"
      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = false
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
   end
  end
  config.vm.define :Ubuntu14 do |master_config|
    master_config.vm.box = "ubuntu/trusty64"
    master_config.vm.host_name = 'Ubuntu-14.04.local'
    master_config.vm.network "private_network", ip: "192.168.50.50"
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"
      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = false
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
   end
  end
  config.vm.define :Centos6 do |master_config|
    #master_config.vm.box = "puphpet/centos65-x64"
    master_config.vm.box = "puppetlabs/centos-6.6-64-puppet"
    master_config.vm.host_name = 'Centos6.local'
    master_config.vm.network "private_network", ip: "192.168.50.50"
    config.vm.synced_folder '.', '/home/vagrant/sync', disabled: true
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"
      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = false
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
   end
  end
  config.vm.define :Centos7 do |master_config|
    #master_config.vm.box = "centos/7"
    master_config.vm.box = "puppetlabs/centos-7.0-64-puppet"
    master_config.vm.host_name = 'Centos7.local'
    master_config.vm.network "private_network", ip: "192.168.50.50"
    config.vm.synced_folder '.', '/home/vagrant/sync', disabled: true
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"
      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = false
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
   end
  end
  config.vm.define :Debian7 do |master_config|
    master_config.vm.box = "debian/wheezy64"
    master_config.vm.host_name = 'Debian7.local'
    master_config.vm.network "private_network", ip: "192.168.50.50"
    #config.vm.synced_folder '.', '/home/vagrant/sync', disabled: true
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"
      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = false
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
   end
  end

  config.vm.define :Debian8 do |master_config|
    master_config.vm.box = "debian/jessie64"
    master_config.vm.host_name = 'Debian8.local'
    master_config.vm.network "private_network", ip: "192.168.50.50"
    config.vm.synced_folder '.', '/home/vagrant/sync', disabled: true
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"
      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = false
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
   end
  end

  config.vm.define :Redhat6 do |master_config|
    master_config.vm.box = "filescan/RHEL6.5"
    master_config.vm.host_name = 'Redhat6.local'
    master_config.vm.network "private_network", ip: "192.168.50.50"
    config.vm.synced_folder '.', '/home/vagrant/sync', disabled: true
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"
      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = false
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
   end
  end

  config.vm.define :Redhat7 do |master_config|
    master_config.vm.box = "mrlesmithjr/rhel-7"
    master_config.vm.host_name = 'Redhat7.local'
    master_config.vm.network "private_network", ip: "192.168.50.50"
    config.vm.synced_folder '.', '/home/vagrant/sync', disabled: true
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"
      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = false
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
   end
  end

  config.vm.define :Fedora23 do |master_config|
    master_config.vm.box = "bento/fedora-23"
    master_config.vm.host_name = 'Fedora23.local'
    master_config.vm.network "private_network", ip: "192.168.50.50"
    config.vm.synced_folder '.', '/home/vagrant/sync', disabled: true
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"
      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = false
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
   end
  end

end
