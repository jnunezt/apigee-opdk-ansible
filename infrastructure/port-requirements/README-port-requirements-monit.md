# Usage Instructions

## Basic Usage
We have created an `ansible-galaxy` requirements file `requirements.yml` that will download and install the roles 
used by this playbook. You can use `ansible-galaxy` in the following way:

    cd ~/apigee-opdk-ansible/infrastructure/port-requirements/monit
    ansible-galaxy install -r requirements.yml -f

## Ports validation 

Please invoke `check.yml` in the following way:
    
    # Check the Ansible controller
    ansible-playbook check.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook check.yml -K
    

## Next Steps

Please continue with the [next steps](../../README.md#usage-overview) in the process.