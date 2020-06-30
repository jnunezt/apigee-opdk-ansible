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

## Change Directory to the Environment Folder
Change directory to the Environment folder:

    cd ~/apigee-opdk-accelerator/post-installations/environment

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Copy Template
Copy template to generate installer by environment

    cp template.yml install-{org}-{env}.yml
	
## Edit installer
Edit parameters in the `install-{org}-{env}.yml` role(apigee-opdk-setup-env) for the new environment

    vi install-{org}-{env}.yml

## Create environment 

Please invoke `install` in the following way:
    
    ansible-playbook install-{org}-{env}.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook install-{org}-{env}.yml -K
    

## Next Steps Single Region

Please continue with the [next steps](../../installations/single-region/README.md#quick-start-usage-overview) in the process.

## Next Steps Multi Region

Please continue with the [next steps](../../installations/multi-region/README.md#quick-start-usage-overview) in the process.