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

## Change Directory to the Keystore Folder
Change directory to the Keystore folder:

    cd ~/apigee-opdk-ansible/post-installations/keystore

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Copy Template
Copy template to generate create by keystore

    cp template.yml keystore-{org}-{env}.yml
	
## Edit installer
Edit vars in the `keystore-{org}-{env}.yml` for the new keystore

    vi keystore-{org}-{env}.yml
	
	edit tag vars:
		org
		env
		keystore_name
		keystore_alias
		reference_name
		file_key
		file_crt

## Create keystore 

Please invoke `keystore` in the following way:
    
    ansible-playbook keystore-{org}-{env}.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook keystore-{org}-{env}.yml -K