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

## Change Directory to the Setup Folder
Change directory to the setup folder:

    cd ~/apigee-opdk-ansible/setup

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Setup an Ansible Control Server on Localhost

`setup.yml` will configure the localhost as an Ansible control server. This tasks assume that the user has sudo privilege 
 with no password prompt. Please invoke `setup.yml` in the following way:
    
    ansible-playbook setup.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook setup.yml -K
    

## Next Steps

Please continue with the [next steps](../README.md#quick-start-usage-overview) in the process.