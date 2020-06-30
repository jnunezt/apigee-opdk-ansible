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

## Change Directory to the Pre-Install Folder
Change directory to the Pre-Install folder:

    cd ~/apigee-opdk-ansible/installations/multi-region/pre-install/segmented

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Playbook Execution

This tasks assume that the user has sudo privilege with no password prompt. Please invoke `preinstall` in the following way:
    
    ansible-playbook dc1/prerequirements.yml
	
	ansible-playbook dc2/prerequirements.yml
	
	ansible-playbook configfile.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook dc1/prerequirements.yml -K
	
	ansible-playbook dc2/prerequirements.yml -K
	
	ansible-playbook configfile.yml -K
    

## Next Steps

Please continue with the [next steps](../../README.md#quick-start-usage-overview) in the process.