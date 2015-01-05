# -*- mode: ruby -*-
# vi: set ft=ruby :

# Fix rsync problems with vagrant and cygwin - https://github.com/mitchellh/vagrant/issues/3230#issuecomment-62588180
ENV["VAGRANT_DETECTED_OS"] = ENV["VAGRANT_DETECTED_OS"].to_s + " cygwin"

Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "../", "/src"
  #config.vm.synced_folder "../", "/src-samba", type: "smb",
  #  smb_username: "Craig",
  #  smb_password: "jer1CHO3",
  #  :owner => "craig",
  #  :group => "craig",
  #  :mount_options => ["dir_mode=0777", "file_mode=0666"]
  #config.vm.synced_folder "../", "/src-rsync", type: "rsync",
  #  rsync__exclude: [".git/", ".tox/", ".*/", "__pycache__",
  #  "C:/dev/banana/rest_framework"], owner: "craig",
  #   group: "craig"
  #config.sshfs.paths = { "/src-sshfs" => "../" }
  #config.sshfs.paths = { "../" => "/src-sshfs1/" }
  #config.sshfs.mount_on_guest = true
  #config.sshfs.host_addr = '192.168.56.1'

  # Reduce acceptable boot timeout, so that errors appear faster
  config.vm.boot_timeout=30

  config.vm.provider "virtualbox" do |v|
      # Choose the machine to run
      v.name = "dev_default_1419347975812_25079"
      # Enable symlinks, as long as vagrant is started in an Adminstrator
      # shell in windows
      v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
      v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/src", "1"]
      # v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/src-samba", "1"]
      # Set the RAM
      v.memory = 1024
      # Enable multiple CPUs
      v.customize ["modifyvm", :id, "--ioapic", "on"]
      v.cpus = 2
  end
end
