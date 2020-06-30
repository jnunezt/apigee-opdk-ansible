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

## Change Directory to the Install Folder
Change directory to the Install folder:

    cd ~/apigee-opdk-ansible/installations/multi-region/install

## (Option 1) Playbook Execution Standard Installations

This tasks assume that the user has sudo privilege with no password prompt. Please invoke `install standard` in the following way:
    
    ansible-playbook standard/install.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook standard/install.yml -K
	
## (Option 2) Playbook Execution External Node Ldap Installations (use when the ldap server is outside the management server)

This tasks assume that the user has sudo privilege with no password prompt. Please invoke `install external node ldap` in the following way:
    
    ansible-playbook external-node-ldap/install.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook external-node-ldap/install.yml -K
    

## Next Steps

Please continue with the [next steps](../README.md#quick-start-usage-overview) in the process.