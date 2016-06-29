Vagrant.configure(2) do |config|
	# Every Vagrant development environment requires a box. You can search for
	config.vm.box = "precise32"
	config.vm.box_url = "http://files.vagrantup.com/precise32.box"

    	# Create a private network, which allows host-only access to the machine
  	# using a specific IP.
	config.vm.network "private_network", ip:"192.168.33.10"

	config.vm.provision "shell", :inline => "sudo apt-get update -y"
	config.vm.provision "shell", :inline => "sudo apt-get install curl -y"
	config.vm.provision "shell", :inline => "sudo apt-get install -y tomcat7"
	config.vm.provision "shell", :inline => "sudo apt-get install tomcat7-examples"

      	config.omnibus.chef_version = "12.10.24"

 	config.vm.provision :chef_solo do |chef|

		chef.cookbooks_path = ["cookbooks", "site-cookbooks"]

		chef.add_recipe "apache2"
		chef.add_recipe "java"
		chef.add_recipe "mysql::server"

		chef.json = {
			"java" => {
                		"install_flavor" => "oracle",
				"jdk_version" => "7",
               			"oracle" => {
                   			 "accept_oracle_download_terms" => true
                		}
        		}, :mysql=> {
		        	:client => { :version => "5.5.28" },
		        	:server_root_password => "root",
		        	:server_repl_password => "no_replication",
		       		:server_debian_password => "root"
	       		}
		}
	end

  	config.vm.provision "shell", path: "script.sh"
end
