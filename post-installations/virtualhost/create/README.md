# Usage Instructions

## Terminal Window
These scripts can be run from a terminal window. Please open your terminal and navigate to the folder
containing the Ansible OPDK Playbooks. This can be accomplished as follows: 

    cd ~/apigee-opdk-ansible

## Refresh Local Repository
It may be necessary to update the local repository if it has been some time since the last update.
This can be accomplished as follows: 

    cd ~/apigee-opdk-ansible
    git pull origin master

## Change Directory to the VirtualHost Folder
Change directory to the VirtualHost folder:

    cd ~/apigee-opdk-accelerator/post-installations/virtualhost/create/{types vhost}
	
	types vhost:
		http
		https

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Copy Template
Copy template to generate create virtualhost by organization/environment

	mkdir vhost-{org}-{env}
	
	cp template/* vhost-{org}-{env}
	
	cd vhost-{org}-{env}
	
### (Option HTTP) Create VirtualHost
Edit vars & json for the new virtualhost

    vi create.yml
	
		edit vars:
			org: opdk
			env: test
			
	vi vhost.json
	
### (Option HTTPS) Create VirtualHost, assuming I already run the keystore [here](../../keystore/README.md#usage-instructions)
Edit vars & json for the new virtualhost

    vi create.yml
	
		edit vars:
			org: opdk
			env: test
			
	vi vhost.json

## Create VirtualHost 

Please invoke `create` in the following way:
    
    ansible-playbook create.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook create.yml -K
    

## Next Steps Single Region

Please continue with the [next steps](../../../installations/single-region/README.md#quick-start-usage-overview) in the process.

## Next Steps Multi Region

Please continue with the [next steps](../../../installations/multi-region/README.md#quick-start-usage-overview) in the process.