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

## Change Directory to the Message Processor Folder
Change directory to the Message Processor folder:

    cd ~/apigee-opdk-accelerator/post-installations/message-processor/desregister

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Copy Template
Copy template to generate installer by register message-processor

    cp template.yml mp-{org}-{env}.yml
	
## Edit installer
Edit parameters in the `mp-{org}-{env}.yml` role(apigee-opdk-setup-env) for the new register message-processor

    vi mp-{org}-{env}.yml
	
	Edit tag vars:
		org
		env
		uuid
		region
		pod

## Create register message-processor 

Please invoke `register` in the following way:
    
    ansible-playbook mp-{org}-{env}.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook mp-{org}-{env}.yml -K