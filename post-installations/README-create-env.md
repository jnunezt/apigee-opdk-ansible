# Usage Instructions

## Change Directory to the infrastructure folder
Open the terminal and change directory to the infrastructure folder:

    cd ~/apigee-opdk-accelerator/post-installations/environment

## Copy Template
Copy template to generate installer by environment

    cp template.yml install-{org}-{env}.yml
	
## Edit installer
Edit parameters in the yml role for the new environment

    vi install-{org}-{env}.yml

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    # Download the required roles to infrastructure the Ansible controller
    ansible-galaxy install -r requirements.yml -f

## Create environment 

Please invoke `install.yml` in the following way:
    
    # Check the Ansible controller
    ansible-playbook install-{org}-{env}.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook install-{org}-{env}.yml -K
    

## Next Steps

Please continue with the [next steps](../../README.md#usage-overview) in the process.