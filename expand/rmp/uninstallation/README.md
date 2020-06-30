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

## Change Directory to the RMP uninstall Folder
Change directory to the RMP uninstall folder:

    cd ~/apigee-opdk-ansible/expand/rmp/uninstallation

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Playbook Execution

This tasks assume that the user has sudo privilege with no password prompt. Please invoke `uninstall rmp` in the following way:
    
	ansible-playbook remove-router.yml
	 
	ansible-playbook remove-message-processsor.yml
	
	ansible-playbook uninstall-node.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

	ansible-playbook remove-router.yml -k
	
    ansible-playbook remove-message-processsor.yml -K
	
	ansible-playbook uninstall-node.yml -K
    

## Next Steps

Please continue with the [next steps](../../README.md#ansible-apigee-private-cloud-installations-expansion) in the process.