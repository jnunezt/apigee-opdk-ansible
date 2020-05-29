# Usage Instructions

## Terminal Window
These scripts can be run from a terminal window. Please open your terminal and navigate to the folder
containing the Ansible OPDK Accelerator. This can be accomplished as follows: 

    cd ~/apigee-opdk-accelerator

## Refresh Local Repository
It may be necessary to update the local repository if it has been some time since the last update.
This can be accomplished as follows: 

    cd ~/apigee-opdk-accelerator
    git pull origin master

## Change Directory to the infrastructure folder
Open the terminal and change directory to the infrastructure folder:

    cd ~/apigee-opdk-accelerator/post-installations/organization

## Copy Template
Copy template to generate installer by organization

    cp template.yml install-{org}.yml
	
## Edit installer
Edit parameters in the yml role for the new organization

    vi install-{org}.yml

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    # Download the required roles to infrastructure the Ansible controller
    ansible-galaxy install -r requirements.yml -f

## Create Organization 

Please invoke `install.yml` in the following way:
    
    # Check the Ansible controller
    ansible-playbook install-{org}.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook install-{org}.yml -K
    

## Next Steps

Please continue with the [next steps](../../README.md#usage-overview) in the process.