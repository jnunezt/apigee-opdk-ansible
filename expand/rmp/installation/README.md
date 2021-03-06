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

## Change Directory to the Router & Message Processor install Folder
Change directory to the Router & Message Processor install folder:

    cd ~/apigee-opdk-ansible/expand/rmp/installation/{ types install }
	
	types install:
		single-region
		multi-region

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Playbook Execution

This tasks assume that the user has sudo privilege with no password prompt. Please invoke `install rmp` in the following way:
    
    ansible-playbook preinstall.yml
	
	ansible-playbook install.yml
	

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook preinstall.yml -K
	
	ansible-playbook install.yml -K
	
## associate message processor to your organization/environment [here](../../../post-installations/message-processor/register/README.md#usage-instructions)
    

## Next Steps

Please continue with the [next steps](../../README.md#ansible-apigee-private-cloud-installations-expansion) in the process.